package platinum.security.dao;

import org.hibernate.Session;

import platinum.framework.dao.StandardDAO;
import platinum.security.po.UserPO;

public class UserDAO extends StandardDAO<UserPO>
{
	public UserDAO()
	{
		
	}
	
	public UserDAO(Session p_session)
	{
		super(p_session);
	}
}
