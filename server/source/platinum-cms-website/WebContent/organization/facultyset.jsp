<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="cms"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系部设置</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
</head>
<body>
	<cms:Header/>
	
	<div id = "mainbody" style = "height: 500px;">
		<div id = "maincontent" style = "height: 500px;">
			<div id = "layoutleft" >
				<img src = "/static/common/images/department.jpg" height = 200; width = 250px;/>
			</div>
			<div id = "layoutright">
				<h2>部门设置</h2>
				<p style = "color: #3399CC; font-size: 14px;">更新日期： 2012/10/16</p>
				<ul>
					<li><a href = "/xinxi/">信息科学与技术系</a></li>
 					<li><a href = "/jingguan/">经济与管理系</a></li>
					<li><a href = "/gongguan/">公共管理系</a></li>
					<li><a href = "/renwen/">人文系</a></li>
					<li><a href = "/waiyu/">外语系</a></li>
					<li><a href = "/gongxue/">工学系</a></li>
					<li><a href = "/meishu/">美术系</a></li>
					<li><a href = "/yinyue/">音乐系</a></li>
					<li><a href = "/qianghua/">强化部</a></li>
				</ul>		
			</div>		
		</div>
	</div>	
		
		
	<cms:Footer/>
</body>
</html>