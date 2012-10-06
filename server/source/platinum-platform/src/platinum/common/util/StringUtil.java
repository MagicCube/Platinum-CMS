package platinum.common.util;

public final class StringUtil
{
	public static boolean isNullOrEmpty(String p_string)
	{
		return p_string == null || p_string.trim() == "";
	}
	
	public static boolean notNullOrEmpty(String p_string)
	{
		return !isNullOrEmpty(p_string);
	}
}
