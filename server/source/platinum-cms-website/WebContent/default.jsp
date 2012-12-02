<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(60);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院欢迎您</title>

<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/home/css/home.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>

<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

</head>
<body>

    <cms:Header/>
	
	<!-- 正文内容 -->
	<div id = "content">
		<!-- left side -->
		<div id = "left">
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider">
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" categoryId="news" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
					
			<div id = "news">
				<span><img src = "/static/home/images/news.png" alt = ""/></span>
				<div id = "part1">
					<cms:PostList id="xwdtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000006" displayPhoto="true" count="3" />
				</div>
				
				<div id = "part2">
					<cms:PostList id="xwdtList2" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="6" />
					<p id = "position_2"><a href = "/news/sc000000000000000000000000000006/more/">更多...</a></p>
				</div>
			</div>
			
			<div id = "schoolnews">
				<span><img src = "/static/home/images/schoolnews.png" alt = ""/></span>
				<div id = "part1">
					<cms:PostList id="xydtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000020" displayPhoto="true" count="3" />
				</div>
				
				<div id = "part2">
					<cms:PostList id="xydtList2" subcategoryId="sc000000000000000000000000000020" where="photoURL is null" count="6" />
					<p id = "position_2"><a href = "/news/sc000000000000000000000000000020/more/">更多...</a></p>
				</div>				
			</div>			
		</div>
		<!-- left end -->
		
		<div id = "right">
			<!-- <div id = "topic">
				<span id = "position_1"><img src = "/static/home/images/topic.gif" alt = ""/></span>
				<p id = "position_2"><a href = "/news/more/">更多...</a></p>
				
				<div id = "right_part">
					<cms:PostList id="ztbdList" cssClass="PhotoSummaryList" categoryId="news" displaySummary="true" displayPhoto="true" count="3" />
				</div>				
			</div> -->
			
			<div id = "inform">
				<span id = "position_1"><img src = "static/home/images/inform.gif" alt = ""/></span>
				<p id = "position_2"><a href = "/news/more/">更多...</a></p>
					<cms:PostList id="tzggList" subcategoryId="sc000000000000000000000000000008" count="12" />				
			</div> 
			
			<div id = "fastPipe">
				<span id = "position_1"><img src = "static/home/images/fastpipe.gif" alt = ""/></span>
					
			</div>
			
			<div id = "video">
				<span id = "position_1"><img src = "/static/home/images/view.gif" alt = ""/></span>
                <div id = "medium">
                	<img style = "float: right;" src = "/static/home/images/movie.jpg" alt = ""/>
                </div>
			</div>
		</div>
		<!-- right end -->
	</div>
    
    
    <cms:Footer/>

</body>
</html>