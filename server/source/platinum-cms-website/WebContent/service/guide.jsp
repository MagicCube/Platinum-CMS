<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>办事指南</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<style>
h2{
 font-size:12pt; font-weight:bold;font-family:"微软雅黑";text-align:center; 	
}
</style>
</head>
<body>
	<cms:Header/>
		<div id = "maincontent" style = "height: 500px;">
			<div id = "layoutleft" >
				<img src = "/static/service/images/guide.jpg" height = 200; width = 250px;/>
			</div>
			<div id = "rightside">
				<h2>办事指南</h2>
				<cms:PostList id="bsznlist" cssClass="TextList" subcategoryId="sc000000000000000000000000000019" count="10"/>
				<span style="float:right; margin-right: 120px;"><a href="/service/sc000000000000000000000000000019/more/">更多...</a></span>
			</div>		
		</div>
		
	<cms:Footer/>
</body>
</html>