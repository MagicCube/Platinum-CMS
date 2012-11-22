<%@page import="platinum.cms.common.entity.SubcategoryEntity"%>
<%@page import="platinum.cms.runtime.service.CategoryRuntimeManager"%>
<%@page import="platinum.cms.common.entity.CategoryEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

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
    <link rel="stylesheet" href="/static/common/css/basic.css"/>
    <link rel="stylesheet" href="/static/common/css/more.css"/>
    <script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
    <!-- <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=" type="text/javascript" charset="utf-8"></script> -->
</head>

<body>

<cms:Header path="<%= categoryId%>" displaySideBar="true"/>
    <div id="more">
        <cms:CategoryNavigationBar id="categoryNavigationBar" categoryId="<%= categoryId%>" subcategoryId="<%= subcategoryId%>"></cms:CategoryNavigationBar>
    	<cms:PostList id="postList" subcategoryId="<%= subcategoryId%>" categoryId="<%= categoryId%>" displayDate="true" pageIndex='<%= Integer.parseInt(request.getParameter("pageIndex")) - 1%>' pageSize="20"/>
    </div>
<cms:Footer path="<%= categoryId%>"/>
</body>
</html>