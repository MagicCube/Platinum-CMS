package platinum.cms.common.util;

import platinum.common.PTEnvironment;
import platinum.common.util.PathUtil;

public class URLResolver
{
	public static String getPostlink(String p_id, String p_categoryId)
	{
		return PathUtil.combineURLPath(PTEnvironment.getWebContextPath(), p_categoryId, p_id + ".html");
	}
}
