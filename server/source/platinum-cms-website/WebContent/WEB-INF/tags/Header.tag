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
if (FileSystemUtil.hasFile(request.getServletContext().getRealPath(path + "/top.jsp")))
{
	page = "/" + path + "/top.jsp";
}
else
{
    page = "/common/top.jsp";
}

%>
<jsp:include page='<%= page%>'>
    <jsp:param name="displaySideBar" value='<%= displaySideBar ? "true" : "false"%>'/>
</jsp:include>