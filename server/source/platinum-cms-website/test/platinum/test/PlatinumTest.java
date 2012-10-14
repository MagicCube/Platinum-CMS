package platinum.test;

import platinum.common.util.PathUtil;
import platinum.platform.service.PlatformService;

public class PlatinumTest
{

	public static void main(String[] args)
	{
		System.out.println(System.getenv("PT_CMS_WEBCONTENT"));
		String rootPath = PathUtil.combineFilePath(System.getenv("PT_CMS_WEBCONTENT"), "WEB-INF/pt");
		PlatformService.getInstance().start(rootPath, null);
	}

}
