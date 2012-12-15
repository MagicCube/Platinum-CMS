<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="platinum.cms.common.PostType"%>
<%@page import="platinum.cms.common.entity.PostEntity"%>
<%@page import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(30 * 24 * 60);
%>

<%
String id = request.getParameter("id");
String categoryId = request.getParameter("categoryId");
PostRuntimeManager postManager = PostRuntimeManager.getInstance();
PostEntity post = postManager.getPost(id, categoryId);
if (post == null)
{
    response.setStatus(404);
    return;
}
else if (post.getPostType() == PostType.LINK)
{
    response.sendRedirect(post.getSummary());
    return;
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title><%= post.getTitle()%></title>
    <link rel="stylesheet" href="/static/common/css/basic.css"/>
    <link rel="stylesheet" href="/static/common/css/post.css"/>
    <script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
</head>

<body>

<cms:Header path="<%= categoryId%>" displaySideBar="<%= post.getPostType() != PostType.INFORMATION%>"/>

<cms:PostDetail id="postDetail" postId="<%= id%>" categoryId="<%= categoryId%>"></cms:PostDetail>

<cms:Footer path="<%= categoryId%>"/>

</body>
</html>