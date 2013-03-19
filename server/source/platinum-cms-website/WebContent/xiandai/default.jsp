<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院欢迎您</title>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>

<link href = "/static/xiandai/css/common.css" rel = "stylesheet"></link>
<link href = "/static/xiandai/css/xiandai.css" rel = "stylesheet"></link>
</head>
<body>
 <cms:Header path = "xiandai"/>
<div id = "Xcontent">
		<div id = "mainContent">
			<div id = "picNews">
				<div id="browsable">
			<div id="box">
            <!-- begin of block_home_slider -->
			 <div class="block_home_slider">
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000195" displayPhoto="true" count="4" />
                            	<script src="../static/common/scripts/lib/bxslider/jquery.bxslider.min.js" type="text/javascript"></script>
								<script src="../static/common/scripts/lib/bxslider/jquery.bxslider.js" type="text/javascript"></script>
								<script>
								$(document).ready(function(){
		  							$('.slides').bxSlider({
			 			 				auto: true,
			  							controls: false,
			  							speed: 1000,
			  							useCSS: true,
			  							captions: true,
			  							mode: 'fade'});
									});
								</script>
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
				</div>
				</div>
			</div>
			<div id = "textNews">
				<span><img src = "/static/xiandai/image/fuwu.png"/></span>
				<cms:PostList id = "fwznlist" subcategoryId="sc000000000000000000000000000191" count="9" />
          		<div id = "more1" align = "right">
          			<a href = "/xiandai/sc000000000000000000000000000191/more/"  target="_blank">更多...</a>
          		</div>	  
			</div>
            
            
            
			<div id = "informs">
				<span><img src = "/static/xiandai/image/zhongxin.png"/></span>
				<cms:PostList id = "zxdtlist" subcategoryId="sc000000000000000000000000000194" count="8" />
          		<div id = "more1" align = "right">
          			<a href = "/xiandai/sc000000000000000000000000000194/more/"  target="_blank">更多...</a>
          		</div>	          
			</div>
            
            
			<div id = "teaching">
				<span><img src = "/static/xiandai/image/kuaisu.png"/></span>
				<a class="kslink" href="http://morning.njnu.edu.cn/" target="_blank">
					<img src="../static/faculty/common/images/qingchenwang.png" width="194" height="45"/>
				</a>
				<a class="kslink" href="http://sun.njnu.edu.cn/" target="_blank">
					<img src="../static/faculty/common/images/sun.png" width="194" height="45"/>
				</a>
				<a class="kslink" href="http://3434.njnu.edu.cn/" target="_blank">
					<img src="../static/faculty/common/images/deifenyuan.png" width="194" height="45"/>
				</a>
				<a class="kslink" href="http://jwc.njnu.edu.cn/" target="_blank">
					<img src="../static/faculty/common/images/jinlinyuan.png" width="194" height="45"/>
				</a>
			</div>
            
            
            <div id = "redian">
				<span><img src = "/static/xiandai/image/rexian.png"/></span>
				<span class="reTitle">新北区办公室</span>
				<strong class="reNum" id="fenge" style="padding-left:15px;">025-87721056</strong>
				<span class="reTitle">老北区办公室</span>
				<strong class="reNum" style="padding-left:15px;">025-87721054</strong>
			</div>



		</div>
		
	</div>
		<cms:Footer path = "xiandai"/>
</body>
</html>