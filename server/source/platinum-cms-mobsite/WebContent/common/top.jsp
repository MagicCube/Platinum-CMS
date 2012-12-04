<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<link href = "/static/common/css/mobile.css" rel = "stylesheet"></link>

    <div class="s_header">
    	<div class="s_logo">
	    	<div class="m_nav">
	    	<ul>
	        		<li><a href="http://zbvip.njnu.edu.cn/wap" class="m_login" ><span>教师登录</span></a></li>
	        		<li><a href="http://222.192.5.246/wap" class="m_login" >学生登录</a></li>
	        	</ul>
	        	</div> 
        </div>
        
    </div>

  <div class="menu">
 
  	<table cellpadding="0" cellspacing="0">
    	<tr align="center">
				<td><a class="i_news" href="../news/default.jsp" target="_news"><span>新闻</span></a></td>
				<td><a class="i_moive" href="sub/way.html"><span>办事指南</span></a></td>
				<td><a class="i_map" href="sub/picture.html"><span>美丽校园</span></a></td>
	    </tr>
      </table>   
  </div>

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<cms:PostList id="xwdtList" categoryId='<%= request.getParameter("path")%>' count="5" />
	</div>
	<div id="bodyContent">
<%}%>