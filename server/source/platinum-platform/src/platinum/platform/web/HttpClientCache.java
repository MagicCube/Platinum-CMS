package platinum.platform.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HttpClientCache
{
	private HttpServletRequest _request = null;
	private HttpServletResponse _response = null;
	
	public HttpClientCache(HttpServletRequest request, HttpServletResponse response)
	{
		_request = request;
		_response = response;
	}
	
	public void setMaxAge(int p_minutes)
	{
		int seconds = p_minutes * 60;
		Date now = new Date();
		String expDate = (new Date(now.getTime() + seconds * 1000)).toGMTString();
		_response.setHeader("Expires", expDate);
		_response.setHeader("Cache-Control", "max-age=" + String.valueOf(seconds));
		_response.setHeader("Pragma", "Pragma");
	}
}
