<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>
<%@ tag import="platinum.common.util.StringUtil"%>
<%@ tag import="platinum.cms.common.entity.PostEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="categoryId" rtexprvalue="true"%>
<%@ attribute name="subcategoryId" rtexprvalue="true"%>
<%@ attribute name="count" required="true" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="cssClass" rtexprvalue="true"%>
<%
PostRuntimeManager manager = new PostRuntimeManager();
List<PostEntity> posts = null;
if (StringUtil.notNullOrEmpty(categoryId))
{
    posts = manager.loadLatestPostByCategory(categoryId, count);
}
else if (StringUtil.notNullOrEmpty(subcategoryId))
{
    posts = manager.loadLatestPostBySubcategory(subcategoryId, count);
}
%>
<ul id="${id}" class="PostList ${cssClass}">
<% for (PostEntity post : posts) {%>
<li><a href="<%= post.getLink()%>"><span><%= post.getTitle()%></span></a></li>
<% } %>
</ul>