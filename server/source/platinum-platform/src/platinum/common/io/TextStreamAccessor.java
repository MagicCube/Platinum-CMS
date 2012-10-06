package platinum.common.io;

import java.io.Closeable;

abstract class TextStreamAccessor implements Closeable
{
	public final static String DEFAULT_CHARSET_NAME = "UTF-8";
	
	private String _charsetName = null;
	
	public String getCharsetName()
	{
		return _charsetName;
	}
	public void setCharsetName(String p_charsetName)
	{
		_charsetName = p_charsetName;
	}
	
	public abstract void close();	
}
