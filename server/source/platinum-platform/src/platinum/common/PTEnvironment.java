package platinum.common;

import java.io.File;

import platinum.common.util.FileSystemUtil;
import platinum.common.util.PathUtil;

public class PTEnvironment
{
	private static String _rootPhysicalPath = null;
	public static String getRootPhysicalPath()
	{
		return _rootPhysicalPath;
	}
	public static void setRootPhysicalPath(String p_path)
	{
		if (FileSystemUtil.hasDirectory(p_path))
		{
			_rootPhysicalPath = p_path;
		}
		else
		{
			throw new PTRuntimeException("平台根路径“" + p_path + "”目录不存在。");
		}
	}
	
	private static String _webContextPath = null;
	public static String getWebContextPath()
	{
		return _webContextPath;
	}
	public static void setWebContextPath(String p_path)
	{
		_webContextPath = p_path;
	}
	
	
	
	public static String getPhysicalPath(String p_relativePath)
	{
		return PathUtil.combineFilePath(PTEnvironment.getRootPhysicalPath(), p_relativePath);
	}
	
	public static File getPhysicalFile(String p_relativePath)
	{
		return new File(getPhysicalPath(p_relativePath));
	}
	

	private static String _sharedPath = null;
	public static String getSharedPath()
	{
		if (_sharedPath == null)
		{
			_sharedPath = System.getenv("PT_SHARED");
			if (_sharedPath == null)
			{
				throw new PTRuntimeException("管理员必须在操作系统中设定环境变量“PT_SHARED”，并指向平台共享目录。");
			}
			if (!FileSystemUtil.hasDirectory(_sharedPath))
			{
				throw new PTRuntimeException("当前环境变量“PT_SHARED”所指向的“" + _sharedPath +"”目录不存在。");
			}
		}
		
		return _sharedPath;
	}
	
	public static String getSharedPath(String p_relativePath)
	{
		String path = PathUtil.combineFilePath(_sharedPath, p_relativePath);
		return path;
	}
	
	public static File getSharedFile(String p_relativePath)
	{
		String path = getSharedPath(p_relativePath);
		return new File(path);
	}
}
