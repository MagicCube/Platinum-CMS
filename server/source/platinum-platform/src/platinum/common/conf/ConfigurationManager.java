package platinum.common.conf;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

import platinum.common.PTRuntimeException;


public class ConfigurationManager
{
	private ConfigurationManager()
	{
		
	}
	
	private static ConfigurationSettings _settings = null;
	public static ConfigurationSettings getSettings()
	{
		return _settings;
	}

	
	public static void loadFromProperties(File p_file)
	{
		Properties properties = new Properties();
		try
		{
			FileInputStream stream = null;
			stream = new FileInputStream(p_file);
			InputStreamReader reader = new InputStreamReader(stream);
			properties.load(reader);
			_settings = new ConfigurationSettings(properties);
			reader.close();
			stream.close();
		}
		catch (IOException e)
		{
			throw new PTRuntimeException(e);
		}
	}
}
