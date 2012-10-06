package platinum.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class DateUtil
{
	public final static String DEFAULT_DATE_FORMAT_STRING = "yyyy-MM-dd HH:mm:ss";
	public final static SimpleDateFormat DEFAULT_DATE_FORMAT = new SimpleDateFormat(DEFAULT_DATE_FORMAT_STRING);
	
	public static Date parseFromString(String p_string, String p_formatString) throws ParseException
	{
		SimpleDateFormat format = _getDateFormat(p_formatString);
		return format.parse(p_formatString);
	}
	
	public static Date parseFromString(String p_string) throws ParseException
	{
		return parseFromString(p_string, DEFAULT_DATE_FORMAT_STRING);
	}
	
	
	public static String formatDate(Date p_date, String p_formatString)
	{
		SimpleDateFormat format = _getDateFormat(p_formatString);
		return format.format(p_date);
	}
	
	public static String formatDate(Date p_date)
	{
		return formatDate(p_date, DEFAULT_DATE_FORMAT_STRING);
	}
	
	
	
	
	
	private static SimpleDateFormat _getDateFormat(String p_formatString)
	{
		SimpleDateFormat format = null;
		if (DEFAULT_DATE_FORMAT_STRING.equals(p_formatString))
		{
			format = DEFAULT_DATE_FORMAT;
		}
		else
		{
			format = new SimpleDateFormat(p_formatString);
		}
		return format;
	}
}