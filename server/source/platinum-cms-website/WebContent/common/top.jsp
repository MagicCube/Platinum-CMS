<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<%
request.setCharacterEncoding("utf-8");
%>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<link href = "/static/common/css/common.css" rel = "stylesheet"></link>
<script src="/static/common/scripts/src/menu.js" type="text/javascript"></script>
<script src="/static/common/scripts/src/dyamicPic.js" type="text/javascript"></script>

<div id="layer1">
<div id="header">
			<span style="float: left; margin-top: 18px; display: block;"><a href="/"><img src="/static/common/images/logo.png" title="首页" alt=""/></a></span>
			<div id="dynamic">
				<a href="/introduce/view.jsp">
				<ul id="dttpList">
					<li><img src="/static/common/images/h1.png" alt="1"/></li>
					<li><img src="/static/common/images/h2.png" alt="2"/></li>
					<li><img src="/static/common/images/h3.png" alt="3"/></li>
					<li><img src="/static/common/images/h4.png" alt="4"/></li>
				</ul>
				</a>
			</div>
			<div id="headerRight">
					<form id="search" action="/search" method="get">
						<div id="searchline"><input type="text" id="searchField" name="keyword" value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : ""%>"/></div>
						<input type="submit" id="searchBtn" value=""/>
					</form>
					<div id="fastlink">
						<span><a href="/">首页</a>|<a href="/introduce/12345679be9e6b7a00002be9e6b7a0d.html">联系我们</a>|<a href="/introduce/ff8081813be4798a013be484d5540002.html">About NNUZC</a>|<a href="http://www.njnu.edu.cn/">南京师范大学</a></span>
					</div>
			</div>
</div>

<menu id="homemenu">		
   		<li><a href ="#">学院概况</a>
	        <ul id="downlist">
	            <li><a href="/introduce/402881e93b41ec78013b41f8a5cf0008.html">学院简介</a></li>
	            <li><a href="/introduce/ff8081813be9dcbc013be9e6b7a00002.html">领导简介</a></li>
	            <li><a href="/introduce/12345678be9e6b7a00002be9e6b7a0d.html">校园美景</a></li>
	            <li><a href="/introduce/12345679be9e6b7a00002be9e6b7a0d.html">联系我们</a></li>
	        </ul>
	    </li>
	    <li><a href="#">部门机构</a>
	        <ul id="downlist">
	            <li><a href="/organization/ff8081813bea7af0013bea9a8e700008.html" >系部设置</a></li>
	            <li><a href="/organization/ff8081813bea7af0013bea97c53f0005.html">部门设置</a></li>
	        </ul>
	    </li>
   		<li><a href="http://zbzs.njnu.edu.cn/trch/index.htm">教学科研</a></li>
	    <li><a href="http://zbzs.njnu.edu.cn/stud/index.asp">学生工作</a>
	        <ul id="downlist">
	            <!-- <li><a href="http://zbzs.njnu.edu.cn/stud/index.asp">学工处</a></li> -->
	            <!-- <li><a href="/tuanwei/">团委</a></li>  -->            
	        </ul>
	    </li>
   		<li><a href="http://zbzs.njnu.edu.cn/part/index.htm">组织人事</a></li>
	    <li><a href="#">招生就业</a>
	        <ul id="downlist">
	            <li><a href="http://zbzs.njnu.edu.cn/enrol/index.asp">招生录取</a></li>
	            <li><a href="http://zbzs.njnu.edu.cn/job/index.asp">就业指导</a></li>
	        </ul>
	    </li>  
	    <li><a href="#">交流合作</a>
	        <ul id="downlist">
	            <li><a href="/cooperation/ff8081813be951ee013be993b7240002.html">海外学习计划</a></li>
	            <!-- <li class = "subMenu"><a href = "/cooperation/f8081813b7a2ecd013b7a3a0ece000b.html">联合办学</a></li> -->
	        </ul>
	    </li>
	    <li><a href="#">公共服务</a>
	        <ul id="downlist">
	            <li><a href="/service/ff8081813b6fee04013b6fef4b390002.html">教学周历</a></li>
	            <!-- <li><a href="/service/ff8081813b7a2ecd013b7a384fb20008.html">来稿须知</a></li> -->
	            <li><a href="/service/92345678be9e6b7a00002be9e6b7a0d.html">办事指南</a></li>
	            <li><a href="/service/ff8081813b6fee04013b6ff2b1d90011.html">作息时间</a></li>	            
	            <li><a href="/service/ff8081813b6fee04013b6ff3a36c0017.html">办公电话</a></li>
	            <li><a href="/service/ff8081813b6fee04013b6ff158fb0008.html">校园交通</a></li>
	      		<li><a href="http://www.njnu.edu.cn/jssd.htm">在线杀毒</a></li>
	      		<li><a href="/service/ff8081813be18002013be18e03250002.html">常用链接</a></li>
	        </ul>
	    </li>
	    <li><a href="#">技术支持</a>
	    	<ul id="downlist">
	    		<!-- <li><a href="/ruanyan/">软件研发与培训中心</a></li> -->
	            <li><a href="/technology/ff8081813be5798c013be58062050002.html">现代教育技术中心</a></li>	
	        </ul>
	    </li>	
</menu>
		

<div id="MainBox">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<div id = "sideBarin">
		<div id = "title_style"><strong>要文回顾</strong><span style= "float: right;"><a href = "/news/more/">更多...</a></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' count="9" />
		<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' subcategoryId="rank" count="9" />
		</div>
	</div>
<%}%>
