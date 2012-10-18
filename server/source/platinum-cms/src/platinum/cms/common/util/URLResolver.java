package platinum.cms.common.util;

import platinum.common.PTEnvironment;
import platinum.common.util.PathUtil;

public class URLResolver
{
	public static String getPostlink(String p_id, String p_categoryId)
	{
		return PathUtil.combineURLPath(PTEnvironment.getWebContextPath(), p_categoryId, p_id + ".html");
	}
	
	public static String getAbsolutePostlink(String p_id, String p_categoryId)
	{
		return "http://www.zbxy.edu.cn/" + getPostlink(p_id, p_categoryId);
	}
}
