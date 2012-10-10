package platinum.common.notification;

import java.util.Date;
import java.util.Map;

public class Notification
{
	private Object _sender;
	private String _message;
	private Map<String, Object> _data;
	private Date _timestamp;

	Notification(Object p_sender, String p_message, Map<String, Object> p_data)
	{
		this._sender = p_sender;
		this._message = p_message;
		this._data = p_data;
		this._timestamp = new Date();
	}

	public Object getSender()
	{
		return _sender;
	}

	public void setSender(Object p_sender)
	{
		this._sender = p_sender;
	}

	public String getMessage()
	{
		return _message;
	}

	public void setMessage(String p_message)
	{
		this._message = p_message;
	}

	public Map<String, Object> getData()
	{
		return _data;
	}

	public void setData(Map<String, Object> p_data)
	{
		this._data = p_data;
	}

	public Date getTimestamp()
	{
		return _timestamp;
	}

	public void setTimestamp(Date p_timestamp)
	{
		this._timestamp = p_timestamp;
	}
}