<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/static/guoji/css/960.css"/>
<link rel="stylesheet" type="text/css" href="/static/guoji/css/normal.css"/>
<link rel="stylesheet" type="text/css" href="/static/guoji/css/main.css"/>
<script src="/static/guoji/js/jquery.js" type="text/javascript"></script>
<script src="/static/guoji/js/soChange.js" type="text/javascript"></script>
<title>南京师范大学中北学院-对外发展合作与办公室</title>
</head>
<body>
	<cms:Header path = "guoji"/>
	
<!--正文开始-->
<div id="indexContent" class="container_16">
    	<div id="tzgg" class="grid_4">
        	<div id="tzggTitle">
            	<span>通知公告</span>
                <a href="/guoji/sc000000000000000000000000000312/more/">more>></a>
            </div>
            <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="205" scrollamount="1" style="height:270px;">
            	<cms:guojiPostList id="tzggUl" cssClass="tzggLi" subcategoryId="sc000000000000000000000000000312" where="photoURL is null"  count="20" />
            </marquee>
        </div>
        
        <cms:guojinewsPhotoSlide id="tpxw" cssClass="grid_8" subcategoryId="sc000000000000000000000000000316" displayPhoto="true" count="4" />
        
        <div id="cylj" class="grid_4">
        	<div id="cyljTitle">
            	<span>常用链接</span>
            </div>
            <div class="subTitle">友情链接</div>
            <ul style="padding-bottom:5px;height:105px;">
            	<li class="linkContent">
                	<a href="http://shanghai-ch.usembassy-china.org.cn/" target="_blank">美国领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">英国领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">德国领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">日本领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">江苏省外办</a>
                </li>
            </ul>
            
        </div>
    </div>
<!--正文结束-->
	
	<cms:Footer path = "guoji"/>
</body>
</html>