<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<link href = "/static/jiuye/css/joplink.css" rel = "stylesheet"/>
<link href = "/static/jiuye/css/common.css" rel = "stylesheet"></link>

<title>就业指导</title>
</head>
<body>
	
	 <cms:Header path="jiuye"/>
	 
    	<div id = "mainContent">
    		<div id = "workNews" class="UL" >
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000146" count = "9"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000146/more/">更多...</a></span>
             
            </div>
   
         
			<div id="picNews" >
				<div id="browsable">
            		<div id="box">
						<!-- begin of block_home_slider -->
			 			<div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000147" displayPhoto="true" count="4" />
                            </div>                       
             			</div>
						<!-- end of block_home_slider-->
            		</div>
            	</div>
            </div>
			
		    <div id = "emNews" class="UL" >
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000146" count = "9"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000148/more/">更多...</a></span>
             
            </div>
            
            <div id = "zfNews" class="UL" >
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000146" count = "9"/>
               	 <span class = "m_More2"><a href = "/jiuye/sc000000000000000000000000000149/more/">更多...</a></span>
             
            </div>
            
            <div id = "zyghNews" class="UL" >
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000146" count = "9"/>
               	 <span class = "m_More2"><a href = "/jiuye/sc000000000000000000000000000150/more/">更多...</a></span>
             
            </div>
    
    
            <div id = "jyzdNews" class="UL" >
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000146" count = "9"/>
               	 <span class = "m_More2"><a href = "/jiuye/sc000000000000000000000000000151/more/">更多...</a></span>
             
            </div>
        
            
            
            
		
		
    	</div>
    	
    </div>
	
	
	
	
	
	<cms:Footer path="jiuye"/>

</body>
</html>