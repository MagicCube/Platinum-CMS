package platinum.security;

import platinum.common.util.EncryptionUtil;
import platinum.common.util.StringUtil;
import platinum.framework.dao.DAOQuery;
import platinum.security.dao.UserDAO;
import platinum.security.entity.UserEntity;

public class Membership
{
	private Membership() 
	{
		_userDAO = new UserDAO();
	}
	
	private static Membership _instance = null;
	public static Membership getInstance()
	{
		if (_instance == null)
		{
			_instance = new Membership();
		}
		return _instance;
	}
	

	
	private UserDAO _userDAO = null;
	private UserDAO getUserEntityDAO()
	{
		return _userDAO;
	}
	
	private ThreadLocal<MembershipUser> _currentUser = new ThreadLocal<MembershipUser>();
	public MembershipUser getCurrentUser()
	{
		return _currentUser.get();
	}
	public void setCurrentUser(MembershipUser p_user)
	{
		_currentUser.set(p_user);
	}
	
	
	
	public String validateUser(String p_loginName, String p_loginPassword)
	{
		UserEntity entity = _getUserEntityByLoginName(p_loginName);
		if (entity != null && entity.getLoginPass().equals(EncryptionUtil.encryptPassword(p_loginPassword)))
		{
			return entity.getId();
		}
		else
		{
			return null;
		}
	}
	
	public MembershipUser getUserById(String p_id)
	{
		UserEntity entity = getUserEntityDAO().selectById(p_id);
		if (entity != null)
		{
			MembershipUser user = MembershipUser.createFromPO(entity);
			return user;
		}
		else
		{
			return null;
		}
	}
	
	public void changeUserPassword(String p_userName, String p_newPassword)
	{
		if (StringUtil.notNullOrEmpty(p_newPassword))
		{
			UserEntity user = _getUserEntityByLoginName(p_userName);
			getUserEntityDAO().beginTransaction();
			user.setLoginPass(EncryptionUtil.encryptPassword(p_newPassword));
			getUserEntityDAO().save(user);
			getUserEntityDAO().commitTransaction();
		}
	}
	
	
	private UserEntity _getUserEntityByLoginName(String p_userName)
	{
		DAOQuery query = new DAOQuery("loginName=:loginName");
		query.setParameter("loginName", p_userName.toLowerCase());
		UserEntity user = getUserEntityDAO().selectFirst(query);
		return user;
	}

}
