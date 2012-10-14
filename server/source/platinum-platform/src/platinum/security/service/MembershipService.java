package platinum.security.service;

import platinum.common.util.EncryptionUtil;
import platinum.framework.dao.DAOQuery;
import platinum.security.dao.UserDAO;
import platinum.security.po.UserPO;
import platinum.security.vo.MembershipUser;

public class MembershipService
{
	private MembershipService() 
	{
		_userEntityDAO = new UserDAO();
	}
	
	private static MembershipService _instance = null;
	public static MembershipService getInstance()
	{
		if (_instance == null)
		{
			_instance = new MembershipService();
		}
		return _instance;
	}
	

	
	private UserDAO _userEntityDAO = null;
	private UserDAO getUserEntityDAO()
	{
		return _userEntityDAO;
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
		DAOQuery query = new DAOQuery("loginName=:loginName");
		query.setParameter("loginName", p_loginName.toLowerCase());
		query.setCachable(true);
		UserPO entity = getUserEntityDAO().selectFirst(query);
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
		UserPO entity = getUserEntityDAO().selectById(p_id);
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
}
