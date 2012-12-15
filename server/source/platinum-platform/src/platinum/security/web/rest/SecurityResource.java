package platinum.security.web.rest;

import javax.servlet.http.HttpSession;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import platinum.common.util.StringUtil;
import platinum.framework.web.rest.AbstractResource;
import platinum.security.Membership;
import platinum.security.MembershipUser;

@Path("security")
public class SecurityResource extends AbstractResource
{
	@POST
	@Path("validate")
	public Response validateUser(
			@FormParam("loginName") String p_loginName,
			@FormParam("loginPassword") String p_loginPassword
		)
	{
		if (Membership.getInstance().validateUser(p_loginName, p_loginPassword) != null)
		{
			return responseOK();
		}
		else
		{
			return responseForbidden();
		}
	}
	
	@POST
	@Path("password")
	public Response changePassword(
			@FormParam("loginPassword") String p_loginPassword,
			@FormParam("newPassword") String p_newPassword
			)
	{
		if (getSessionAttribute("pt.membership.currentUser") == null)
		{
			return responseWithException("密码修改失败，请重新登录。");
		}
		
		String userName = ((MembershipUser)getSessionAttribute("pt.membership.currentUser")).getLoginName();
		if (Membership.getInstance().validateUser(userName, p_loginPassword) != null)
		{
			try
			{
				Membership.getInstance().changeUserPassword(userName, p_newPassword);
				return responseOK();
			}
			catch (Exception e)
			{
				return responseWithException(e.getMessage());
			}
		}
		else
		{
			return responseWithException("原始密码输入错误。");
		}
	}
	
	@POST
	@Path("login")
	public Response login(
			@FormParam("loginName") String p_loginName,
			@FormParam("loginPassword") String p_loginPassword,
			@FormParam("redirectURL") String p_redirectURL
		)
	{
		if (StringUtil.notNullOrEmpty(p_loginName) && StringUtil.notNullOrEmpty(p_loginPassword))
		{
			String userId = Membership.getInstance().validateUser(p_loginName, p_loginPassword);
			if (userId != null)
			{
				MembershipUser user = Membership.getInstance().getUserById(userId);
				if (user != null)
				{
					HttpSession session = getRequest().getSession(true);
					session.setAttribute("pt.membership.currentUser", user);
					
					if (p_redirectURL != null)
					{
						String message = "<html><head><title>登陆成功，正在跳转...</title><meta http-equiv='refresh' content='0; url=" + p_redirectURL + "' /></head><body></body></html>";
						return responseWithHTML(message);
					}
					else
					{
						return responseNotFound();
					}
				}
			}
		}
		
		return responseForbidden();
	}
	
	@POST
	@Path("logoff")
	public Response logoff()
	{
		HttpSession session = getRequest().getSession(false);
		if (session != null)
		{
			session.invalidate();
		}
		
		return responseRedirectTo("/admin/");
	}
}
