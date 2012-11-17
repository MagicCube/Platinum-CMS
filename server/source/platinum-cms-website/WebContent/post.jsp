<%@page import="platinum.common.util.DateUtil"%>
<%@page import="platinum.cms.common.entity.PostEntity"%>
<%@page import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
String id = request.getParameter("id");
String categoryId = request.getParameter("categoryId");
PostRuntimeManager postManager = new PostRuntimeManager();
PostEntity post = postManager.getPost(id, categoryId);
if (post == null)
{
    response.setStatus(404);
    return;
}
else
{
    String ifModifiedSince = request.getHeader("If-Modified-Since");
    String lastModified = DateUtil.formatGMTDate(post.getUpdateTime());
    if (ifModifiedSince != null && ifModifiedSince.equals(lastModified))
    {
        response.setStatus(304);
        return;
    }
    else
    {
       response.setHeader("Last-Modified", lastModified);
    }
}
%>

<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title><%= post.getTitle()%></title>
    <link rel="stylesheet" href="/static/common/css/common.css"/>
    <link rel="stylesheet" href="/static/common/css/post.css"/>
    <link rel="stylesheet" href="<%= "/static/" + categoryId%>/css/post.css"/>
    <script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
    <!-- <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=" type="text/javascript" charset="utf-8"></script> -->
</head>

<body>

<div id="post" class="page">
<cms:Header/>

<div id="postDetail">
    <ul id="navigationBar">
        <li id="location"><a href="<%=request.getContextPath()%>/">首页</a> &gt; </li>
        <li id="category"><a href="#"><%= post.getCategoryId()%></a> &gt; </li>
        <li>正文</li>
    </ul>

    <h1 id="title"><%= post.getTitle()%></h1>    
    
    <div id="info">
        <div id="source"><span>来源：</span><a href="#"><%= post.getSource()%></a></div>
        <div id="updateTime"><span>更新时间：</span><a><%= DateUtil.formatDate(post.getUpdateTime(), "yyyy年M月d日HH:mm")%></a></div>
    </div>

    <div id="social">
        <wb:share-button id="weibo" url="<%= post.getAbsoluteLink()%>" type="icon"></wb:share-button>
    </div>


    <div id="summary"><%= post.getSummary()%></div>
    <div id="content"><%= post.getContentText()%></div>
    
    <script>
        document.getElementById("weibo").title = $("#summary").text();
    </script>
</div>

<cms:Footer/>

</div>
</body>
</html>