package platinum.security;

import static org.junit.Assert.*;

import org.junit.Test;

import platinum.security.entity.UserEntity;

public class MembershipTest
{
	@Test
	public void testValidateUser()
	{
		String id = Membership.getInstance().validateUser("admin", "wrong-password");
		assertNull(id);
		
		id = Membership.getInstance().validateUser("admin", "admin");
		assertEquals(id, UserEntity.ADMIN_USER_ID);
	}

	@Test
	public void testGetUserById()
	{
		MembershipUser user = Membership.getInstance().getUserById("fake-id");
		assertNull(user);
		
		user = Membership.getInstance().getUserById(UserEntity.ADMIN_USER_ID);
		assertNotNull(user);
		assertEquals(user.getId(), UserEntity.ADMIN_USER_ID);
	}

}
