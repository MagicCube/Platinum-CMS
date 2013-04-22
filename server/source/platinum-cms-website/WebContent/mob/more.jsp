<%@page import="platinum.cms.common.entity.SubcategoryEntity"%>
<%@page import="platinum.cms.runtime.service.CategoryRuntimeManager"%>
<%@page import="platinum.cms.common.entity.CategoryEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<%
String categoryId = request.getParameter("categoryId");
String subcategoryId = request.getParameter("subcategoryId");
if (subcategoryId != null && subcategoryId.equals(""))
{
    subcategoryId = null;
}

CategoryEntity category = CategoryRuntimeManager.getInstance().getCategory(categoryId);
if (category == null)
{
    response.setStatus(404);
    return;
}

SubcategoryEntity subcategory = null;

if (subcategoryId != null)
{
    subcategory = CategoryRuntimeManager.getInstance().getSubcategory(subcategoryId);
    if (subcategory == null)
    {
        response.setStatus(404);
        return;
    }
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title></title>
    <link rel="stylesheet" href="/mob/static/common/css/basic.css"/></link>
    <link rel="stylesheet" href="/mob/static/common/css/more.css"/></link>
    <link href = "/mob/static/common/css/css.css" rel = "stylesheet"></link>
    <link href = "/mob/static/common/css/post.css" rel = "stylesheet"></link>
    <script src="/mob/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
    <!-- <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=" type="text/javascript" charset="utf-8"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 强制让文档的宽度与设备的宽度保持1:1，并且文档最大的宽度比例是1.0，且不允许用户点击屏幕放大浏览 -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 告诉设备忽略将页面中的数字识别为电话号码  -->
<meta name="format-detection" content="telephone=no" /> 

</head>

<body>

<cms:Header path="mob/news" displaySideBar="flase"/>
    <div id="more">

      	<cms:CategoryNavigationBar id="categoryNavigationBar" categoryId="<%= categoryId%>" subcategoryId="<%= subcategoryId%>"></cms:CategoryNavigationBar>
    	<cms:PostList id="postList" subcategoryId="<%= subcategoryId%>" categoryId="<%= categoryId%>" displayDate="true" pageIndex='<%= Integer.parseInt(request.getParameter("pageIndex")) - 1%>' pageSize="20"/>
    </div>

<cms:Footer />

</body>
</html>