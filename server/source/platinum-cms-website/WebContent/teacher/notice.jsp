<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib tagdir = "/WEB-INF/tags"  prefix = "cms" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/common/css/post.css" rel = "stylesheet"></link>
<link href = "/static/common/css/normal.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>

</head>
<body>
<cms:Header/>	
	
	<cms:PostDetail id="postDetail" postId="ff8081813b46b724013b470c22840029" categoryId="teacher"></cms:PostDetail>

<cms:Footer/>
</body>
</html>