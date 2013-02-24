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
<link href="/static/home/css/home.css" rel = "stylesheet"></link> 

</head>
<body>
		<cms:Header/>
		<div id="code">
			<a href="http://211.65.211.222:8080" target="_blank"><img src="/static/common/images/code.png" title="扫描或点击体验中北学院移动门户" height="80px" width="80px"/></a>
		</div>
	
		<div id="middle">
			<div id="photoslider">
				
				<cms:PhotoSlide id="tsztList" cssClass="bxslider" subcategoryId="sc000000000000000000000000000207" displayPhoto="true" count="4" />	
				
			</div>
			
			<div id="news">
				<div id="newslabel"><span id="text">新闻动态</span></div>	
				<cms:PostList id="xwdtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000006" displayPhoto="true" count="1" />
				<cms:PostList id="textContent" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="8" />
				<div id="morelabel"><a href="/news/sc000000000000000000000000000006/more/">更多</a></div>
			</div>
			
			<div id="school">
				<div id="schoollabel"><span id="text">校园动态</span></div>
				<!--<cms:PostList id="xydtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000020" displayPhoto="true" count="1" />-->
				<cms:PostList id="text_school" subcategoryId="sc000000000000000000000000000020" where="photoURL is null" count="9" />
				<div id="morelabel"><a href="/news/sc000000000000000000000000000020/more/">更多</a></div>
			</div>
			
			<div id="inform">
				<div id="labellong"><span id="text">通知公告</span></div>
				<cms:PostList id="text_inform" subcategoryId="sc000000000000000000000000000008" where="photoURL is null" count="6" />
				<div id="morelabel"><a href="/news/sc000000000000000000000000000008/more/">更多</a></div>
			</div>
			
			<div id="usedlink">
				<div id="linklabel"><span id="text">常用链接</span></div>
				 <ul id="left">
					<li><a href="http://zbvip.njnu.edu.cn/" target="_blank">教工之家</a></li>
					<li><a href="http://222.192.5.246/(khvomn45dim5kn3kj4t0gh55)/default2.aspx" target="_blank">教务系统</a></li>
					<li><a href="http://web.mobset.com/index.html" target="_blank">短信平台</a></li>
				</ul>
				
				<ul id="right" style="left: 140px;">
					<li><a href="/service/ff8081813b6fee04013b6ff3a36c0017.html">办公电话</a></li>
					<li><a href="/service/ff8081813b6fee04013b6ff158fb0008.html">校园交通</a></li>
					<li><a href="https://mail.njnu.edu.cn/" target="_blank">邮件在线</a></li>
				</ul>
				
				<div id="morelabel"><a href="/service/ff8081813be18002013be18e03250002.html">更多</a></div>
			</div>
		</div> 
	</div> 
	<cms:Footer1/>
</body>
</html>
