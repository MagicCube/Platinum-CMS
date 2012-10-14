package platinum.common.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptionUtil
{
	public static byte[] encryptMD5(byte[] p_bytes)
	{
		MessageDigest md5 = _createMD5();
		md5.update(p_bytes);
		return md5.digest();
	}
	
	public static String encryptMD5(String p_content)
	{
		byte[] inputBytes = null;
		try
		{
			inputBytes = p_content.getBytes("utf-8");
		}
		catch (UnsupportedEncodingException e)
		{
			
		}
		
		byte[] outputBytes = encryptMD5(inputBytes);
		return ByteUtil.getHexString(outputBytes);
	}
	
	
	public static String encryptPassword(String p_content)
	{		
		byte[] sourceBytes = null;
		try
		{
			sourceBytes = p_content.getBytes("utf-8");
		}
		catch (UnsupportedEncodingException e)
		{
			
		}
		
		byte[] outputBytes = encryptMD5(sourceBytes);
		outputBytes = ArrayUtil.reverse(outputBytes);
		
		return ByteUtil.getHexString(outputBytes);
	}
	
	
	
	private static MessageDigest _createMD5()
	{
		MessageDigest md5 = null;
		if (md5 == null)
		{
			try
			{
				md5 = MessageDigest.getInstance( "MD5" );
			}
			catch (NoSuchAlgorithmException e)
			{
				
			}
		}
		return md5;
	}
}
