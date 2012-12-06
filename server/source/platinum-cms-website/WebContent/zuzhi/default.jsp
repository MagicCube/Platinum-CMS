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
<!-- FlexSlider end -->

<link href="/static/zuzhi/css/zuzhi.css" rel = "stylesheet"></link>

</head>
<body>
	
	<cms:Header path = "zuzhi"/>
	
	<div id = "maincontent">
			<div id = "inform">
				<span><img src="/static/zuzhi/images/inform.gif"/></span>
				<cms:PostList id = "ggtzlist" cssClass="TextList" subcategoryId="sc000000000000000000000000000040" count="7" />
				<div id = "nice"><a href = "/zuzhi/more/" style ="font-size: 12px;">更多...</a></div>
			</div>
			<div id = "pic">
				<div id="browsable">
            			<div id="box">
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000040" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
            			</div>
            	</div>
			</div>
			
			<div id = "activity">
				<span><img src = "/static/zuzhi/images/activity.gif"/></span>
				<cms:PostList id = "zzhdlist" cssClass="TextList" subcategoryId="sc000000000000000000000000000041" count="7" />
				<div id = "nice"><a href = "/zuzhi/more/" style ="font-size: 12px;">更多...</a></div>
			</div>
			
			<div id = "box-bottom">
				<div id = "boxContent">
					<div id = "policy">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "zcfglist" cssClass="TextList" subcategoryId="sc000000000000000000000000000042" count="7" />
						<div id = "nice"><a href = "#" style ="font-size: 12px;">更多...</a></div>
					</div>
					
					<div id = "download">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "zlxzlist" cssClass="TextList" subcategoryId="sc000000000000000000000000000043" count="7" />				
						<div id = "nice"><a href = "/zuzhi/more/" style ="font-size: 12px;">更多...</a></div>
					</div>
					
					<div id = "outline">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "ffznlist" cssClass="TextList" subcategoryId="sc000000000000000000000000000044" count="7" />
						<div id = "nice"><a href = "/zuzhi/more/" style ="font-size: 12px;">更多...</a></div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<cms:Footer path = "zuzhi"/>
	
</body>
</html>