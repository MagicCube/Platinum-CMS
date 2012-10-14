package platinum.common.util;

import java.io.UnsupportedEncodingException;

public class ByteUtil
{
	public static String getHexString(byte[] p_bytes)
    {
		if (p_bytes == null)
		{
			return null;
		}
		
        final StringBuilder sb = new StringBuilder(p_bytes.length);
        for (byte b : p_bytes)
        {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
	
	public static String getHexString(String p_text)
    {
        byte[] bytes = null;
		try
		{
			bytes = p_text.getBytes("UTF-8");
		}
		catch (UnsupportedEncodingException e)
		{
			
		}
		
		if (bytes != null)
		{
			return getHexString(bytes);
		}
		else
		{
			return null;
		}
    }
}
