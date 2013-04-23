<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>南京师范大学中北学院信息门户（移动版）</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 强制让文档的宽度与设备的宽度保持1:1，并且文档最大的宽度比例是1.0，且不允许用户点击屏幕放大浏览 -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 告诉设备忽略将页面中的数字识别为电话号码  -->
<meta name="format-detection" content="telephone=no" /> 
<link href="mob/static/common/css/mobile.css" rel="stylesheet" type="text/css" />
<link href="/static/common/css/css.css" rel="stylesheet" type="text/css" />
<link href = "/mob/static/common/css/home.css" rel = "stylesheet"></link>
<script type="text/javascript" src="mob/static/common/scripts/dload.js"></script>
<script src = "/mob/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<script type="text/javascript">


$("aa").ready(function(){ $('#aa > div > div:eq(0)').show();

$("#aa > div > h3").click(function(){
	 
    if(false == $(this).next().is(':visible')) {
        $('#aa > div > div').slideUp(300);
    }
    $(this).next().slideToggle(300);
});

	 
    if(false == $(this).next().is(':visible')) {
        $('#aa > div > div').slideUp(300);
    }
    $(this).next().slideToggle(300);
    $('#aa > div > div:eq(0)').show();
});
 



</script>



<!-- FlexSlider start -->
<link rel="stylesheet" href="/mob/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/mob/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->
</head>
<body id="q" >
  <cms:Header></cms:Header>
  
   
  <!-- 正文内容 -->
  <div class="notice_front">        
<h3><span class="left">中北动态</span></h3>
  <div id="news">
   <!-- 幻灯片切换部分 -->
			 <div class="block_home_slider" >
                   <div id="home_slider" class="flexslider" >
                        <cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000207" displayPhoto="true" count="4" />
                   </div>                        
             </div>
 
  <!-- 幻灯片切换部分 end-->

  
  
  <div style="border-top:#239b8b 1px solid; border-bottom:#ddd 1px solid;" >
<h3><span class="left">中北快讯大观园</span> <span id = "position_2"><a href = "/mob/news/sc000000000000000000000000000008/more/"><font color="#239b8b">更多</font></a></span>  </h3></div>
 
  <!-- 中北快讯大观园 -->
  <div class="r_con02_front" id="aa">
       <div class="info">
  	          <h3>通知公告<span id = "position_2" class="right"><a href = "/mob/news/sc000000000000000000000000000020/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
  	 	      <div  class="front">
    	      <cms:PostList id="xydtList2" subcategoryId="sc000000000000000000000000000008" where="photoURL is null" count="4" />
    	      </div>
       </div>
      
      <div class="info">
  	          <h3>校园动态<span id = "position_2" class="right"><a href = "/mob/news/sc000000000000000000000000000020/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
  	 	      <div  class="front">
    	      <cms:PostList id="xydtList2" subcategoryId="sc000000000000000000000000000020" where="photoURL is null" count="4" />
    	      </div>
       </div>
      
       <div class="info">
   	        <h3>新闻动态<span id = "position_2" class="right"><a href = "/mob/news/sc000000000000000000000000000006/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
   	        <div  class="front">
   		    <cms:PostList id="xwdtList2" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="4" />
   	       </div>
       </div>
       <div class="info">
  	          <h3>学工新闻<span id = "position_2" class="right"><a href = "/mob/news/sc000000000000000000000000000028/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
  	 	      <div  class="front">
    	      <cms:PostList id="xydtList2" subcategoryId="sc000000000000000000000000000028" where="photoURL is null" count="4" />
    	      </div>
       </div>
       
       <div class="info">
  	          <h3>教务新闻<span id = "position_2" class="right"><a href = "/mob/news/sc000000000000000000000000000046/more/"><font size="2px" color="#239b8b">更多</font></a></span></h3>
  	 	      <div  class="front">
    	      <cms:PostList id="xydtList2" subcategoryId="sc000000000000000000000000000046" where="photoURL is null" count="4" />
    	      </div>
       </div>
  
  
  
  
  
  </div> 
  
  
  <!--中北快讯大观园end-->
   
  </div>       
  </div>
  
  <cms:Footer></cms:Footer>
</body>
</html>
