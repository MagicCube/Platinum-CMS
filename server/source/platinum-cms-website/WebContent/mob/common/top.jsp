<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>

    <div class="s_header">
    	<div class="s_logo" >
    	   <div class="zblogo" onclick="location.href='';" ><img src="../mob/static/common/images/zblogo.jpg"></div>
	    	  
        </div>
        
    </div>

  <div class="menu">
 
  	<table cellpadding="0" cellspacing="0">
    	<tr align="center">
				<!--  <td><a class="i_news" href="../mob/../news/" target="_news"><span><font color="yellow" >新闻</font></span></a></td>
				<td><a class="i_moive" href="../mob/guide/"><span>办事指南</span></a></td>
				<td><a class="i_map" href="../mob/pic/"><span>美丽校园</span></a></td>  -->
				
				
				<td><div class="i_news" onclick="location.href='../../mob/news/';"><img src="../mob/static/common/images/NEWS.png"></div><font class="b" color="#239b8b" >新闻</font></td>
				
				<td><div class="i_news" onclick="location.href='../mob/guide/';"><img src="../mob/static/common/images/guide.jpg"> </div><font class="b" color="#239b8b" >办事指南</font></td>
				
				<td><div class="i_news" onclick="location.href='../mob/pic/';"><img src="../mob/static/common/images/view.jpg"></div><font class="b" color="#239b8b" >美丽校园</font></td>
				
			   
					
				<td><div class="i_news" onclick="location.href='../mob/ditu/';"><img src="../mob/static/common/images/ditu.jpg"></div><font class="b" color="#239b8b" >地图</font></td>
				
				<td><div class="i_news" onclick="location.href='../mob/Shake/';"><img src="../mob/static/common/images/yaoyiyao.jpg"></div><font class="b" color="#239b8b" >摇你喜欢</font></td>
				<td><div class="i_news" onclick="location.href='http://zbvip.njnu.edu.cn/wap';"><img src="../mob/static/common/images/teacher.jpg"></div><font class="b" color="#239b8b" >教师登陆</font></td>
				
				 <td><div class="i_news" onclick="location.href='http://222.192.5.246/wap';"><img src="../mob/static/common/images/student.jpg"></div><font class="b" color="#239b8b" >学生登陆</font></td>
				
	
				
				
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