<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<%
request.setCharacterEncoding("utf-8");
%>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/static/common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/960.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/text.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/index.css"/>
<script src="/static/common/scripts/src/IE6.js" type="text/javascript"></script>
<script src="/static/common/scripts/src/IE6Check.js" type="text/javascript"></script>

<div id="header" class="container_16">
	<div id="tips">
    	<div id="topLink">
        	<span><a href="#">网站地图</a></span><span class="fenge">|</span>
            <span><a href="/introduce/12345679be9e6b7a00002be9e6b7a0d.html">联系我们</a></span><span class="fenge">|</span>
            <span><a href="service/ff8081813be18002013be18e03250002.html">其他链接</a></span>
        </div>
    </div>
	<div id="banner"><img src="/static/common/newimages/banner.jpg" width="960" height="222"/></div>
    <div id="homemenu">
    	<div id="menuUp">
        <ul id="up" style="width:100%;height:5px;">
        	<li style="width:5px;"></li>
        	<li style="width:53px;background-color:#AAEB1F;"></li>
            <li style="width:94px;"></li>
        	<li class="menuUpList"></li>
            <li class="menuUpList"></li>
            <li class="menuUpList"></li>
            <li class="menuUpList"></li>
            <li class="menuUpList"></li>
            <li class="menuUpList"></li>
            <li class="menuUpList"></li>
            <li class="menuUpList"></li>
        </ul>
        </div>
        <ul id="middleul">
        	<li id="menuLeft" style="width:5px;"></li>
            <li id="indexItem" style="width:53px;font-weight:bold;background-image:url(/static/common/newimages/menubg.jpg);"><a href="/" style="color:#414141;">首页</a></li>
            <!--<li style="width:53px;font-weight:bold;background-color:#4BA61B;"><a href="">首页</a></li>-->
            <li id="xxgk">
            	<a href="#">学院概况</a>
            </li>
            <li class="li101">
            	<a href="#">部门机构</a>
            </li>
            <li class="li101">
            	<a href="#">教学科研</a>
            </li>
            <li class="li101">
            	<a href="#">学生工作</a>
            </li>
            <li class="li101">
            	<a  href="/zuzhi" target="_blank">组织人事</a>
            </li>
            <li class="li101">
            	<a href="#">招生就业</a>
            </li>
            <li class="li101">
            	<a href="#">交流合作</a>
            </li>
            <li class="li101">
            	<a href="#">公共服务</a>
            </li>
            <li class="li101">
            	<a href="#">技术支持</a>
            </li>
        </ul>
    </div>
    <div id="headerEnd"></div>
</div>



<div id="MainBox">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<div id = "sideBarin">
		<div id = "title_style"><strong>要文回顾</strong><span style= "float: right;"><a href = "/news/more/">更多...</a></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' count="9" />
		<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' subcategoryId="rank" count="9" />
		</div>
	</div>
<%}%>
