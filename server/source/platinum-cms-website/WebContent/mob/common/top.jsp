<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>

    <div class="s_header">
    	<div class="s_logo" >
    	   <div class="zblogo" onclick="location.href='../../';" ><img src="../smob/static/common/images/zblogo.jpg"></div>
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
				<!--  <td><a class="i_news" href="../../news/" target="_news"><span><font color="yellow" >新闻</font></span></a></td>
				<td><a class="i_moive" href="../guide/"><span>办事指南</span></a></td>
				<td><a class="i_map" href="../pic/"><span>美丽校园</span></a></td>  -->
				
				
				<td><div class="i_news" onclick="location.href='../../news/';"><img src="../mob/static/common/images/NEWS.png"></div><font class="b" color="#239b8b" >新闻</font></td>
				
				<td><div class="i_news" onclick="location.href='../guide/';"><img src="../mob/static/common/images/guide.jpg"> </div><font class="b" color="#239b8b" >办事指南</font></td>
				
				<td><div class="i_news" onclick="location.href='../pic/';"><img src="../mob/static/common/images/view.jpg"></div><font class="b" color="#239b8b" >美丽校园</font></td>
				
				
				
	
				
				
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