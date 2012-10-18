<%@page import="platinum.cms.common.entity.PostEntity"%>
<%@page import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
String id = request.getParameter("id");
PostRuntimeManager postManager = new PostRuntimeManager();
PostEntity post = postManager.getPostById(id);
if (post == null)
{
    response.setStatus(404);
    return;
}
%>

<html>
<head>
    <title><%= post.getTitle()%></title>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/common/css/common.css"/>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/common/css/post.css"/>
    <link rel="stylesheet" href="css/post.css"/>
</head>

<body>

<div id="post" class="page">
<cms:Header/>

<div id="postDetail">
    <ul id="navigationBar">
        <li id="location">当前位置 &gt; </li>
        <li id="category"><a href="#"><%= post.getCategoryId()%></a> &gt; </li>
        <li id="subcategory"><a href="#"><%= post.getSubcategory().getSubcategoryName()%></a> &gt;</li>
        <li>正文</li>
    </ul>

    <h1 id="title"><%= post.getTitle()%></h1>    
    <div id="info">
        <div id="source"><span>来源：</span><a href="#"><%= post.getSource()%></a></div>
        <div id="updateTime"><span>更新时间：</span><a><%= post.getUpdateTime()%></a></div>
    </div>
    <div id="summary"><%= post.getSummary()%></div>
    <div id="content"><%= post.getContentText()%></div>
</div>

<cms:Footer/>

</div>
</body>
</html>