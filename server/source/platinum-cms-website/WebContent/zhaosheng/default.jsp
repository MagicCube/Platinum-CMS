<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院招生就业</title>


<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>

<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->
<script type="text/javascript" src="home.js"></script>

<link href = "/static/zhaosheng/css/zhaosheng.css" rel = "stylesheet"></link>
<link href = "/static/zhaosheng/css/common.css" rel = "stylesheet"></link>

</head>
<body>
<cms:Header path = "zhaosheng"/>
<div id = "content">
		<div id = "mainContent">
			<div id = "picNews">
				<div id="browsable">
            			<div id="box">
            			<!-- begin of block_home_slider -->
			 <div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000179" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
            			</div>
				</div>
			</div>
			<div id = "textNews">
				<span><img src = "/static/zhaosheng/image/daodu.png"/></span>
				<cms:PostList id = "zxddlist" subcategoryId="sc000000000000000000000000000176" count="7" />
          		<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000176/more/">更多...</a>
          		</div>
			</div>
			<div id = "informs">
				<span><img src = "/static/zhaosheng/image/zhaosheng.png"/></span>
				<cms:PostList id = "zxddlist" subcategoryId="sc000000000000000000000000000172" count="7" />
          		<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000172/more/">更多...</a>
          		</div>	
			</div>
			<div id = "teaching">
				<span><img src = "/static/zhaosheng/image/zhengce.png"/></span>
				<cms:PostList id = "zcjzlist" subcategoryId="sc000000000000000000000000000173" count="7" />
				<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000173/more/">更多...</a>
          		</div>
			</div>
            <div id = "redian">
				<span><img src = "/static/zhaosheng/image/redian.png"/></span>
				<cms:PostList id = "rdddlist" subcategoryId="sc000000000000000000000000000177" count="7" />
				<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000177/more/">更多...</a>
          		</div>
			</div>
            <div id = "zhuanye">
				<span><img src = "/static/zhaosheng/image/zhuanye.png"/></span>
				<cms:PostList id = "rdddlist" subcategoryId="sc000000000000000000000000000175" count="7" />
				<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000175/more/">更多...</a>
          		</div>
			</div>
            <div id = "jiangzhu">
				<span><img src = "/static/zhaosheng/image/jiangzhu.png"/></span>
				<cms:PostList id = "rdddlist" subcategoryId="sc000000000000000000000000000174" count="7" />
				<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000174/more/">更多...</a>
          		</div>
			</div>
            <div id = "zhuanti">
				<span><img src = "/static/zhaosheng/image/zhuanti.png"/></span>
				<cms:PostList id = "rdddlist" subcategoryId="sc000000000000000000000000000178" count="7" />
				<div id = "more1" align = "right">
          			<a href = "/zhaosheng/sc000000000000000000000000000178/more/">更多...</a>
          		</div>
			</div>
		</div>
		
	</div>
		<cms:Footer path = "zhaosheng"/>
</body>
</html>