package platinum.common;

public class PTRuntimeException extends RuntimeException
{
	private static final long serialVersionUID = -4662271111796518100L;

	public PTRuntimeException()
	{
		
	}

	public PTRuntimeException(String p_message)
	{
		super(p_message);
	}

	public PTRuntimeException(Throwable p_cause)
	{
		super(p_cause);
	}

	public PTRuntimeException(String p_message, Throwable p_cause)
	{
		super(p_message, p_cause);
	}

}
