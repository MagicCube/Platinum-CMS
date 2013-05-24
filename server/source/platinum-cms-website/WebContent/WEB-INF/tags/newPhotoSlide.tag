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
        	<div id="${id}">
        		<div id="big_frame" class="${cssClass}">
 					<ul id="big_list" class="list">
 					<% for (PostEntity post : posts) {%>
  						<li id="list<%=i++%>">
  							<a href="<%= post.getLink()%>"><img src="<%= post.getPhotoURL()%>" width="100%" height="100%"></a>
  							<div class="tpxwText">
  								<div class="tpxwTitle"><%= post.getTitle()%></div>
  								<div class="tpxwJianjie"><p><%= post.getSummary()%></p></div>
  							</div>
  						</li>
  					<% } %>
 					</ul>
				</div>
				<div id="small_frame" class="l_frame">
					<div id="newsPre">
						<div id="newsPreButton"></div>
					</div>
 					<ul id="small_list" class="list">
 					<%int j=1; %>
 					<% for (PostEntity post : posts) {%>
  						<li class="cur<%=j++ %>" ><img src="<%= post.getPhotoURL()%>" width="80" height="80"></li>
  					<%} %>
  					</ul>
 					<div id="newsNext">
 						<div id="newsNextButton"></div>
 					</div>
				</div>
				<div id="dotFrame">
					<ul id="dot">
						<li id="dotFirst" class="dotList"></li>
						<li class="dotList"></li>
						<li class="dotList"></li>
						<li class="dotList"></li>
					</ul>
				</div>
        	</div>
			<script type="text/javascript" src="/static/common/scripts/lib/slide.js"></script>


