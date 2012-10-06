package platinum.common.conf;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

import platinum.common.util.StringUtil;




public class ConfigurationSettings
{
	private Properties _properties = null;
	
	public ConfigurationSettings(Properties p_properties)
	{
		_properties = p_properties;
	}
	
	public String getString(String key)
	{
		return _properties.getProperty(key);
	}
	public String getString(String key, String defaultValue)
	{
		return _properties.getProperty(key, defaultValue);
	}

	
	
	public int getInt(String key,int defaultValue)
	{
		String value = _properties.getProperty(key);
		return StringUtil.notNullOrEmpty(value) ? Integer.parseInt(value) : defaultValue;
	}
	public int getInt(String key)
	{
		return getInt(key, 0);
	}
	
	
	
	public boolean getBoolean(String key,boolean defaultValue)
	{
		String value = _properties.getProperty(key);
		return StringUtil.notNullOrEmpty(value) ? value.equalsIgnoreCase("true") : defaultValue;
	}
	public boolean getBoolean(String key)
	{
		return getBoolean(key, false);
	}
	
	
	
	
	public String[] searchKeys(String prefix, String postfix)
	{
		List<String> keyList = new ArrayList<String>();
		Enumeration<Object> allKeys = _properties.keys();
		while (allKeys.hasMoreElements())
		{
			String key = allKeys.nextElement().toString();
			if (StringUtil.notNullOrEmpty(prefix))
			{
				if (!key.startsWith(prefix))
				{
					continue;
				}
			}
			if (StringUtil.notNullOrEmpty(postfix))
			{
				if (!key.endsWith(postfix))
				{
					continue;
				}
			}
			keyList.add(key);
		}
		
		String[] keys = new String[keyList.size()];
		keyList.toArray(keys);
		return keys;
	}
	
	public String[] searchKeys(String prefix)
	{
		return searchKeys(prefix, null);
	}
}
