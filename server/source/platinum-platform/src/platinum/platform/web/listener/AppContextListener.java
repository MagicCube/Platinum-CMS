package platinum.platform.web.listener;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import platinum.platform.service.PlatformService;


public class AppContextListener implements ServletContextListener
{
	@Override
	public void contextInitialized(ServletContextEvent p_event)
	{
		PlatformService.getInstance().start(p_event.getServletContext().getRealPath("/WEB-INF/pt"), p_event.getServletContext().getContextPath());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent p_event)
	{
		PlatformService.getInstance().stop();
	}
}
