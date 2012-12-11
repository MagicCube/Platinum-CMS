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
				<span><img src = "/static/home/images/news.gif" alt = ""/></span>
				<div id = "part1">
					<cms:PostList id="xwdtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000006" displayPhoto="true" count="3" />
				</div>
				
				<div id = "part2">
					<cms:PostList id="xwdtList2" cssClass="TextList" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="6" />
					<p id = "position_2"><a href = "/news/sc000000000000000000000000000006/more/">更多...</a></p>
				</div>
			</div>
			
			<div id = "schoolnews">
				<span><img src = "/static/home/images/college.gif" alt = ""/></span>
				<div id = "part1">
					<cms:PostList id="xydtList1" cssClass="PhotoList" subcategoryId="sc000000000000000000000000000020" displayPhoto="true" count="3" />
				</div>
				
				<div id = "part2">
					<cms:PostList id="xydtList2" cssClass="TextList" subcategoryId="sc000000000000000000000000000020" where="photoURL is null" count="6" />
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
				<span id="position_1"><img src="static/home/images/inform.gif" alt = ""/></span>
				<p id = "position_2"><a href = "/news/sc000000000000000000000000000008/more/">更多...</a></p>
				<div id="part2" style="width:360px; margin: 0;">
					<cms:PostList id="tzggList" cssClass="TextList" subcategoryId="sc000000000000000000000000000008" count="12" />				
				</div>
			</div> 
			
			<div id = "fastPipe">
				<span id="position_1"><img src="static/home/images/commonlink.gif" alt = ""/></span>
				<div id="box_test">
				<ul>
					<li><a href="http://zbvip.njnu.edu.cn/">教工之家</a></li>
					<li><a href="http://222.192.5.246/(khvomn45dim5kn3kj4t0gh55)/default2.aspx">教务系统</a></li>
				</ul>
				<ul>	
					<li><a href="/jiaowu/">教学科研</a></li>
					<li><a href="/xuegong/">学生工作</a></li>
				</ul>
				<ul>
					
					<li><a href="#">招生录取</a></li>
					<li><a href="/technology/402881e93b60b9e7013b60bc1d8d0002.html">校园交通</a></li>
				</ul>
				<ul style="margin-bottom: 15px;">
					<li><a href="/zuzhi/">部门电话</a></li>
					
					<li><a href="http://web.mobset.com/index.html">短信平台</a></li>
				</ul>
				</div>	
			</div>

				</div>
			</div>
			
			<div id = "video">
				<span id = "position_1"><img src = "/static/home/images/view.gif" alt = ""/></span>
                <div id = "medium">
                	<a href="/introduce/view.jsp"><img style = "float: right;" src = "/static/home/images/movie.jpg" alt = "校园美景" title="校园美景"/></a>
                </div>
			</div>
		</div>
		<!-- right end -->
	</div>
    
    
    <cms:Footer/>

</body>
</html>