package platinum.common.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class TextStreamWriter extends TextStreamAccessor
{
	private OutputStream _stream = null;
	
	public TextStreamWriter(OutputStream p_stream, String p_charsetName)
	{
		setCharsetName("UTF-8");
		_stream = p_stream;
	}
	public TextStreamWriter(OutputStream p_stream)
	{
		this(p_stream, DEFAULT_CHARSET_NAME);
	}
	
	public TextStreamWriter(File p_file, String p_charsetName) throws FileNotFoundException
	{		
		this(new FileOutputStream(p_file), p_charsetName);
	}
	public TextStreamWriter(File p_file) throws FileNotFoundException
	{
		this(new FileOutputStream(p_file), DEFAULT_CHARSET_NAME);
	}
	
	public TextStreamWriter(String p_filePath, String p_charsetName) throws FileNotFoundException
	{
		this(new File(p_filePath), p_charsetName);
	}
	public TextStreamWriter(String p_filePath) throws FileNotFoundException
	{
		this(new File(p_filePath), DEFAULT_CHARSET_NAME);
	}
	
	
	
	public void write(byte[] p_bytes) throws IOException
	{
		_stream.write(p_bytes);
	}
	public void write(byte[] p_bytes, int p_offset, int p_length) throws IOException
	{
		_stream.write(p_bytes, p_offset, p_length);
	}
	
	public void write(String p_text) throws IOException
	{
		byte[] bytes=  p_text.getBytes(getCharsetName());
		write(bytes);
	}
	
	public void writeLine(String p_text) throws IOException
	{
		write(p_text + "\r\n");
	}
	
	public void flush() throws IOException
	{
		_stream.flush();
	}
	
	
	
	
	@Override
	public void close()
	{
		if (_stream != null)
		{
			try
			{
				_stream.close();
			}
			catch (IOException e)
			{
	
			}
			_stream = null;
		}
	}
	
}
