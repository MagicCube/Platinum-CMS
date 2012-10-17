package platinum.security.dao;

import org.hibernate.Session;

import platinum.framework.dao.StandardEntityDAO;
import platinum.security.entity.UserGroupEntity;

public class UserGroupDAO extends StandardEntityDAO<UserGroupEntity>
{
	public UserGroupDAO()
	{
		
	}
	
	public UserGroupDAO(Session p_session)
	{
		super(p_session);
	}
}
