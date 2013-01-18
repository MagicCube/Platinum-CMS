<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(60);
request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<cms:Meta/>
<title>南京师范大学中北学院欢迎您</title>

<link href="/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/home/css/home1.css" rel = "stylesheet"></link> 

</head>
<body style="background-image:url('/static/common/scripts/lib/bxslider/wenli-1.jpg');">
		<cms:Header1/>
		<div id="code">
			<a href="http://211.65.211.222:8080"><img src="/static/common/images/code.png" title="扫描或点击体验中北学院移动门户" height="80px" width="80px"/></a>
		</div>
	
		<div id="middle">
		
			<div id="photoslider">
				<cms:Accordionslide id="accordion-slider" cssClass="bxslider" subcategoryId="sc000000000000000000000000000207" displayPhoto="true" count="6" />	
			</div>
			
			<div id="news">
				<div id="newslabel"><span id="text">新闻动态</span></div>	
				<cms:PostList id="xwdtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000006" displayPhoto="true" count="1" />
				<cms:PostList id="textContent" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="5" />
				<div id="morelabel"><a href="/news/sc000000000000000000000000000006/more/">更多</a></div>
			</div>
			
			<div id="school">
				<div id="schoollabel"><span id="text">校园动态</span></div>
				<!--<cms:PostList id="xydtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000020" displayPhoto="true" count="1" />-->
				<cms:PostList id="text_school" subcategoryId="sc000000000000000000000000000020" where="photoURL is null" count="12" />
				<div id="morelabel"><a href="/news/sc000000000000000000000000000020/more/">更多</a></div>
			</div>
			
			<div id="inform">
				<div id="labellong"><span id="text">通知公告</span></div>
				<cms:PostList id="text_inform" subcategoryId="sc000000000000000000000000000008" where="photoURL is null" count="7" />
				<div id="morelabel"><a href="/news/sc000000000000000000000000000008/more/">更多</a></div>
			</div>
			
			<div id="usedlink">
				<div id="linklabel"><span id="text">常用链接</span></div>
				 <ul id="left">
					<li><a href="http://zbvip.njnu.edu.cn/">教工之家</a></li>
					<li><a href="http://222.192.5.246/(khvomn45dim5kn3kj4t0gh55)/default2.aspx">教务系统</a></li>
					<li><a href="http://web.mobset.com/index.html">短信平台</a></li>
				</ul>
				
				<ul id="right" style="left: 140px;">
					<li><a href="/service/ff8081813b6fee04013b6ff3a36c0017.html">办公电话</a></li>
					<li><a href="/service/ff8081813b6fee04013b6ff158fb0008.html">校园交通</a></li>
					<li><a href="https://mail.njnu.edu.cn/">邮件在线</a></li>
				</ul>
				
				<div id="morelabel"><a href="/service/ff8081813be18002013be18e03250002.html">更多</a></div>
			</div>
			
		</div> 
		<div id="mainfooter">
			<div id="copyright">
				<div id="part1" style="padding-top: 25px; margin-left: auto; margin-right: auto;">
					<p>2013 版权所有 <span style="font-family: 'verdana';">©</span> 南京师范大学中北学院</p>
					<!-- <p>苏ICP备05080300号</p> -->
				</div>
			</div>
		</div>

</body>
</html>
