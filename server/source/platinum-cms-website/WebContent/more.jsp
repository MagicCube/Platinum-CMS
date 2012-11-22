<%@page import="platinum.common.util.DateUtil"%>
<%@page import="platinum.cms.common.entity.PostEntity"%>
<%@page import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
String categoryId = request.getParameter("categoryId");
String subcategoryId = request.getParameter("subcategoryId");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title></title>
    <link rel="stylesheet" href="/static/common/css/basic.css"/>
    <link rel="stylesheet" href="/static/common/css/more.css"/>
    <script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
    <!-- <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=" type="text/javascript" charset="utf-8"></script> -->
</head>

<body>

<cms:Header path="<%= categoryId%>" displaySideBar="true"/>
	<cms:PostList id="postList" subcategoryId="<%= subcategoryId%>" categoryId="<%= categoryId%>" pageIndex='<%= Integer.parseInt(request.getParameter("pageIndex")) - 1%>' pageSize="25"/>
<cms:Footer path="<%= categoryId%>"/>
</body>
</html>