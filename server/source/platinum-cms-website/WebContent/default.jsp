<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/cms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
</head>
<body>

<cms:PostList id="newsList" categoryId="news" count="5"/>
<cms:PostList id="politicsList" categoryId="politics" count="5"/>
<cms:PostList id="activitiesList" categoryId="activities" count="5"/>

</body>
</html>