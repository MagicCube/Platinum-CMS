<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="cms"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>交流合作</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>

</head>
<body>
	<cms:Header/>
	<div id="mainbody">
		<h2>海外交流合作</h2>
		<p style = "color: #3399CC; font-size: 14px;">更新日期： 2012/10/16</p>
		<p>根据南京师范大学“十一五”事业发展规划中关于促进在校学生海外学习计划的要求， 积极鼓励在校学生赴海外大学进行学习，为学生提供海外交流、体验生活、扩大视野、增加就业机会， 同时作为南京师范大学本科教学改革创新项目之一。南京师范大学中北学院目前已和国外五所大学在工商管理、 金融学、国际商务、艺术设计、电子信息工程、计算机科学与技术等相关专业实施“海外学习计划”。</p>
		<cms:PostList id="hzjllist"  categoryId="sc000000000000000000000000000184" displayPhoto="true" displaySummary = "true" count="2"/>
	</div>
	<cms:Footer/>
</body>
</html>