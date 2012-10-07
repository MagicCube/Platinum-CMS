package platinum.framework.dao;

import java.io.File;
import java.io.FileFilter;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import platinum.common.PTEnvironment;

public class GlobalSessionFactory
{
	private static SessionFactory _instance = null;
	public static SessionFactory getInstance()
	{
		if (_instance == null)
		{
			init();
		}
		return _instance;
	}
	
	public static void init()
	{
		Configuration _hibernateConfig = new Configuration();
		File daoDirectory = PTEnvironment.getPhysicalFile("pt/dao");
		File[] files = daoDirectory.listFiles(new FileFilter()
		{
			@Override
			public boolean accept(File p_pathname)
			{
				if (p_pathname.getName().endsWith(".xml"))
				{
					return true;
				}
				else
				{
					return false;
				}
			}
		});
		
		for (File file : files)
		{
			_hibernateConfig.configure(file);
		}
		
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(_hibernateConfig.getProperties()).buildServiceRegistry();
		_instance = _hibernateConfig.buildSessionFactory(serviceRegistry);
	}
}
