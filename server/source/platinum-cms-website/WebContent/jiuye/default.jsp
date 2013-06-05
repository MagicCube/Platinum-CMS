 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="中北学院 就业,南京师范大学中北学院就业指导,南京师范大学中北学院 就业">

<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<script src="/static/common/scripts/src/IE6.js" type="text/javascript"></script>
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="/static/xuegong/js/slide.js"></script>
<!-- FlexSlider end -->


<title>就业指导</title>
</head>
<body onload="jiuye()">
	
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
    	<a href="http://lm.jshrss.gov.cn/sy2010/main/" title="公共就业服务网" target="_blank" class="jiuyeLink" style="width:240px;"><img src="/static/jiuye/images/jshrss.gif" height="50" width="240" /></a>
    	<a href="http://www.51job.com/" title="前程无忧" target="_blank" class="jiuyeLink" style="width:120px;"><img src="/static/jiuye/images/51job.gif" height="50" width="120" /></a>    	
    	<a href="http://www.njrsrc.com/hrc/" title="南京人才市场" target="_blank" class="jiuyeLink" style="width:190px;"><img src="/static/jiuye/images/njrsrc.jpg" height="50" width="190" /></a>
    	<a href="http://www.njrsrc.com/" title="南京人事人才网" target="_blank" class="jiuyeLink" style="width:160px;"><img src="/static/jiuye/images/njrcw.gif" height="50" width="160" /></a>   	
    	<a href="http://www.91job.gov.cn/" title="江苏省高校招生就业指导服务中心，江苏省大学生信息服务中心" target="_blank" class="jiuyeLink" style="width:225px;padding:5px 0;height:40px;background-color:#FFF;"><img src="/static/jiuye/images/91job.gif" height="40" width="225" /></a>
    	<a href="http://www.szrc.cn/" title="苏州人才网" target="_blank" class="jiuyeLink" style="width:165px;padding:0 5px;background-color:#FFF;"><img src="/static/jiuye/images/szrc.gif" height="50" width="165" /></a>
    	<a href="http://www.wxrcw.com/" title="无锡人才服务网" target="_blank" class="jiuyeLink" style="width:250px;"><img src="/static/jiuye/images/wxrcw.gif" height="50" width="250" /></a>
    	<a href="http://www.kshr.com.cn/" title="昆山人才网" target="_blank" class="jiuyeLink" style="width:170px;"><img src="/static/jiuye/images/kshr.gif" height="50" width="170" /></a>
    	<a href="http://www.czrc.com.cn/" title="常州人才网" target="_blank" class="jiuyeLink" style="width:200px;"><img src="/static/jiuye/images/czrcw.gif" height="50" width="200" /></a>
    	<a href="http://www.ychr.com/" title="盐城人才网" target="_blank" class="jiuyeLink" style="width:140px;background-color:#FFF;"><img src="/static/jiuye/images/ychr.gif" height="50" width="140" /></a>
    </div>
          
	<cms:Footer path="jiuye"/>

</body>
</html>