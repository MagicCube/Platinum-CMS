<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>南京师范大学中北学院 软件班</title>
	<link rel="stylesheet" href="/static/ruanyan/css/ruanyan.css" type="text/css" />   
	<link rel="stylesheet" href="/static/ruanyan/css/common.css" type="text/css" />
	
</head>
<body>

		<cms:Header path="ruanyan" ></cms:Header>
		
		
	
		<div id = "bodyContent">
			<div id = "mainContent">	 
	 	 		<cms:PostList id="mainPost" cssClass = "MainPost" subcategoryId ="sc000000000000000000000000000164" displayPhoto="true" displaySummary = "true" count="1"></cms:PostList>
	    	</div>
	    </div>
	    
		 
		</div>
		<cms:Footer path="ruanyan"></cms:Footer>


</body>
</html>