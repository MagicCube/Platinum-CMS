package platinum.common.util;

import java.util.UUID;

public final class GUIDUtil
{
	public static String newGuid()
	{
		UUID uuid = UUID.randomUUID();
        String randomUUIDString = uuid.toString();
        return randomUUIDString;
	}
}
