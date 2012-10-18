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
        <dl id="source">
            <dd>来源：</dd>
            <dt><a href="#"><%= post.getSource()%></a></dt>
        </dl>
        
        <dl id="updateTime">
            <dd>更新时间：</dd>
            <dt><%= post.getUpdateTime()%></dt>
        </dl>
    </div>
    <div id="summary"><%= post.getSummary()%></div>
    <div id="content"><%= post.getContentText()%></div>
</div>

<cms:Footer/>

</div>
</body>
</html>