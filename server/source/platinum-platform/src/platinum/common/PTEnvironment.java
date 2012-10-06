package platinum.common;

import java.io.File;

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
		_rootPhysicalPath = p_path;
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
	
	
	
	public static String getPhysicalPath(String p_path)
	{
		return PathUtil.combineFilePath(PTEnvironment.getRootPhysicalPath(), p_path);
	}
	
	public static File getPhysicalFile(String p_path)
	{
		return new File(getPhysicalPath(p_path));
	}
}
