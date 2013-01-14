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


<ul id="${id}" >
<% for (PostEntity post : posts) {%>
<li>
   	<a href="<%= post.getLink()%>">
     	  <% if (displayPhoto) {%>
      	  <img src='<%= post.getPhotoURL()%>' title='<%= post.getTitle()%>'  width='500' height='350'/>
     	  <% } %>
   	</a>
</li>
<% } %>
</ul>


<link href="static/common/scripts/lib/bxslider/accordion.css" rel="stylesheet"  media="screen"/>
<script src="static/common/scripts/lib/bxslider/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="static/common/scripts/lib/bxslider/jquery.kwicks-1.5.1.js" type="text/javascript"></script>


<script>
	$().ready(function() {
	 	$('#accordion-slider').kwicks({
	 		max : 500,
	 		spacing : 0
	 	});
	});
</script>


