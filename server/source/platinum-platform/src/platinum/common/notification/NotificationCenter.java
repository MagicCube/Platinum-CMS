package platinum.common.notification;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

public class NotificationCenter
{
	private static NotificationCenter _default;
	private Map<String, List<NotificationListener>> _listeners;

	private NotificationCenter()
	{
		_listeners = new ConcurrentHashMap<String, List<NotificationListener>>();
		_listeners.put("*", new ArrayList<NotificationListener>());
	}

	public static NotificationCenter getDefault()
	{
		if (null == _default)
			_default = new NotificationCenter();
		return _default;
	}

	public void sendNotification(Notification p_notification)
	{
		List<NotificationListener> listeners = _listeners.get(p_notification.getMessage());
		if (listeners != null)
		{
			for (NotificationListener listener : listeners)
			{
				NotificationSender.send(listener, p_notification);
			}
		}
		
		listeners = _listeners.get("*");
		for (NotificationListener listener : listeners)
		{
			NotificationSender.send(listener, p_notification);
		}
	}

	public void sendNotification(Object p_sender, String p_message, Map<String, Object> p_data)
	{
		Notification n = new Notification(p_sender, p_message, p_data);
		this.sendNotification(n);
	}

	public void addListener(NotificationListener p_listener, String p_message)
	{
		if (null == _listeners.get(p_message))
		{
			_listeners.put(p_message, new ArrayList<NotificationListener>());
		}
		_listeners.get(p_message).add(p_listener);
	}

	public void addListener(NotificationListener p_listener)
	{
		addListener(p_listener, "*");
	}

}