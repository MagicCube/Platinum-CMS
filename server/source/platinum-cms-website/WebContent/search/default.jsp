<%@page import="java.nio.charset.Charset"%>
<%@page import="platinum.common.util.StringUtil"%>
<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="platinum.cms.common.entity.SubcategoryEntity"%>
<%@page import="platinum.cms.runtime.service.CategoryRuntimeManager"%>
<%@page import="platinum.cms.common.entity.CategoryEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(30);
request.setCharacterEncoding("utf-8");
%>

<%
String keyword = request.getParameter("keyword");
if (StringUtil.isNullOrEmpty(keyword))
{
    return;
}

int pageIndex = 0;
try
{
    pageIndex = Integer.parseInt(request.getParameter("pageIndex")) - 1;
}
catch (Exception e)
{
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title>搜索 - 南京师范大学中北学院</title>
    <link rel="stylesheet" href="/static/common/css/basic.css"/>
    <link rel="stylesheet" href="/static/common/css/search.css"/>
    <script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
</head>

<body>

<cms:Header1 path="news" displaySideBar="false"/>
<div id="searchRes">  
    <%if (keyword.length() > 1)
    { %>
    <div id="info">以下是关键字“<span id="keyword"><%= keyword%></span>”的搜索结果:</div>
    <cms:PostSearchList id="postList" keyword='<%= keyword%>' pageIndex='<%= pageIndex%>' pageSize="10"/>
    <%} else {%>
    <div style="padding-top: 18px; padding-bottom: 18px; padding-left: 12px;">至少需要输入两个字符的关键字。</div>
    <%} %>
</div>
<cms:Footer path="news"/>

</body>
</html>