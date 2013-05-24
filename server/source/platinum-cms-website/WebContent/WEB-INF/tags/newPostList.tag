<%@ tag import="platinum.common.util.DateUtil"%>
<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>
<%@ tag import="platinum.common.util.StringUtil"%>
<%@ tag import="platinum.cms.common.entity.PostEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="categoryId" rtexprvalue="true"%>
<%@ attribute name="subcategoryId" rtexprvalue="true"%>
<%@ attribute name="where" rtexprvalue="true"%>
<%@ attribute name="displaySummary" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="displayPhoto" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="displayDate" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="count" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="pageSize" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="pageIndex" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="displayPageNavigationBar" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="cssClass" rtexprvalue="true"%>
<%@ attribute name="openInNewWindow" rtexprvalue="true" type="java.lang.Boolean"%>
<%
if (displayPhoto == null)
{
	displayPhoto = false;
}
if (count == null)
{
    count = Integer.MAX_VALUE;
}
if (pageSize == null)
{
    pageSize = 0;
}
if (pageIndex == null)
{
    pageIndex = 0;
}
if (displayPageNavigationBar == null)
{
    displayPageNavigationBar = (pageSize > 0);
}
if (openInNewWindow == null)
{
	openInNewWindow = false;
}
if (displayDate == null)
{
	displayDate = false;
}
	
PostRuntimeManager manager = PostRuntimeManager.getInstance();
List<PostEntity> posts = null;
if (StringUtil.notNullOrEmpty(subcategoryId))
{
    if (subcategoryId.equals("rank"))
    {
        if (pageSize > 0 || displayPageNavigationBar)
        {
            throw new RuntimeException("在“排行榜”模式下不允许使用分页。");
        }
        if (displayPhoto)
        {
        	throw new RuntimeException("在“排行榜”模式下不允许指定 displayPhoto 参数为 true。");
        }
        if (StringUtil.notNullOrEmpty(where))
        {
        	throw new RuntimeException("在“排行榜”模式下不允许指定 where 参数。");
        }
        
        if (count == 0 || count == Integer.MAX_VALUE)
        {
            count = 10;
        }
        if (StringUtil.isNullOrEmpty(categoryId))
        {
        	categoryId = "news";
        }
        posts = manager.loadTopPostsByCategory(categoryId, count);
    }
    else if (pageSize == 0)
    {
	    posts = manager.loadLatestPostsBySubcategory(subcategoryId, displayPhoto, where, count);
    }
    else
    {
        posts = manager.loadLatestPostsBySubcategory(subcategoryId, displayPhoto, where, pageIndex, pageSize);  
    }
}
else if (StringUtil.notNullOrEmpty(categoryId))
{
    if (pageSize == 0)
    {
	    posts = manager.loadLatestPostsByCategory(categoryId, displayPhoto, where, count);
    }
    else
    {
        posts = manager.loadLatestPostsByCategory(categoryId, displayPhoto, where, pageIndex, pageSize);
    }
}
%>
<ul id="${id}" class="PostList ${cssClass}">
<% for (PostEntity post : posts) {%>
<li id="<%= post.getId()%>">
	<div class="listIcon"></div>
    <a href="<%= post.getLink()%>" <%= openInNewWindow ? "target='_blank'" : ""%> title="<%= post.getTitle()%><%="\n更新时间："+DateUtil.formatDate(post.getCreateTime(), "yyyy年M月d日") %>" >
        <% if (displayPhoto) {%>
        <img src='<%= post.getPhotoURL()%>' />
        <% } %>
        <div id="title"><%= post.getTitle()%></div>
        <% if (displaySummary != null && displaySummary) {%>
        <div id="summary"><%= post.getSummary()%></div>
        <% } %>
    </a>
    <%if (displayDate) {%>
    <span id="date">[<%= DateUtil.formatDate(post.getCreateTime(), "yyyy年M月d日") %>]</span>
    <%} %>
</li>
<% } %>
<% if (displayPageNavigationBar) {%>
<cms:PageNavigationBar id="pageNavigationBar" pageIndex="<%= pageIndex%>" pageSize="<%= pageSize%>" displayNextButton="<%= posts.size() == pageSize%>"/>
<% }%>
</ul>

<script>
if($('#side').length > 0) 
	$('#more').css('min-height','480px');
	$('#more .PostList').css('min-height','430px');
</script>
