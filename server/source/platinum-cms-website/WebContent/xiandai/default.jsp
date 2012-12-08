<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院欢迎您</title>
<link href = "/static/xiandai/css/common.css" rel = "stylesheet"></link>
<link href = "/static/xiandai/css/xiandai.css" rel = "stylesheet"></link>



<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
</head>
<body>
 <cms:Header path = "xiandai"/>
<div id = "content">
		<div id = "mainContent">
			<div id = "picNews">
				<div id="browsable">
			<div id="box">
            <!-- begin of block_home_slider -->
			 <div class="block_home_slider">
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000195" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
				</div>
				</div>
			</div>
			<div id = "textNews">
				<span><img src = "/static/xiandai/image/fuwu.png"/></span>
				<cms:PostList id = "fwznlist" subcategoryId="sc000000000000000000000000000191" count="9" />
          		<div id = "more" align = "right">
          			<a href = "/xiandai/sc000000000000000000000000000191/more/" style = "color: #000000;" target="_blank">...更多</a>
          		</div>	  
			</div>
            
            
            
			<div id = "informs">
				<span><img src = "/static/xiandai/image/zhongxin.png"/></span>
				<cms:PostList id = "zxdtlist" subcategoryId="sc000000000000000000000000000194" count="8" />
          		<div id = "more" align = "right">
          			<a href = "/xiandai/sc000000000000000000000000000194/more/" style = "color: #000000;" target="_blank">...更多</a>
          		</div>	          
			</div>
            
            
			<div id = "teaching">
				<span><img src = "/static/xiandai/image/kuaisu.png"/></span>
				
			</div>
            
            
            <div id = "redian">
				<span><img src = "/static/xiandai/image/rexian.png"/></span>
				
			</div>



		</div>
		
	</div>
		<cms:Footer path = "xiandai"/>
</body>
</html>