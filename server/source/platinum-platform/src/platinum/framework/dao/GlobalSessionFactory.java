package platinum.framework.dao;

import java.io.File;

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
		File configFile = PTEnvironment.getPhysicalFile("conf/hibernate.xml");
		Configuration _hibernateConfig = new Configuration().configure(configFile);
		
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(_hibernateConfig.getProperties()).buildServiceRegistry();
		_instance = _hibernateConfig.buildSessionFactory(serviceRegistry);
	}
}
