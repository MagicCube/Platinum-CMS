package platinum.common.io;

import java.io.File;
import java.io.IOException;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class FileReader
{
	public static String readText(File p_file) throws IOException
	{
		TextStreamReader reader = new TextStreamReader(p_file);
		String result = reader.readText();
		reader.close();
		return result;
	}
	
	public static String[] readLines(File p_file) throws IOException
	{
		TextStreamReader reader = new TextStreamReader(p_file);
		String[] result = reader.readLines();
		reader.close();
		return result;
	}


	public static JSONObject readJSONObject(File p_file) throws IOException, JSONException
	{
		String jsonString = readText(p_file);
		return new JSONObject(jsonString);
	}
	
	public static JSONArray readJSONArray(File p_file) throws IOException, JSONException
	{
		String jsonString = readText(p_file);
		return new JSONArray(jsonString);
	}
}
