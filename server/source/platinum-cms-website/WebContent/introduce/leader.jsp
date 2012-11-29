<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags"  prefix = "cms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>领导简介</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/college/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
</head>
<body>
	<cms:Header/>
		<div id = "maincontent" style = "height: 700px;">
			<div id = "layoutleft" >
				<img src = "/static/college/images/leader.jpg" height = 200; width = 250px;/>
			</div>
			<div id = "layoutright">
				<h2>南京师范大学中北学院领导简介</h2>
				<p style = "color: #3399CC; font-size: 14px;">更新日期： 2012/10/16</p>
				<table>
					<tr>
						<td>院 长:</td>
						<td><a href = "">赵仁康</a></td>
					</tr>
					<tr>
						<td>书 记:</td>
						<td><a href = "">沈勇</a></td>
					</tr>
					<tr>
						<td>副院长：</td>
						<td><a href = "">张亚梅</a></td>
					</tr>
					<tr>
						<td>副院长:</td>
						<td><a href = "">偰伟林</a></td>
					</tr>
					<tr>
						<td>副院长:</td>
						<td><a href = "">杨作东</a></td>
					</tr>
					<tr>
						<td>副书记:</td>
						<td><a href = "">彭 海</a></td>
					</tr>
				</table>
			</div>		
		</div>
		
	<cms:Footer/>
</body>
</html>