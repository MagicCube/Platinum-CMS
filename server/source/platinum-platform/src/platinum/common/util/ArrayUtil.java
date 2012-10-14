package platinum.common.util;

public class ArrayUtil
{
	public static byte[] reverse(byte[] array)
	{
		byte[] result = new byte[array.length];
		int length = array.length;
		for (int i = 0; i < length; i++)
		{
			result[i] = array[length - 1 - i];
		}
		return result;
	}
}
