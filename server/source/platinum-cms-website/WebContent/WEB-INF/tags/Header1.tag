<%@tag import="platinum.common.PTEnvironment"%>
<%@tag import="platinum.common.util.FileSystemUtil"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="path" rtexprvalue="true" %>
<%@ attribute name="displaySideBar" type="java.lang.Boolean" %>
<%
if (path == null)
{
    path = "common";
}

if (displaySideBar == null)
{
    displaySideBar = false;
}

String page = null;
if (FileSystemUtil.hasFile(request.getServletContext().getRealPath(path + "/top1.jsp")))
{
	page = "/" + path + "/top1.jsp";
}
else
{
    page = "/common/top1.jsp";
}

%>
<jsp:include page='<%= page%>'>
	<jsp:param name="path" value='<%= path != null ? path : "news"%>'/>
    <jsp:param name="displaySideBar" value='<%= displaySideBar ? "true" : "false"%>'/>
</jsp:include>