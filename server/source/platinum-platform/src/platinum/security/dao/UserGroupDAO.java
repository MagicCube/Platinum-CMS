package platinum.security.dao;

import org.hibernate.Session;

import platinum.framework.dao.StandardDAO;
import platinum.security.po.UserGroupPO;

public class UserGroupDAO extends StandardDAO<UserGroupPO>
{
	public UserGroupDAO()
	{
		
	}
	
	public UserGroupDAO(Session p_session)
	{
		super(p_session);
	}
}
