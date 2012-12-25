<%@ tag import="platinum.common.util.DateUtil"%>
<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>
<%@ tag import="platinum.common.util.StringUtil"%>
<%@ tag import="platinum.cms.common.entity.PostEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="categoryId" rtexprvalue="true"%>
<%@ attribute name="subcategoryId" rtexprvalue="true"%>
<%@ attribute name="where" rtexprvalue="true"%>
<%@ attribute name="displayPhoto" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="count" required="true" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="cssClass" rtexprvalue="true"%>
<%
if (displayPhoto == null)
{
	displayPhoto = false;
}

PostRuntimeManager manager = PostRuntimeManager.getInstance();
List<PostEntity> posts = null;
if (StringUtil.notNullOrEmpty(subcategoryId))
{
	posts = manager.loadLatestPostsBySubcategory(subcategoryId, displayPhoto, where, count);
}
else if (StringUtil.notNullOrEmpty(categoryId))
{
	posts = manager.loadLatestPostsByCategory(categoryId, displayPhoto, where, count);
}
%>
<script src="/static/common/scripts/src/dynamicPic.js" type="text/javascript"></script>


<div id="box">
    <ul id="${id}" class="list ${cssClass}">
    	<%for(PostEntity post : posts) {%>
    	<li class="current">
	      	<% if (displayPhoto) {%>
	       	  	<img src='<%= post.getPhotoURL()%>' />
	      	<% } %>
      	  	<a href="<%= post.getLink()%>" class ="title" style = "color: #fff;">
      	  		<%= post.getTitle()%>
      	  	</a>
    	</li>
    	<% }%>
 	</ul>
 	<ul class="count">
		<li class="current">1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
 	</ul> 
  </div>

