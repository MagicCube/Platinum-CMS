package platinum.common;

import java.util.ArrayList;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;

public class PTList<T extends PTObject> extends ArrayList<T>
{
	private static final long serialVersionUID = 8771843479944403953L;

	public PTList()
	{
		
	}
	
	public PTList(int p_capacity)
	{
		super(p_capacity);
	}
	
	public JSONArray toJSONArray() throws JSONException
	{
		JSONArray array = new JSONArray();
		
		for (T t : this)
		{
			array.put(t.toJSONObject());
		}
		
		return array;
	}
}
