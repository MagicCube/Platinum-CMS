<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/home/css/home.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<link href = "/static/xuegong/css/xuegong.css" rel = "stylesheet"/>

<title>学工处</title>
</head>
<body>

	<cms:Header path = "xuegong"/>

	<div id = "content">
		<div id = "mainContent">
                <div id = "gongNews">
                <span><img src = "/static/xuegong/images/gonggao.png"/></span>
          		<cms:PostList id = "ggtzlist" subcategoryId = "sc000000000000000000000000000028" count = "10"/>
                <span style = "float: right; margin-top: 5px;"><a href = "/xuegong/more/">更多...</a></span>
                </div>
                
                
			    <div id = "picNews">
				  <div id="browsable">
            			<div id="box">				
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000032" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
								
				    </div>
				</div>
			</div>
			<div id = "textNews">
                <span><img src = "/static/xuegong/images/gongshi.png"/></span>        		
        		<cms:PostList id = "gslmlist" subcategoryId = "sc000000000000000000000000000029" count = "10"/>         		
				 <span style = "float: right; margin-top: 5px;"><a href = "/xuegong/more/">更多...</a></span>
			</div>
			
			<div id = "informs">
	        <span><img src = "/static/xuegong/images/xinwen.png"/></span>			
          		<cms:PostList id = "xwdtlist" subcategoryId = "sc000000000000000000000000000030" count = "10"/>   		
				 <span style = "float: right; margin-top: 5px;"><a href = "/xuegong/more/">更多...</a></span>
			</div>
			
			<div id = "teaching">
			<span><img src = "/static/xuegong/images/xibu.png"/></span>
         		<cms:PostList id = "xbkxlist" subcategoryId = "sc000000000000000000000000000031" count = "10"/>         		
				 <span style = "float: right; margin-top: 5px;"><a href = "/xuegong/more/">更多...</a></span>
			</div>
              
            <div id = "email">
			<span><img src = "/static/xuegong/images/zhuanti.png"/></span>          		
          		<cms:PostList id = "ztbdlist" subcategoryId = "sc000000000000000000000000000032" count = "10"/>        		        		
            	 <span style = "float: right; margin-top: 5px;"><a href = "/xuegong/more/">更多...</a></span>
            </div>
            
      </div>	
</div>


	<cms:Footer path = "xuegong"/>


</body>
</html>