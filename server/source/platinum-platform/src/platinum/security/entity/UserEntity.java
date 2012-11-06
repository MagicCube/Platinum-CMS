package platinum.security.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import platinum.framework.entity.StandardEntity;

@Entity(name = "User")
@Table(name = "PTT_USER", schema = "PT_SYS")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class UserEntity extends StandardEntity
{
	public static final String ADMIN_USER_ID = "USER-000000000000000000000000001";
	
	
	private String _userName;
	@Column(name = "USER_NAME")
	public String getUserName()
	{
		return _userName;
	}
	public void setUserName(String value)
	{
		_userName = value;
	}
	
	private String _userRole = null;
	@Column(name = "USER_ROLE")
	public String getUserRole()
	{
		return _userRole;
	}
	public void setUserRole(String value)
	{
		_userRole = value;
	}
	
	private String _loginName = null;
	@Column(name = "LOGIN_NAME")
	public String getLoginName()
	{
		return _loginName;
	}
	public void setLoginName(String value)
	{
		_loginName = value;
	}
	

	private String _loginPass = null;
	@Column(name = "LOGIN_PASS")
	public String getLoginPass()
	{
		return _loginPass;
	}
	public void setLoginPass(String value)
	{
		_loginPass = value;
	}

}
