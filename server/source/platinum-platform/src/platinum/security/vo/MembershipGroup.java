package platinum.security.vo;

import platinum.common.PTObject;

public class MembershipGroup extends PTObject
{
	private static final long serialVersionUID = -6250482420798917282L;

	public String getName()
	{
		return getString("name");
	}
}
