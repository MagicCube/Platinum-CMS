<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib tagdir="/WEB-INF/tags" prefix="cms"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园美景</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<style type="text/css">
	#maincontent img
	{
		height: 250px;
		width: 300px;
		float: left;
		margin: 10px 10px 0 10px;
		border: 3px #ddd solid;
	}
</style>

</head>
<body>
	<cms:Header/>
		<div id="maincontent" style="height: 800px;">
			<img src="/static/common/images/1.jpg"/>
			<img src="/static/common/images/2.jpg"/>
			<img src="/static/common/images/3.jpg"/>
			<img src="/static/common/images/4.jpg"/>
			<img src="/static/common/images/5.jpg"/>
			<img src="/static/common/images/6.jpg"/>
			<img src="/static/common/images/7.jpg"/>
			<img src="/static/common/images/8.jpg"/>
			<img src="/static/common/images/9.jpg"/>
		</div>
	<cms:Footer/>
</body>
</html>