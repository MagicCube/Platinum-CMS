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
    <link rel="stylesheet" href="css/post.css"/>
</head>

<body>

<div id="post" class="page">
<cms:Header/>

<div id="postDetail">
    <h1 id="title"><%= post.getTitle()%></h1>
    
    <ul id="navigationBar">
        <li id="location">当前位置 &gt; </li>
        <li id="category"><a href="#"><%= post.getCategoryId()%></a> &gt; </li>
        <li id="subcategory"><a href="#"><%= post.getSubcategory().getSubcategoryName()%></a> &gt;</li>
        <li>正文</li>
    </ul>
    
    <dl id="info">
        <dd>来源：</dd>
        <dt id="source"><a href="#"><%= post.getSource()%></a></dt>
        
        <dd>更新时间：</dd>
        <dt id="updateTime"><%= post.getUpdateTime()%></dt>
    </dl>
    
    <div id="summary"><%= post.getSummary()%></div>
    
    <div id="content"><%= post.getContentText()%></div>
</div>

<cms:Footer/>

</div>
</body>
</html>