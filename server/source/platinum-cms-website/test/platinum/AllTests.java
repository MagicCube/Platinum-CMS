package platinum;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import platinum.cms.common.dao.PostDAOTest;
import platinum.cms.runtime.service.PostRuntimeManagerTest;
import platinum.platform.service.PlatformServiceTest;
import platinum.security.MembershipTest;

@RunWith(Suite.class)
@SuiteClasses({ 
	PlatformServiceTest.class,
	//MembershipTest.class,
	//PostDAOTest.class
	//PostRuntimeManagerTest.class
})
public class AllTests
{

}
