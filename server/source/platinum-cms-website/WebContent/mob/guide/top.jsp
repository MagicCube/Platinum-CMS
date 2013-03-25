<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>


<hr color="#239b8b">

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<cms:PostList id="xwdtList" categoryId='<%= request.getParameter("path")%>' count="5" />
	</div>
	<div id="bodyContent"></div>
	</div>
<%}%>