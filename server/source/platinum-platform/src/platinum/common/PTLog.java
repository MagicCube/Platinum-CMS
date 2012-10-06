package platinum.common;

import org.apache.log4j.Logger;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;


public class PTLog
{
	private static final Logger _logger = Logger.getLogger(PTLog.class);
	
	public static void info(String p_message)
	{
		_logger.info(p_message);
	}
	
	public static void debug(String p_message)
	{
		_logger.debug(p_message);
	}
	
	
	
	
	public static void trace(String p_message)
	{
		_logger.debug(p_message);
	}
	
	public static void trace(JSONObject p_json)
	{
		try
		{
			trace(p_json.toString(4));
		}
		catch (JSONException e)
		{
			
		}
	}
	
	public static void trace(PTObject p_ptobject)
	{
		trace(p_ptobject.toString(true));
	}
	
	
	
	
	public static void warn(String p_message)
	{
		_logger.warn(p_message);
	}
	
	public static void error(String p_message)
	{
		_logger.error(p_message);
	}
	
	public static void error(Exception p_exception)
	{
		error(p_exception.toString());
	}
}
