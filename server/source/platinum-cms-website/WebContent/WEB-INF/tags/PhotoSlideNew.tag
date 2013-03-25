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

<% int i=1; %>
<ul id="${id}" class="PhotoSlide ${cssClass}">
<% for (PostEntity post : posts) {%>
<li id="post<%=i++ %>">
	<div class="bx-caption"><span><%= post.getTitle()%></span></div>
   	<a href="<%= post.getLink()%>">
     	  <% if (displayPhoto) {%>
      	  <img src='<%= post.getPhotoURL()%>'  height='250' />
     	  <% } %>
   	</a>
</li>
<% } %>
</ul>

<script>
	$(document).ready(function(){
		$('#tpxwMorelabel').css('opacity','0');
	});
	$('#tpxwMorelabel').hover(function(){$(this).css('opacity','0.8');},
			function(){$(this).css('opacity','0');
	});
</script>

<script src="static/common/scripts/lib/bxslider/jquery.bxslider.min.js" type="text/javascript"></script>
<script src="static/common/scripts/lib/bxslider/jquery.bxslider.js" type="text/javascript"></script>
<link href="static/common/scripts/lib/bxslider/jquery.bxslider.css" rel="stylesheet" />

<script>
	$(document).ready(function(){
		  $('.bxslider').bxSlider({
			  auto: true,
			  controls: true,
			  speed: 2000,
			  useCSS: true,
			  captions: true,
			  mode: 'fade'});
	});
</script>

