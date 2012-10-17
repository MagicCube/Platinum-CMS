package platinum.security.dao;

import org.hibernate.Session;

import platinum.framework.dao.StandardEntityDAO;
import platinum.security.entity.UserEntity;

public class UserDAO extends StandardEntityDAO<UserEntity>
{
	public UserDAO()
	{
		
	}
	
	public UserDAO(Session p_session)
	{
		super(p_session);
	}
}
