package platinum.common.io;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class TextStreamReader extends TextStreamAccessor {
	public final static int BUFFER_SIZE = 1024 * 50;

	private InputStream _stream = null;

	public TextStreamReader(InputStream p_stream, String p_charsetName) {
		setCharsetName("UTF-8");
		_stream = p_stream;
	}

	public TextStreamReader(InputStream p_stream) {
		this(p_stream, DEFAULT_CHARSET_NAME);
	}

	public TextStreamReader(File p_file, String p_charsetName)
			throws FileNotFoundException {
		this(new FileInputStream(p_file), p_charsetName);
	}

	public TextStreamReader(File p_file) throws FileNotFoundException {
		this(new FileInputStream(p_file), DEFAULT_CHARSET_NAME);
	}

	public TextStreamReader(String p_filePath, String p_charsetName)
			throws FileNotFoundException {
		this(new File(p_filePath), p_charsetName);
	}

	public TextStreamReader(String p_filePath) throws FileNotFoundException {
		this(new File(p_filePath), DEFAULT_CHARSET_NAME);
	}

	public byte[] readBytes(int p_offset) throws IOException {
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		byte[] bytes = new byte[BUFFER_SIZE];
		int length = 0;
		int offset = p_offset;
		while ((length = _stream.read(bytes, offset, bytes.length)) > 0) {
			offset = 0;
			buffer.write(bytes, 0, length);
		}
		return buffer.toByteArray();
	}

	public byte[] readBytes() throws IOException {
		return readBytes(0);
	}

	public String readText() throws IOException {
		byte[] bytes = readBytes();
		return new String(bytes, getCharsetName());
	}

	public String[] readLines() throws IOException {
		String text = readText();
		return text.split("\n");
	}

	@Override
	public void close() {
		if (_stream != null) {
			try {
				_stream.close();
			} catch (IOException e) {

			}
			_stream = null;
		}
	}
}
