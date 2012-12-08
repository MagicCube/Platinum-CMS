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

<!-- Calendar start -->
<link rel="stylesheet" href="/static/home/plugins/calendar/calendar.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/calendar/calendar.js"></script>
<!-- Calendar end -->

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
					<cms:PostList id="xwdtList2" cssClass="TextList" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="6" />
					<p id = "position_2"><a href = "/news/sc000000000000000000000000000006/more/">更多...</a></p>
				</div>
			</div>
			
			<div id = "schoolnews">
				<span><img src = "/static/home/images/schoolnews.png" alt = ""/></span>
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
				<span id = "position_1"><img src = "static/home/images/inform.gif" alt = ""/></span>
				<p id = "position_2"><a href = "/news/sc000000000000000000000000000008/more/">更多...</a></p>
				<div id="part2" style="width:360px; margin: 0;">
					<cms:PostList id="tzggList" cssClass="TextList" subcategoryId="sc000000000000000000000000000008" count="12" />				
				</div>
			</div> 
			
			<!-- <div id = "fastPipe">
				<span id = "position_1"><img src = "static/home/images/fastpipe.gif" alt = ""/></span>
				<ul>
					<li><a href="http://zbvip.njnu.edu.cn/">教工之家</a></li>
					<li><a href="http://222.192.5.246/(khvomn45dim5kn3kj4t0gh55)/default2.aspx">教务系统</a></li>
				</ul>
				<ul>	
					<li><a href="/jiaowu/">教学科研</a></li>
					<li><a href="/xuegong/">学生工作</a></li>
				</ul>
				<ul>
					<li><a href="/zuzhi/">组织人事</a></li>
					<li><a href="#">招生录取</a></li>
				</ul>
				<ul>
					<li><a href="/technology/402881e93b60b9e7013b60bc1d8d0002.html">软研中心</a></li>
					<li><a href="http://web.mobset.com/index.html">短信平台</a></li>
				</ul>	
			</div> -->
			
			<div id="plugins">
				<div id="weather-plugins">
					 <iframe src="http://m.weather.com.cn/m/pn5/weather.htm " width="200" height="40" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
					 <iframe src="" width=70 height=20 frameborder=0 scrolling=no allowTransparency=true></iframe>
					<!-- <iframe style="float: right;" src="http://m.weather.com.cn/m/pn11/weather.htm " width="374px" height="80px" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe> -->
				</div>
				<div id="calendar-plugins">
					<div class="block_calendar">
                            <div class="calendar" id="calendar_sidebar">
                            </div>
                            
                            <script type="text/javascript">
								var today = new Date();
								var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
								$('#calendar_sidebar').DatePicker({
									flat : true,
									date : date,
									calendars : 1,
									starts : 1,
									locale : {
										days : ['星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期天'],
										daysShort : ['日', '一', '二', '三', '四', '五', '六', '天'],
										daysMin : ['日', '一', '二', '三', '四', '五', '六', '天'],
										months : ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
										monthsShort : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
										weekMin : 'wk'
									}
								});
							</script>
                        </div>
				</div>
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