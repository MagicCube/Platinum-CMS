<%@page import="platinum.cms.common.PostType"%>
<%@page import="platinum.common.util.DateUtil"%>
<%@page import="platinum.cms.common.entity.PostEntity"%>
<%@page import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<%
String id = request.getParameter("id");
String categoryId = request.getParameter("categoryId");
PostRuntimeManager postManager = PostRuntimeManager.getInstance();
PostEntity post = postManager.getPost(id, categoryId);
if (post == null)
{
    response.setStatus(404);
    return;
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title><%= post.getTitle()%></title>
    <link rel="stylesheet" href="/mob/static/common/css/basic.css"/>
    <link rel="stylesheet" href="/mob/static/common/css/post.css"/>
    <link rel="stylesheet" href="/mob/static/common/css/mobile.css"/>
    <link rel="stylesheet" href="/mob/static/common/css/common.css"/>
    <script src="/mob/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
    <!-- <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=" type="text/javascript" charset="utf-8"></script> -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 强制让文档的宽度与设备的宽度保持1:1，并且文档最大的宽度比例是1.0，且不允许用户点击屏幕放大浏览 -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 告诉设备忽略将页面中的数字识别为电话号码  -->
<meta name="format-detection" content="telephone=no" /> 


</head>

<body>

  <cms:Header path="mob/news"></cms:Header>

<cms:PostDetail id="postDetail" postId="<%= id%>" categoryId="<%= categoryId%>"></cms:PostDetail>

<cms:Footer></cms:Footer>

</body>
</html>