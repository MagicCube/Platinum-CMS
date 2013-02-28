<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<title>中北学院新闻资讯网</title>
<link href="static/common/css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>  
  <cms:Header path="news"></cms:Header>
  <div class="info">
    <h3>专题报导<span id = "position_2" class="right"><a href = "/news/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
    	<div  class="front">
   		 <cms:PostList id="ztbdList" cssClass="PhotoSummaryList" categoryId="news" displayDate="ture" displaySummary="flase" displayPhoto="true" count="4" />
   	    </div>
  </div>
  <div class="info">
   	<h3>新闻动态<span id = "position_2" class="right"><a href = "/news/sc000000000000000000000000000006/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
   	   <div  class="front">
   		<cms:PostList id="xwdtList2" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="8" />
   	   </div>
  </div>
  <div class="info">
  	 <h3>校园动态<span id = "position_2" class="right"><a href = "/news/sc000000000000000000000000000020/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
  	 	<div  class="front">
    	<cms:PostList id="xydtList2" subcategoryId="sc000000000000000000000000000020" where="photoURL is null" count="8" />
    	</div>
  </div>
  <cms:Footer></cms:Footer>
    
</body>
</html>
