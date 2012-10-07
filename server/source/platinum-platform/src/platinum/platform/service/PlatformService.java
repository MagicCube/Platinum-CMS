package platinum.platform.service;


import java.io.File;

import platinum.common.PTEnvironment;
import platinum.common.PTLog;
import platinum.common.PTRuntimeException;
import platinum.common.conf.ConfigurationManager;
import platinum.framework.dao.GlobalSessionFactory;



public class PlatformService
{
	private PlatformService()
	{
		System.out.println("\r\n\r\n\r\n");
		setState(PlatformState.INITIALIZED);
	}
	
	private static PlatformService _platform = null;
	public static PlatformService getInstance()
	{
		if (_platform == null)
		{
			_platform = new PlatformService();
		}
		return _platform;
	}
	
	private PlatformState _state = PlatformState.INITIALIZING;
	public PlatformState getState()
	{
		return _state;
	}
	protected void setState(PlatformState p_state)
	{
		_state = p_state;
		
		PTLog.info("Platinum 平台已切换至 <" + p_state + "> 状态。");
	}
	
	public void start(String p_rootPhysicalPath, String p_rootWebPath)
	{
		PTEnvironment.setRootPhysicalPath(p_rootPhysicalPath);
		PTEnvironment.setWebContextPath(p_rootWebPath);
		
		
		setState(PlatformState.STARTING);
		
		PTLog.info("Hello from Henry Li<henry1943@163.com>");
		
		try
		{
			_loadSettings();			
			_initHibernate();
		}
		catch (Exception e)
		{
			setState(PlatformState.ERROR);
			throw new PTRuntimeException("Platinum 平台启动失败。请参考:r\n" + e, e);
		}
		
		setState(PlatformState.RUNNING);
		
		System.out.println("\r\n\r\n");
	}
	
	public void stop()
	{
		setState(PlatformState.STOPPING);
		setState(PlatformState.STOPPED);
		
		PTLog.info("Bye :)");
	}
	
	
	
	
	
	private void _loadSettings()
	{
		PTLog.info("正在加载配置信息...");
		
		File configFile = PTEnvironment.getPhysicalFile("pt/conf/platinum.properties");
		ConfigurationManager.loadFromProperties(configFile);
	}
	
	private void _initHibernate()
	{
		PTLog.info("正在初始化 Hibernate...");
		GlobalSessionFactory.init();
	}
}
