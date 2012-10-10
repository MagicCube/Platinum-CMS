package platinum.common.notification;

class NotificationSender implements Runnable
{

	NotificationListener _receiver;
	Notification _notification;

	private NotificationSender(NotificationListener p_listener, Notification p_notification)
	{
		this._receiver = p_listener;
		this._notification = p_notification;
	}

	static void send(NotificationListener p_listener, Notification p_notification)
	{
		NotificationSender ns = new NotificationSender(p_listener,
				p_notification);
		ns.run();
		// Thread runner = new Thread(ns)
		// runner.start()
	}

	public void run()
	{
		this._receiver.notificationDidReceive(this._notification);
	}
}