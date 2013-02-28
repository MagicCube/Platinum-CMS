<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>南京师范大学中北学院信息门户（移动版）</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 强制让文档的宽度与设备的宽度保持1:1，并且文档最大的宽度比例是1.0，且不允许用户点击屏幕放大浏览 -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 告诉设备忽略将页面中的数字识别为电话号码  -->
<meta name="format-detection" content="telephone=no" /> 
<link href="static/common/css/mobile.css" rel="stylesheet" type="text/css" />
<link href = "/static/common/css/home.css" rel = "stylesheet"></link>
<script type="text/javascript" src="static/common/scripts/dload.js"></script>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>


</head>
<body>
  <cms:Header path="guide"></cms:Header>
        <h1>当前位置：><a href="../">首页</a>>办事指南</h1>
        <hr></hr> 
  <div class="r_con02_front">
  <cms:PostList id="tzggList" subcategoryId="sc000000000000000000000000000019" count="7"/>
  </div>
  

  
  <cms:Footer></cms:Footer>
</body>
</html>
