package platinum.common;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import platinum.common.serialization.IJSONObjectSerializable;


public class PTObject implements Serializable, IJSONObjectSerializable
{
	private static final long serialVersionUID = 5058524592661318100L;
	public static final String META_TYPE = "TYObject";

	private Map<String, Object> _map = null;

	public PTObject(Map<String, Object> p_source)
	{
		_map = p_source;
	}
	
	public PTObject(JSONObject p_json) throws JSONException
	{
		this(false);
		
		Iterator<?> keyIterator = p_json.keys();
		Object key = null;
		while ((key = keyIterator.next()) != null)
		{
			_map.put(key.toString(), p_json.get(key.toString()));
		}
	}

	public PTObject(PTObject p_source)
	{
		this(p_source._map);
	}

	public PTObject(boolean p_concurrent)
	{
		if (p_concurrent)
		{
			_map = new ConcurrentHashMap<String, Object>();
		}
		else
		{
			_map = new HashMap<String, Object>();
		}
	}

	public PTObject()
	{
		this(false);
	}

	public String getMetaType()
	{
		return META_TYPE;
	}
	
	public boolean containsKey(String p_key)
	{
		return _map.containsKey(p_key);
	}

	public Object get(String p_key)
	{
		return _map.get(p_key);
	}

	public String getString(String p_key)
	{
		Object value = get(p_key);
		return value != null ? value.toString() : null;
	}

	public boolean getBoolean(String p_key, boolean p_defaultValue)
	{
		Object value = get(p_key);
		return value != null ? (Boolean) value : p_defaultValue;
	}

	public boolean getBoolean(String p_key)
	{
		return getBoolean(p_key, false);
	}

	public short getShort(String p_key)
	{
		Object value = get(p_key);
		return value != null ? (Short) value : 0;
	}

	public int getInt(String p_key)
	{
		Object value = get(p_key);
		return value != null ? (Integer) value : 0;
	}
	
	public long getLong(String p_key)
	{
		Object value = get(p_key);
		return value != null ? (Long) value : 0;
	}

	public double getDouble(String p_key)
	{
		Object value = get(p_key);
		return value != null ? (Double) value : 0;
	}

	public Date getDate(String p_key)
	{
		Object value = get(p_key);
		return value != null ? (Date) value : null;
	}

	public PTObject getTYObject(String p_key)
	{
		Object value = get(p_key);
		return value != null ? (PTObject) value : null;
	}

	public void set(String p_key, Object p_value)
	{
		_map.put(p_key, p_value);
	}

	@Override
	public JSONObject toJSONObject() throws JSONException
	{
		JSONObject json = new JSONObject();
		Set<String> keys = _map.keySet();
		for (String key : keys)
		{
			Object value = get(key);
			if (value instanceof List<?>)
			{
				JSONArray jsonArray = new JSONArray();
				List<?> list = (List<?>) value;
				for (Object listItem : list)
				{
					if (listItem instanceof PTObject)
					{
						jsonArray.put(((PTObject) listItem).toJSONObject());
					}
					else
					{
						jsonArray.put(listItem);
					}
				}
				json.put(key, jsonArray);
			}
			else
			{
				if (value instanceof Date)
				{
					Date date = (Date)value;
					json.put(key, date.getTime());
				}
				else
				{
					json.put(key, value);
				}
			}
		}
		return json;
	}

	public String toString(boolean p_prettyPrint)
	{
		try
		{
			return toJSONObject().toString(p_prettyPrint ? 4 : 0);
		}
		catch (Exception e)
		{
			return "";
		}
	}

	@Override
	public String toString()
	{
		return toString(true);
	}
}