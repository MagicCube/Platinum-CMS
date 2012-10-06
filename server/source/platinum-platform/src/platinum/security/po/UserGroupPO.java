package platinum.security.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import platinum.framework.po.StandardPO;

@Entity(name = "UserGroup")
@Table(name = "PTT_USER_GROUP", schema = "PT_SYS")
public class UserGroupPO extends StandardPO
{
	private String _userGroupName = null;
	@Column(name = "USER_GROUP_NAME")
	public String getUserGroupName()
	{
		return _userGroupName;
	}
	public void setUserGroupName(String value)
	{
		_userGroupName = value;
	}
}
