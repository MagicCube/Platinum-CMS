<%@tag import="platinum.common.PTEnvironment"%>
<%@tag import="platinum.common.util.FileSystemUtil"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="path" rtexprvalue="true" %>
<%
if (path == null)
{
    path = "mob/common";
}

String page = null;
if (FileSystemUtil.hasFile(request.getServletContext().getRealPath(path + "/bottom.jsp")))
{
    page = "/" + path + "/bottom.jsp";
}
else
{
    page = "/common/bottom.jsp";
}

%>
<jsp:include page='<%= page%>'></jsp:include>