package platinum.common.util;

import java.io.File;


public final class PathUtil
{
	public static String combineURLPath(String...paths)
	{
		String path = "";
		for (int i = 0; i < paths.length; i++)
		{
			if (paths[i] != null)
			{
				if (path.endsWith("/") && paths[i].startsWith("/"))
				{
					path += paths[i].substring(1);
				}
				else if (!path.endsWith("/") && !paths[i].startsWith("/"))
				{
					path += "/" + paths[i];
				}
				else
				{
					path += paths[i];
				}
			}
		}
		return path;
	}
	
    public static String combineFilePath(String... paths)
    {
        String path = null;
        StringBuilder builder = new StringBuilder();
        String result = null;
        boolean isDir = false;

        for (int i = 0; i < paths.length; i++)
        {
            if (StringUtil.isNullOrEmpty(paths[i]))
            {
                continue;
            }

            path = paths[i].trim().replace("\\", File.separator);

            if (path.endsWith(File.separator))
            {
                isDir = true;
            }
            else
            {
                isDir = false;
            }

            while (path.startsWith(File.separator))
            {
                path = path.substring(1);
            }

            while (path.endsWith(File.separator))
            {
                path = path.substring(0, path.length() - 1);
            }

            if (i == 0)
            {
                path = File.separator + path;
            }

            if (!path.equals(""))
            {
                builder.append(path);

                if (!path.endsWith(File.separator) && !isDir)
                {
                    builder.append(File.separator);
                }
            }
        }

        result = builder.toString();

        if (result.endsWith(File.separator) && !isDir)
        {
            return result.substring(0, result.length() - 1);
        }
        return result;
    }
}