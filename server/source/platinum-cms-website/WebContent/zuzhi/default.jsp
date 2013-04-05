<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>组织人事处</title>

<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/home/css/home.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="../static/xuegong/js/slide.js"></script>
<!-- FlexSlider end -->

<link href="/static/zuzhi/css/zuzhi.css" rel = "stylesheet"></link>

</head>
<body>
	
	<cms:Header path = "zuzhi"/>
	
	<div id = "maincontent">
			<div id = "inform">
				<span><img src="/static/zuzhi/images/inform.gif"/></span>
				<cms:PostList id = "ggtzlist" subcategoryId="sc000000000000000000000000000040" count="10" />
				<div id = "nice"><a href = "/zuzhi/sc000000000000000000000000000040/more/" style ="font-size: 12px;" title="点击显示更多"></a></div>
			</div>
			<div id = "pic">
				<div id="browsable">
            			<div id="box">
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000205" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
            			</div>
            	</div>
			</div>
			
			<div id = "activity">
				<span><img src = "/static/zuzhi/images/activity.gif"/></span>
				<cms:PostList id = "zzhdlist" subcategoryId="sc000000000000000000000000000041" count="10" />
				<div id = "niceR"><a href = "/zuzhi/sc000000000000000000000000000041/more/" style ="font-size: 12px;" title="点击显示更多"></a></div>
			</div>
			
			<div id = "box-bottom">
				<div id = "boxContent">
					<div id = "policy">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "zcfglist" subcategoryId="sc000000000000000000000000000042" count="10" />
						<div id = "nice"><a href = "/zuzhi/sc000000000000000000000000000042/more/" style ="font-size: 12px;" title="点击显示更多"></a></div>
					</div>
					
					<div id = "download">
						<span><img src = "/static/zuzhi/images/download.gif"/></span>
						<cms:PostList id = "zlxzlist" subcategoryId="sc000000000000000000000000000043" count="10" />				
						<div id = "nice"><a href = "/zuzhi/sc000000000000000000000000000043/more/" style ="font-size: 12px;" title="点击显示更多"></a></div>
					</div>
					
					<div id = "outline">
						<span><img src = "/static/zuzhi/images/outline.gif"/></span>
						<cms:PostList id = "ffznlist" subcategoryId="sc000000000000000000000000000044" count="10" />
						<div id = "nice"><a href = "/zuzhi/sc000000000000000000000000000044/more/" style ="font-size: 12px;" title="点击显示更多"></a></div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<cms:Footer path = "zuzhi"/>
	
</body>
</html>