<%@ tag import="platinum.common.util.DateUtil"%>
<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>
<%@ tag import="platinum.common.util.StringUtil"%>
<%@ tag import="platinum.cms.common.entity.PostEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
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

<link rel="stylesheet" type="text/css" href="static/common/scripts/lib/bxslider/demo.css" />
<link rel="stylesheet" type="text/css" href="static/common/scripts/lib/bxslider/style.css" />
<script type="text/javascript" src="static/common/scripts/lib/bxslider/modernizr.custom.53451.js"></script>
<div class="${cssClass}" >
<% for (PostEntity post : posts) {%>
   	<a href="<%= post.getLink()%>">
     	  <% if (displayPhoto) {%>
      	  <img src='<%= post.getPhotoURL()%>' title='<%= post.getTitle()%>'  width='476' height='296'/>
      	  <div><%= post.getTitle()%></div>
     	  <% } %>
   	</a>
<% } %>
</div>
<nav>	
	<span class="dg-prev">&lt;</span>
	<span class="dg-next">&gt;</span>
</nav>

<script src="static/common/scripts/lib/bxslider/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="static/common/scripts/lib/bxslider/jquery.gallery.js" type="text/javascript"></script>
<script type="text/javascript">
			$(function() {
				$('#dg-container').gallery({
					autoplay	:	true
				});
			});
</script>





