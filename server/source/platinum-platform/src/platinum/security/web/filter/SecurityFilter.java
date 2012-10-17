package platinum.security.web.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import platinum.security.Membership;
import platinum.security.MembershipUser;

public class SecurityFilter implements Filter
{
	private String _loginPath = null;
	
	@Override
	public void init(FilterConfig p_config) throws ServletException
	{
		_loginPath = p_config.getInitParameter("loginPath");
	}

	@Override
	public void doFilter(ServletRequest p_request, ServletResponse p_response,
			FilterChain p_chain) throws IOException, ServletException
	{
		if (p_request instanceof HttpServletRequest)
		{
			HttpServletRequest request = (HttpServletRequest)p_request;
			HttpServletResponse response = (HttpServletResponse)p_response;
			String path = request.getRequestURI().substring(request.getContextPath().length());
			URL url = new URL(request.getRequestURL().toString());
			String file = url.getFile().toLowerCase();
			
			if (!file.endsWith(".js") &&
					!file.endsWith(".css") &&
					!file.endsWith(".jpg") &&
					!file.endsWith(".png"))
			{
				if (path.equals(_loginPath))
				{
					// Login 页面
					p_chain.doFilter(request, p_response);
					return;
				}
				else
				{
					HttpSession session = request.getSession(false);
					if (session != null)
					{
						Object user = session.getAttribute("pt.membership.currentUser");
						if (user != null)
						{
							Membership.getInstance().setCurrentUser((MembershipUser)user);
							p_chain.doFilter(request, p_response);
							return;
						}
					}
					
					if (path.indexOf("/api/") == -1 && (path.endsWith("/") || path.endsWith(".jsp")))
					{
						response.setCharacterEncoding("UTF-8");
						response.setContentType("text/html; charset=UTF-8");
						PrintWriter out = response.getWriter();
						String uri = request.getContextPath() + _loginPath + "?redirectURL=" + request.getContextPath() + path;
						out.println("<html><head><title>正在跳转至登陆页面...</title><meta http-equiv='refresh' content='0; url=" + uri + "' /></head><body></body></html>");
						out.close();
						return;
					}
					else
					{
						response.setStatus(403);
						return;
					}
				}
			}
			else
			{
				p_chain.doFilter(request, p_response);
				return;
			}
		}
	}

	
	@Override
	public void destroy()
	{
		
	}
}
