package platinum.framework.web.rest;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;

public abstract class AbstractResource
{
	@Context
	private UriInfo _uri;
	
	@Context
	private HttpServletRequest _request;
	
	@Context
	private HttpServletResponse _response;

	protected UriInfo getUri()
	{
		return _uri;
	}

	protected HttpServletRequest getRequest()
	{
		return _request;
	}

	protected HttpServletResponse getResponse()
	{
		return _response;
	}

	protected HttpSession getSession()
	{
		if (_request != null)
		{
			HttpSession session = _request.getSession(true);
			return session;
		}
		return null;
	}

	protected Object getSessionAttribute(String key)
	{
		HttpSession session = getSession();
		if (session != null)
		{
			return session.getAttribute(key);
		}
		return null;
	}

	protected void setSessionAttributre(String key, Object value)
	{
		HttpSession session = getSession();
		if (session != null)
		{
			session.setAttribute(key, value);
		}
	}

	protected String getHttpHeader(String key)
	{
		if (_request != null)
		{
			return _request.getHeader(key);
		}
		return null;
	}

	protected Response responseOK()
	{
		return Response.ok().build();
	}

	protected Response responseWithText(String text)
	{
		return Response.ok(text, MediaType.TEXT_PLAIN_TYPE).build();
	}

	protected Response responseWithMedia(String content, MediaType mediaType)
	{
		return Response.ok(content, mediaType).build();
	}

	protected Response responseWithMedia(String content, String mediaType)
	{
		return Response.ok(content, mediaType).build();
	}

	protected Response responseWithHTML(String html)
	{
		return Response.ok(html, MediaType.TEXT_HTML_TYPE).build();
	}

	protected Response responseWithXML(String xml)
	{
		return Response.ok(xml, MediaType.TEXT_XML_TYPE).build();
	}

	protected Response responseWithJSONString(String rawJSON)
	{
		return Response.ok(rawJSON, MediaType.APPLICATION_JSON_TYPE).build();
	}

	protected Response responseWithJSONObject(JSONObject jsonObject)
	{
		return Response.ok(jsonObject, MediaType.APPLICATION_JSON_TYPE).build();
	}

	protected Response responseWithJSONArray(JSONArray jsonArray)
	{
		return Response.ok(jsonArray, MediaType.APPLICATION_JSON_TYPE).build();
	}

	protected Response responseWithFile(File file, String mediaType, Date date)
	{
		ResponseBuilder builder = Response.ok(file, mediaType);
		if (date != null)
		{
			builder.lastModified(date);
		}
		return builder.build();
	}

	protected Response responseWithFile(File file, String mediaType)
	{
		return responseWithFile(file, mediaType, null);
	}

	protected Response responseRedirectTo(String p_path)
	{
		ResponseBuilder builder = Response.status(307);
		builder.header("Location", p_path);
		return builder.build();
	}

	protected Response responseNotModified()
	{
		return Response.status(304).build();
	}

	protected Response responseUnauthorized()
	{
		return Response.status(401).build();
	}

	protected Response responseForbidden()
	{
		return Response.status(403).build();
	}

	protected Response responseNotFound()
	{
		return Response.status(404).build();
	}

	protected Response responseWithException(String message)
	{
		ResponseBuilder builder = Response.status(500);
		builder.entity(message);
		return builder.build();
	}

	protected Response responseWithException(Exception exception)
	{
		return responseWithException(exception.getMessage());
	}
}
