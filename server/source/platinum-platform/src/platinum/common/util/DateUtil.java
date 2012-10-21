package platinum.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class DateUtil
{
	public static String DEFAULT_DATE_FORMAT_STRING = null;
	public static SimpleDateFormat DEFAULT_DATE_FORMAT = null;
	private static SimpleDateFormat GMT_DATE_FORMAT = null;
	
	static
	{
		DEFAULT_DATE_FORMAT_STRING = "yyyy-MM-dd HH:mm:ss";
		DEFAULT_DATE_FORMAT = new SimpleDateFormat(DEFAULT_DATE_FORMAT_STRING);
		GMT_DATE_FORMAT = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", new Locale("en_US"));
		GMT_DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("GMT"));
	}
	
	public static Date parseFromString(String p_string, String p_formatString) throws ParseException
	{
		SimpleDateFormat format = _getDateFormat(p_formatString);
		return format.parse(p_formatString);
	}
	
	public static Date parseFromString(String p_string) throws ParseException
	{
		return parseFromString(p_string, DEFAULT_DATE_FORMAT_STRING);
	}
	
	public static Date parseFromGMTString(String p_string) throws ParseException
	{
		return GMT_DATE_FORMAT.parse(p_string);
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
	
	public static String formatGMTDate(Date p_date)
	{
		return GMT_DATE_FORMAT.format(p_date);
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