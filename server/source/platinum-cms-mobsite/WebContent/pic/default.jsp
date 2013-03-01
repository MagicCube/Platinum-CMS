<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>南京师范大学中北学院信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 强制让文档的宽度与设备的宽度保持1:1，并且文档最大的宽度比例是1.0，且不允许用户点击屏幕放大浏览 -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 告诉设备忽略将页面中的数字识别为电话号码  -->
<meta name="format-detection" content="telephone=no" /> 
<link href="static/common/css/mobile.css" rel="stylesheet" type="text/css" />
<link href = "/static/common/css/home.css" rel = "stylesheet"></link>
<script type="text/javascript" src="static/common/scripts/dload.js"></script>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>


<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->


<style  type="text/css" >
.pictrues ul{margin-top:15px;}
.pictrues ul li{height:90px; width:140px; padding:13px 0; float:left; margin-right:10px; text-align:center; font-size:0;}
.pictrues ul li img{height:100%;vertical-align:middle;width:90%;}

</style>


</head>
<body>
  <cms:Header path="guide"></cms:Header>
  <h1>当前位置：@<a href="../">首页</a>@校园美景</h1>

<div class="pictrues">

<script src="/static/common/scripts/lib/album/jquery.album.js"></script>
	
    <div id = "maincontent" style = "height: 660px; background: none;">
    
    <cms:PostList  id="album" subcategoryId="sc000000000000000000000000000003" displayPhoto="true" count="18"/>

	<div id = "maincontent" style = "height: 660px; background: none;">
    
   

    <script>
    $("#album")
        .album({
            cellWidth: 320,
            cellHeight: 210,
            padding: 10
        })
        .height(221 * 3);
    </script>
    </div>
</div>

  <cms:Footer path="pic"></cms:Footer>
</body>
</html>
