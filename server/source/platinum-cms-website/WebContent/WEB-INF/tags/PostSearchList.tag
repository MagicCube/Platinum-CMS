<%@tag import="platinum.cms.common.search.PostSearchResult"%>
<%@tag import="platinum.cms.common.search.PostSearchEngine"%>
<%@ tag import="platinum.common.util.DateUtil"%>
<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>
<%@ tag import="platinum.common.util.StringUtil"%>
<%@ tag import="platinum.cms.common.entity.PostEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="keyword" rtexprvalue="true"%>
<%@ attribute name="count" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="fragmentSize" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="pageSize" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="pageIndex" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="cssClass" rtexprvalue="true"%>
<%@ attribute name="openInNewWindow" rtexprvalue="true" type="java.lang.Boolean"%>
<%
if (count == null)
{
    count = 500;
}
if (fragmentSize == null)
{
	fragmentSize = 200;
}
if (pageSize == null)
{
    pageSize = 10;
}
if (pageIndex == null)
{
    pageIndex = 0;
}
if (openInNewWindow == null)
{
	openInNewWindow = true;
}
PostSearchEngine engine = PostSearchEngine.getInstance();
List<PostSearchResult> posts = engine.search(keyword, pageIndex, pageSize, count, fragmentSize);
%>
<ul id="${id}" class="PostList ${cssClass}">

<% if (posts.size() != 0) {%>
<% for (PostSearchResult post : posts) {%>
<li id="<%= post.getId()%>">
    <div>
        <a href="<%= post.getLink()%>" <%= openInNewWindow ? "target='_blank'" : ""%> >
            <span id="title"><%= post.getTitle()%></span>
        </a>
    </div>
    <span id="summary"><%= post.getSummary()%><span class="ellipsis">…</span></span>
    <span id="date"><%= DateUtil.formatDate(post.getUpdateTime(), "yyyy年M月d日") %></span>
</li>
<% } %>
<%} else {%>
<p style="margin-bottom: 20px; margin-top: 10px; color: gray;">对不起，没有查询到更多的结果。</p>
<%} %>

<% if (!(pageIndex == 0 && posts.size() == 0)) {%>
<div id="pageNavigationBar" class="PageNavigationBar">
    <span id="pageIndex">第<span>${pageIndex + 1}</span>页</span>
    <%if (pageIndex > 0) {%>
    | <a id="previousPage" href="?pageIndex=1&keyword=${keyword}">第一页</a>
    | <a id="previousPage" href="?pageIndex=${pageIndex}&keyword=${keyword}">&lt;上一页</a>
    <%} %>
    <% if (posts.size() == pageSize) {%>
    | <a id="nextPage" href="?pageIndex=${pageIndex + 2}&keyword=${keyword}">下一页&gt;</a>
    <%} %>
</div>
<%} %>
</ul>