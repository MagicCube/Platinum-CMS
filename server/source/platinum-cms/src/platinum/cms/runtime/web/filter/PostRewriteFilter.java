package platinum.cms.runtime.web.filter;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PostRewriteFilter implements Filter
{
	Pattern urlPattern = null;
	
	@Override
	public void init(FilterConfig p_config) throws ServletException
	{
		urlPattern = Pattern.compile("/([a-z]+)/([a-f0-9]{32}).html");
	}
	

	
	
	@Override
	public void doFilter(ServletRequest p_request, ServletResponse p_response,
			FilterChain p_chain) throws IOException, ServletException
	{
		HttpServletRequest request = (HttpServletRequest)p_request;
		HttpServletResponse response = (HttpServletResponse)p_response;
		String uri = request.getRequestURI();
		
		Matcher matcher = urlPattern.matcher(uri);
		if (matcher.find())
		{
			String categoryId = matcher.group(1);
			String postId = matcher.group(2);
			
			request.getRequestDispatcher("/post.jsp?id=" + postId + "&categoryId=" + categoryId).forward(request, response);
			return;
		}
		
		response.setStatus(404);
	}
	
	
	
	
	@Override
	public void destroy()
	{
		// TODO Auto-generated method stub

	}
}
