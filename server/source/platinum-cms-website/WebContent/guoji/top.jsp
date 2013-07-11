<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>

	<div id="header" class="container_16">
    	<div id="headerLogo">
        	<div id="logoimage"></div>
        </div>
        <div id="big_frame" class="frame">
    		<ul class="headerUi list"  id="big_list">
        		<li id="headerLiFirst">
                	<a href="#"><img src="/static/guoji/images/image1.jpg" width="960" height="210"/></a>
                </li>
            	<li>
                	<a href="#"><img src="/static/guoji/images/image2.jpg" width="960" height="210"/></a>
                </li>
            	<li>
                	<a href="#"><img src="/static/guoji/images/image3.jpg" width="960" height="210"/></a>
                </li>
            	<li>
                	<a href="#"><img src="/static/guoji/images/image4.jpg" width="960" height="210"/></a>
                </li>
            	<li>
                	<a href="#"><img src="/static/guoji/images/image5.jpg" width="960" height="210"/></a>
                </li>
            	<li>
                	<a href="#"><img src="/static/guoji/images/image6.jpg" width="960" height="210"/></a>
                </li>
        	</ul>
        </div>
        <ul id="menu">
        	<li class="menuli index"><a href="/guoji">首页</a></li>
            <li class="fenge"></li>
            <li class="menuli four"><a href="#">工作宗旨</a></li>
            <li class="fenge"></li>
            <li class="menuli project"><a href="#">海外学习计划</a></li>
            <li class="fenge"></li>
            <li class="menuli six"><a href="#">短期交流活动</a></li>
            <li class="fenge"></li>
            <li class="menuli four"><a href="#">资料下载</a></li>
            <li class="fenge"></li>
            <li class="menuli four"><a href="#">联系我们</a></li>
            <li class="fenge"></li>
            <li class="menuli six"><a href="#">我的留学生活</a></li>
        </ul>
    </div>  
	<link rel="stylesheet" type="text/css" href="/static/guoji/css/960.css"/>
	<link rel="stylesheet" type="text/css" href="/static/guoji/css/normal.css"/>
	<link rel="stylesheet" type="text/css" href="/static/guoji/css/main.css"/>
	<script src="/static/guoji/js/index.js" type="text/javascript"></script>
    <script src="/static/guoji/js/slide.js" type="text/javascript" ></script>
<!--菜单结束-->


<div id = "bodyContent">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<div id = "sideBarin">
		<div id = "title_style"><strong>要文回顾</strong><span style= "float: right;"><a href = "/news/more/" target="_blank">更多...</a></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' count="9" />
		<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' subcategoryId="rank" count="9" />
		</div>
	</div>
<%}%>