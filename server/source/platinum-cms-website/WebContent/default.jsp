<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(60);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院欢迎您</title>

<link href="/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/home/css/home.css" rel = "stylesheet"></link> 
<script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
<link href="/static/common/scripts/lib/photoslider/photoslider.css" rel="stylesheet"></link>
<script src="/static/common/scripts/lib/photoslider/jquery.photoslider.js" type="text/javascript"></script>


</head>
<body>
	<div id="layer1">
		<cms:Header/>
		<div id="code">
			<a href="#"><img src="/static/common/images/code.png" title="扫描或点击体验中北学院移动门户" height="80px" width="80px"/></a>
		</div>
	
		<div id="middle">
			<div id="photoslider">
				<ul id="slider">
					<li id="1" class="current">
						<a href="#">
							<img src="/static/common/images/9.jpg"/>
							<div id="prev"></div>
							<div id="next"></div>		
						</a>
						<div id="title">
							<p style="margin: 10px 5px 0 5px;">中北学院第二届理事会一次会议顺利召开</p>
							<p style="font-weight: normal; margin: 0 5px 0 5px;">12月11日下午，南京师范大学中北学院第二次党代会在独立校区行政楼432会议室隆重举行。</p>
						</div>
					</li>
					<li id="2">
						<a href="#">
							<img src="home/images/2.jpg"/>
							<div id="prev"></div>
							<div id="next"></div>		
						</a>
						<div id="title">title 2</div>
					</li>
					<li id="3">
						<a href="#">
							<img src="home/images/9.jpg"/>
							<div id="prev"></div>
							<div id="next"></div>		
						</a>
						<div id="title">title 3</div>
					</li>
				</ul>
				
				<script>
					$('#slider').Slider();
				</script>
				
			</div>
			
			<div id="news">
				<div id="label"><span>新闻动态</span></div>
				<ul id="textContent">
					<li><a href="#">中共南京师范大学中北学院第二次代表大会胜利召开</a></li>
					<li><a href="#">中北学院第四届党支部建设月圆满落幕</a></li>
					<li><a href="#">我院荣获首届全国民办高校党的建设和思想政治工作优秀成果二等奖</a></li>
					<li><a href="#">中北学院第二届理事会一次会议顺利召开</a></li>
					<li><a href="#">我院荣获校第六届运动会暨第五十届田径运动会总分第一名</a></li>
					<li><a href="#">中北合唱团在“喜迎十八大 江苏省合唱展演”中荣获银奖</a></li>
				</ul>
				<div id="morelabel"><a href="#">+更多</a></div>
			</div>
			
			<div id="school">
				<div id="label"><span>校园动态</span></div>
				<ul id="textContent">
					<li><a href="#">我院学生联合会举行干事技能培训颁奖仪式暨部门风采展</a></li>
					<li><a href="#">我院举办首届学生党支部书记工作论坛</a></li>
					<li><a href="#">我院 “文化校园，你我共建”红色志愿服务活动成功举办</a></li>
					<li><a href="#">中北学院第四届党支部建设月启动仪式顺利举行</a></li>
					<li><a href="#">中北学院2012年先进班级评选之班级风采展成功举办</a></li>
					<li><a href="#">我院 “十佳文明寝室”评选活动拉开序幕</a></li>
				</ul>
				<div id="morelabel"><a href="#">+更多</a></div>
			</div>
			
				<div id="inform">
				<div id="label"><span>通知公告</span></div>
				<ul id="textContent">
					<li><a href="#">募捐倡议：给年轻的生命一次重生的希望</a></li>
					<li><a href="#">关于2013年元旦放假调休有关工作及活动安排的通知</a></li>
					<li><a href="#">2012—2013学年上学期第17周政治学习安排</a></li>
					<li><a href="#">南京师范大学中北学院2012年下半年推优情况公示</a></li>
					<li><a href="#">南京师范大学中北学院关于给予吴锦涛同学退学处理的公示</a></li>
				</ul>
				<div id="morelabel"><a href="#">+更多</a></div>
			</div>
			
			<div id="usedlink">
				<div id="linklabel">常用链接</div>
				<ul>
					<li><a href="#">教工之家</a></li>
					<li><a href="#">教务系统</a></li>
					<li><a href="#">短信平台</a></li>
					<li><a href="#">部门电话</a></li>
					<li><a href="#">校园交通</a></li>
				</ul>
			</div>
		</div> 
		
	<cms:Footer/>
	</div> 
</body>
</html>