package platinum.common;

public class PTException extends Exception
{
	private static final long serialVersionUID = -6272703537295981115L;

	public PTException()
	{
		
	}

	public PTException(String p_message)
	{
		super(p_message);
	}

	public PTException(Throwable p_cause)
	{
		super(p_cause);
	}

	public PTException(String p_message, Throwable p_cause)
	{
		super(p_message, p_cause);
	}

}
