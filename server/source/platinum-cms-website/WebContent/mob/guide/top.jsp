<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>

    <div class="s_header">
    	<div class="s_logo" >
    	   <div class="zblogo" onclick="location.href='../../';" ><img src="../mob/static/common/images/zblogo.jpg"></div>
	    	<div class="m_nav">
	    	<ul>
	        		<li><a href="http://zbvip.njnu.edu.cn/wap" class="m_login" ><span>教师登录</span></a></li>
	        		<li><a href="http://222.192.5.246/wap" class="m_login" >学生登录</a></li>
	        	</ul>
	        	</div> 
        </div>
        
    </div>
<hr color="#239b8b">

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<cms:PostList id="xwdtList" categoryId='<%= request.getParameter("path")%>' count="5" />
	</div>
	<div id="bodyContent">
<%}%>