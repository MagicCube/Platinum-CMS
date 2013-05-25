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
<!-- saved from url=(0067)http://211.65.211.222/service/ff8081813d0a549d013d0c4f31b30002.html -->
<html xmlns:wb="http://open.weibo.com/wb"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
<head>
<meta name="author" content="">
<meta name="keywords" content="中北学院,南师大中北学院,中北,南京师范大学中北学院">
<meta name="description" content="南京师范大学中北学院是经国家教育部批准，由南京师范大学和南京师范大学教育发展基金会共同举办的独立学院。学院坐落于南京紫金山东麓的仙林大学城内，与南京师范大学仙林校区比肩而立。中北学院自1999年建院以来，秉承百年老校——南京师范大学优良的办学传统和先进的教育理念......">
<meta name="robots" content="all">

    <title>移动版体验 - 南京师范大学中北学院</title>
    <link rel="stylesheet" href="/static/common/css/basic.css">
    <link rel="stylesheet" href="/static/common/css/post.css">
    <script src="./mobile_files/jquery.js" type="text/javascript"></script>
	<link type="text/css" rel="stylesheet" href="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/style.css"><script type="text/javascript" charset="utf-8" src="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/page_context.js"></script><script type="text/javascript" charset="utf-8" src="./mobile_files/extension.js"></script></head>
</head>
<body>
		<cms:Header1/>
		
		<div id="MainBox" style="height:1000px;;">

<div id="postDetail" class="PostDetail INFORMATION" style="position:relative;">
   
    
        <div id="imageContent" style="float:left;">
            
            <img src="./mobile_files/8221246542015890.jpg">
            
        </div>
        <div id="textContent" style="padding:0; position:absolute; top:0px;left:0px;">
            <div id="content" style="margin:0; padding:0;">
            	<div style="width:497px; height:676px; background-image:url(mobile_files/IPhone.jpg); position:relative; margin:250px 0 auto 80px;">
					<iframe src="/mob" name="Button" id="ifrmid" scrolling="auto" frameborder="0" marginheight="0" marginwidth="0" style="display:block; width:300px; height:400px; position:absolute;top:145px;left:99px;"></iframe>
				</div>
				<div style="width:165px;height:66px;background-image:url(mobile_files/AndroidLogo.jpg);position:absolute;top:20px;left:150px;"></div>
            	<div style="width:178px;height:178px;position:absolute;top:95px;left:155px;">
            		<img src="mobile_files/qrcode.png" width="141" height="141" style="margin:0;padding:2px;border:5px solid #468d00;">
            	</div>
            	<div style="width:165px;height:66px;background-image:url(mobile_files/TongyongLogo.jpg);position:absolute;top:20px;left:345px;"></div>
            	<div style="width:178px;height:178px;position:absolute;top:95px;left:350px;">
            		<img src="mobile_files/qrcodety.png" width="141" height="141" style="margin:0;padding:2px;border:5px solid #468d00;">
            	</div>
            </div>
          </div>
    
	</div>
	</div>
	</div>
<script>
	if($('#textContent').length>0) $('#postDetail').css('width','990px');
	if($('#imageContent').length>0) {$('#content').css('border','0'); $('#postDetail').css('border-right','0');}
</script>

	<cms:Footer/>
	
	
</body>
</html>