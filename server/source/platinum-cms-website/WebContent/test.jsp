<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="/static/common/css/common.css"/>
    <link rel="stylesheet" href="/static/home/css/default.css"/>
    <script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
</head>
<body>
<div id="home" class="page">

<cms:PostList id="newsList" categoryId="news" subcategoryId="rank"/>

</div>
</body>
</html>