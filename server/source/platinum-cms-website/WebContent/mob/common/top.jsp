<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<script type="text/javascript" src="menu.js"></script>
<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>





    <div class="s_header">
    	<div class="s_logo" >
    	   <div class="zblogo" onclick="location.href='';" ><img src="../mob/static/common/images/logo.png"></div>
	    	  
        </div>
        
    </div>

  <div id="menu">
    <ul class="menu">
        <li><a href="#" class="parent"><span>主页导航</span></a>
            <div>
            	<ul>               
                	<li>
                		<a href="../mob/news"><span>新闻</span></a>
                	</li>
                	<li>
                		<a href="../mob/guide/"><span>办事指南</span></a>
                	</li>
                	<li>
                		<a href="../mob/Shake/"><span>摇一摇</span></a>
                	</li>
                	<li>
                		<a href="../mob/ditu/"><span>地图</span></a>
                	</li>
            	</ul>
            </div>
        </li>
        <li><a href="../mob/pic" class="parent"><span>校园美景</span></a>
        </li>
        <li><a href="#" class="parent"><span>登录</span></a>
            <div>
            	<ul>       
                	<li><a href="http://zbvip.njnu.edu.cn/wap/"><span>教师登录</span></a></li>
                	<li><a href="http://222.192.5.246/wap/"><span>学生登录</span></a></li>
            	</ul>
            </div>
        </li>
        <li class="last">
        	<a href="../mob/"><span>PC版</span></a>
        </li>
        
    </ul>
</div>
  

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<cms:PostList id="xwdtList" categoryId='<%= request.getParameter("path")%>' count="5" />
	</div>
	<div id="bodyContent">
<%}%>
</div>
</div>