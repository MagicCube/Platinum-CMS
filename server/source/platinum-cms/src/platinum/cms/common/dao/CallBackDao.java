package platinum.cms.common.dao;


import org.hibernate.Session;

import platinum.cms.common.entity.CallBackEntity;

import platinum.framework.dao.StandardEntityDAO;

public class CallBackDao extends StandardEntityDAO<CallBackEntity>
{
	public CallBackDao()
	{
		
	}
	
	public CallBackDao(Session p_session)
	{
		super(p_session);
	}
	
	
	
	
	
	
	@Override
	public void save(CallBackEntity p_post)
	{
		
		super.save(p_post);
		
	
	}
	
}
