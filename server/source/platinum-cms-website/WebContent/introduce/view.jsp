<%@page import="platinum.cms.common.entity.SubcategoryEntity"%>
<%@page import="platinum.cms.runtime.service.CategoryRuntimeManager"%>
<%@page import="platinum.cms.common.entity.CategoryEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="cms"%>

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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园美景</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<link rel="stylesheet" href="/static/common/scripts/lib/album/album.css"/>
</head>
<body>
	<cms:Header/>
	<script src="/static/common/scripts/lib/album/jquery.album.js"></script> 
	
    <div id = "maincontent" style = "height: 660px; background: none;">
    	
    	<cms:PostList id="album" subcategoryId="sc000000000000000000000000000003" categoryId="<%= categoryId%>" displayDate="true" pageIndex='<%= Integer.parseInt(request.getParameter("pageIndex")) - 1%>' pageSize="3"/>
  
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
	<cms:Footer/>
</body>
</html>