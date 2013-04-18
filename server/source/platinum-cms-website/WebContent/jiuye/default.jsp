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
<script type="text/javascript" src="/static/xuegong/js/slide.js"></script>
<!-- FlexSlider end -->


<title>就业指导</title>
</head>
<body>
	
	 <cms:Header path="jiuye"/>
	 
    	<div id = "mainContent">
    		<div id = "workNews">
    			<span><img src="/static/jiuye/images/gzdt.jpg"/></span>
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000146" count = "8"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000146/more/"> </a></span>
            </div>
            
			<div id="browsable">
					<!-- begin of block_home_slider -->
			 		<div class="block_home_slider" >
                    	<div id="home_slider" class="flexslider">
                            <cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000147" displayPhoto="true" count="4" />
                         </div>                     
             		</div> 
						<!-- end of block_home_slider-->
            </div>
            
            <div id = "emNews">
          		<span><img src="/static/jiuye/images/zpxx.jpg"/></span>
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000148" count = "8"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000148/more/"> </a></span>
            </div>
            
            <!-- <div style="height: 1px; width: 915px; position: absolute; top: 290px; background: #fff; left: 45px;"></div> -->
            
            <div id = "zfNews">
            	 <span><img src="/static/jiuye/images/zysygh.jpg"/></span>
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000150" count = "8"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000150/more/"> </a></span>
             
            </div>
            
            <!--<div id = "zyghNews">
            	  <span><img src="/static/jiuye/images/jyzd.jpg"/></span>
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000151" count = "8"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000151/more/"> </a></span>
            	
            </div> -->
            <div id="union">
            	<script language="javascript" src="http://meeting.91job.gov.cn/job-window.asp?school=13906"></script>
            </div>
     
            <!--<div id = "jyzdNews">
            	 <span><img src="/static/jiuye/images/zcfg.jpg"/></span>
               	 <cms:PostList id = "gzdtlist" subcategoryId = "sc000000000000000000000000000149" count = "8"/>
               	 <span class = "m_More"><a href = "/jiuye/sc000000000000000000000000000149/more/"> </a></span>
            </div>-->   
          </div>
    <div id="jiuyeLink">
    	<a href="http://lm.jshrss.gov.cn/sy2010/main/" target="_blank" class="jiuyeLink" style="width:240px;"><img src="/static/jiuye/images/jshrss.gif" height="50" width="240" /></a>
    	<a href="http://www.51job.com/" target="_blank" class="jiuyeLink" style="width:120px;"><img src="/static/jiuye/images/51job.gif" height="50" width="120" /></a>    	
    	<a href="http://www.chinajob.gov.cn/" target="_blank" class="jiuyeLink" style="width:190px;"><img src="/static/jiuye/images/chinajob.jpg" height="50" width="190" /></a>
    	<a href="http://www.yingjiesheng.com/" target="_blank" class="jiuyeLink" style="width:160px;"><img src="/static/jiuye/images/yjs.gif" height="50" width="160" /></a>   	
    	<a href="http://www.91job.gov.cn/" target="_blank" class="jiuyeLink" style="width:225px;padding:5px 0;height:40px;"><img src="/static/jiuye/images/91job.gif" height="40" width="225" /></a>
    </div>
          
	<cms:Footer path="jiuye"/>

</body>
</html>