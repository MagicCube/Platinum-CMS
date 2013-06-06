<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<script type="text/javascript" src="menu.js"></script>
<link href = "/mob/static/common/css/mobile.css" rel = "stylesheet"></link>





    <div class="s_header">
    	<div class="s_logo" >
    	   <div class="zblogo" onclick="location.href='';" ><img src="../mob/static/common/images/zblogoNEW.png"></div>
	    	  
        </div>
        
    </div>

  <div id="menu">
    <ul class="menu">
        <li style="margin-right:5px;"><a href="#" class="parent"><span class="denglu1">主 页</span><span class="denglu2">导 航</span></a>
            <div>
            	<ul>               
                	<li>
                		<a href="../mob/news"><span>新闻</span></a>
                	</li>
                	<li>
                		<a href="../mob/guide/"><span>办事指南</span></a>
                	</li>
                	
                	<li>
                		<a href="../mob/ditu/"><span>地图</span></a>
                	</li>
            	</ul>
            </div>
        </li>
        <!--<li><a href="#" class="parent"><span>登录</span></a>
            <div>
            	<ul style="padding-bottom:0;position:relative;width:180px;height:70px;">       
                	<li style="height:60px;width:60px;position:absolute;z-index:10000;left:0;">
                		<a style="width:100%;height:100%;padding:0;" href="http://zbvip.njnu.edu.cn/wap/">
                			<span style="padding:0;display:block;width:100%;height:100%;font-size:23px;line-height:60px;height:60px;text-align:center;font-family:'微软雅黑'';" >教师</span>
                		</a>
                	</li>
                	<li style="height:60px;width:60px;position:absolute;z-index:10000;left:75px;" class="denglu">
                		<a style="padding:0;width:100%;height:100%;" href="http://222.192.5.246/wap/">
                			<span  style="padding:0;display:block;width:100%;height:100%;font-size:23px;line-height:60px;height:60px;text-align:center;font-family:'微软雅黑'';" >学生</span>
                		</a>
               		</li>
            	</ul>
            </div>
        </li>-->
        <li style="margin-right:5px;"><a href="../mob/pic" class="parent"><span class="denglu1">校 园</span><span class="denglu2">美 景</span></a></li>
        <li style="margin-right:5px;"><a href="http://222.192.5.246/wap/" class="parent"><span class="denglu1">学 生</span><span class="denglu2">登 录</span></a></li>
        <li style="margin-right:5px;"><a href="http://zbvip.njnu.edu.cn/wap/" class="parent"><span class="denglu1">教 师</span><span class="denglu2">登 录</span></a></li>
        
        <!-- <li class="last">
        	<a href="../../"><span>PC版</span></a>
        </li> -->
        
    </ul>
</div>
  

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<cms:PostList id="xwdtList" categoryId='<%= request.getParameter("path")%>' count="5" />
	</div>
	<div id="bodyContent">
<%}%>
</div>
</div>