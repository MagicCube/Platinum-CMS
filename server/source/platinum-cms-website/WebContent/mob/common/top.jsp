<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>





<script type="text/JavaScript" src="/mob/static/common/scripts/CloudCarousel.1.0.5.js" ></script>
<script type="text/JavaScript" src=" /mob/static/common/scripts/jquery.mousewheel.js "></script><!--鼠标滚动插件-->
<script type="text/javascript">




$(document).ready(function(){
						   
	// 这初始化容器中指定的元素，在这种情况下，旋转木马.
	$("#carousel1").CloudCarousel({			
		xPos:250,
		yPos:110,
		buttonLeft: $('#but1'),
		buttonRight: $('#but2'),
				
		FPS:20,
		reflHeight:20,
		reflGap:2,
		yRadius:30,
		autoRotateDelay: 12,
		speed:0.2,
		mouseWheel:true,
		bringToFront:true
	});
	
});
</script>




<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>






    <div class="s_header">
    	<div class="s_logo" >
    	   <div class="zblogo" onclick="location.href='';" ><img src="../mob/static/common/images/zblogo.jpg"></div>
	    	  
        </div>
        
    </div>

  <div class="menu">
 
  	<table cellpadding="0" cellspacing="0">
    	<tr align="center">
				<!--  <td><a class="i_news" href="../mob/../news/" target="_news"><span><font color="yellow" >新闻</font></span></a></td>
				<td><a class="i_moive" href="../mob/guide/"><span>办事指南</span></a></td>
				<td><a class="i_map" href="../mob/pic/"><span>美丽校园</span></a></td>  -->
	
				   <div id="carousel1"> 
	
		<a class="i_news" onclick="location.href='../../mob/news/';" ><img class="cloudcarousel"   src="../mob/static/common/images/NEWS.png" /></a>
		<a class="i_news" onclick="location.href='../../mob/guide/';" ><img class="cloudcarousel"  src="../mob/static/common/images/guide.jpg" /></a>
		
		<a class="i_news" onclick="location.href='../../mob/pic/';" ><img class="cloudcarousel"  src="../mob/static/common/images/view.jpg"></a>
		<a class="i_news" onclick="location.href='../../mob/ditu/';" ><img class="cloudcarousel"  src="../mob/static/common/images/ditu.jpg"></a>
		
		<a class="i_news" onclick="location.href='../../mob/Shake/';" ><img class="cloudcarousel" src="../mob/static/common/images/yaoyiyao.jpg"></a>
		<a class="i_news" onclick="location.href='http://zbvip.njnu.edu.cn/wap';" ><img class="cloudcarousel" src="../mob/static/common/images/teacher.jpg"></a>
		
		
		<a class="i_news" onclick="location.href='http://222.192.5.246/wap';" ><img class="cloudcarousel"  src="../mob/static/common/images/student.jpg"></a>
		
		<div id="but1" class="carouselLeft"></div>
		<div id="but2" class="carouselRight"></div> 
	</div><!--carousel1 end-->
			
				
			
				
				
	    </tr>
      </table>   
        
  </div>
  

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<cms:PostList id="xwdtList" categoryId='<%= request.getParameter("path")%>' count="5" />
	</div>
	<div id="bodyContent">
<%}%>