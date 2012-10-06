package platinum.common.util;

import java.io.File;


public final class FileSystemUtil
{
	public static boolean hasFile(String path)
	{
		File file = new File(path);
		return file.exists() && file.isFile();
	}
	
	public static boolean hasDirectory(String path)
	{
		File file = new File(path);
		return file.exists() && file.isDirectory();
	}
	
	
	
	public static void delete(String path)
    {
        if (StringUtil.notNullOrEmpty(path))
        {
            delete(new File(path));
        }
    }

    
    public static void delete(File file)
    {
        if (file != null && file.exists())
        {
            if (file.isFile())
            {
                file.delete();
            }
            else if (file.isDirectory())
            {
                final File[] files = file.listFiles();
                for (File f : files)
                {
                    delete(f);
                }

                file.delete();
            }

        }
    }
}
