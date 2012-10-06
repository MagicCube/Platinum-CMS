package platinum.security.vo;

import platinum.common.PTObject;
import platinum.security.po.UserPO;

public class MembershipUser extends PTObject
{
	private static final long serialVersionUID = 4195382891955310136L;
	
	
	public static MembershipUser createFromPO(UserPO p_po)
	{
		MembershipUser user = new MembershipUser();
		user.set("id", p_po.getId());
		user.set("userName", p_po.getUserName());
		user.set("userRole", p_po.getUserRole());
		return user;
	}
	
	public String getId()
	{
		return getString("id");
	}

	public String getUserName()
	{
		return getString("userName");
	}
	
	public String getUserRole()
	{
		return getString("userRole");
	}
	
	public MembershipGroup[] getGroups()
	{
		return null;
	}
	
	public boolean isAdministator()
	{
		return "Administrator".equals(getUserRole());
	}
}
