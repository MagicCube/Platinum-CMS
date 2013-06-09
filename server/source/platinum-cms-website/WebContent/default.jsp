<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
  
<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(60);
request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<cms:Meta/>
<title>南京师范大学中北学院欢迎您</title>
<script type = "text/javascript" >
function Tab()
{
    if(event.keyCode==13 && // 13表示Enter键
       event.srcElement.type!="submit" )
    {
　    event.keyCode=9;      // 9表示Tab键
    }
}
</script>
</head>
<body onload="onload()" onkeydown ="Tab()">
	<cms:Header/>
    <!--主页内容-->
    <div id="indexContent" class="container_16">
    	<div class="grid_4" id="upLeft">
        	<div id="search">
        		<!--<div id="searchTitle">本站搜索</div>-->
        		<div id="searchContent">
        			<form id="searchForm" action="/search" method="get">
						<div id="searchline"><input type="text" id="searchField" name="keyword" value="输入搜索关键字" onfocus="search(1,this);" onblur="search(2,this);"></div>
						<input type="submit" id="searchBtn" value="搜">
					</form>
        		</div>
        	</div>
            <div id="jgHome">
            	<div id="jgTitle">教工之家</div>
            	<form target="_blank" accept-charset="GB2312" name="Login" action="http://zbvip.njnu.edu.cn/vip/Admin_ChkLogin.asp" method="post" target="_parent" onsubmit="document.charset='GB2312';">        
            	<ul id="jgContent">
            		<li class="jgList" style="margin-bottom:2px;">
            			<div class="jgPic" style="background-image:url(/static/common/newimages/userpic.jpg);"></div>
            			<div class="jgOut"><input name="UserName" type="text" class="jgInput"></div>
            		</li>
            		<li class="jgList" style="margin-bottom:2px;">
            			<div class="jgPic" style="background-image:url(/static/common/newimages/pwpic.jpg);"></div>
            			<div class="jgOut"><input name="Password" type="password" class="jgInput"></div>
            		</li>
            		<li class="jgList" style="height:34px;">
            			<div id="yanzheng">验证码:</div>
            			<div class="jgOut" style="width:93px;height:23px;float:left;margin-left:0;margin-top:3px;">
            				<input name="CheckCode" style="width:91px;height:21px;"class="jgInput">
            			</div>
            		</li>
            		<li class="jgList" style="height:35px;">
            			<input name="Submit" id="jgSubmit" type="submit" value="" >
 						<img src="http://zbvip.njnu.edu.cn/vip/inc/code.asp" width="60" height="25" border="0" align="absmiddle" onclick="javascript:this.src='http://zbvip.njnu.edu.cn/vip/inc/code.asp?'+Math.random();">           		
            		</li>
            	</ul>
            	</form>
            </div>
        </div>
        <div class="grid_6" id="upMiddle">
        	<cms:newPhotoSlide id="tpxwInner" cssClass="frame" subcategoryId="sc000000000000000000000000000006" displayPhoto="true" count="4" />	
        </div>
        <div class="grid_6" id="upRight">
        	<div id="schoolTitle">
        		<div id="schoolTitleLeft">新闻动态</div>
        		<a id="schoolMore" href="/news/sc000000000000000000000000000006/more/">更多>></a>
        	</div>
        	<cms:newPostList id="text_school" subcategoryId="sc000000000000000000000000000006" count="10" />
        </div>
        <div class="grid_4" id="downLeft">
        	<div id="tzggTitle">通知与公告</div>
        	<cms:newPostList id="text_inform" subcategoryId="sc000000000000000000000000000008" where="photoURL is null"  count="8" />
        	<a id="tzggMore" href="/news/sc000000000000000000000000000008/more/">更多>></a>
        </div>
        <div class="grid_6" id="downMiddle">
        	<div id="xydtTitle"><span>校园动态</span></div>
            <div id="xydtContent">
            	<cms:newPostList id="xwTextContent" subcategoryId="sc000000000000000000000000000020"     count="9" />
            	<div id="newsMore"><a href="/news/sc000000000000000000000000000020/more/">更多>></a></div>
            </div>
        </div>
        <div class="grid_6" id="downRight">
        	<div id="xyfc">
        		<div id="xyfcTitle">
        			<div id="xyfcTitleLeft">校园风采</div>
        			<div class="clickInto"><a href="/introduce">点击进入</a></div>
        		</div>       		
        		<cms:fcaiPostList id="xyfcContent" subcategoryId="sc000000000000000000000000000003"  displayPhoto="true"  count="4" />        		
        	</div>
            <div id="cylj">
            	<div id="cyljTitle">
            		<div id="cyljTitleLeft">常用链接</div>
        			<div class="clickInto"><a href="/service/ff8081813be18002013be18e03250002.html">点击进入</a></div>
        		</div>
        		<ul>
        			<li><a class="cyljLeft" href="http://222.192.5.246/">教务系统</a><a href="/service/ff8081813b6fee04013b6ff158fb0008.html">校园交通</a><a href="http://web.mobset.com/index.html">短信平台</a></li>
        			<li><a class="cyljLeft" href="/service/ff8081813b6fee04013b6ff3a36c0017.html">办公电话</a><a href="https://mail.njnu.edu.cn/">邮件在线</a><a href="/service/ff8081813d105c17013d10deb9cc0002.html">班车时刻</a></li>
        		</ul>
            </div>
        </div>
    </div>
    <!-- <div class="container_16" style="height:15px; background-color:#FFF;"></div>-->
    <!--主页内容结束-->
    <cms:Footer/>
</body>
</html>
