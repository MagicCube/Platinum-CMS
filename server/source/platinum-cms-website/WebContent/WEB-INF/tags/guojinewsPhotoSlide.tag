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
		<div id="${id}" class="${cssClass}">
        	<div class="changeBox_a1" id="change_32">
        		<% for (PostEntity post : posts) {%>
        		<div class="changeDiv" style="display: none;">
        			<h3><a href="<%= post.getLink()%>" ><%= post.getTitle()%></a></h3>
        			<a href="<%= post.getLink()%>"><img width="460" height="308" src="<%= post.getPhotoURL()%>"></a>
        		</div>	
        		<%} %>		
				<ul class="ul_change_a2">
					<li><span class="">1</span></li>
					<li><span class="">2</span></li>
					<li><span class="">3</span></li>
					<li><span class="on">4</span></li>
				</ul>
			</div>
			<script type="text/javascript">
			$(function () {
			//数字导航切换及自定义当前数字的class
				$('#change_3 .a_bigImg img').soChange({
					thumbObj:'#change_3 .ul_change_a2 span',
					thumbNowClass:'on',//自定义导航对象当前class为on
					changeTime:4000//自定义切换时间为4000ms
				});
			
			//平滑过渡间歇时间为0
				$('#change_33 .a_bigImg img').soChange({
					thumbObj:'#change_33 .ul_change_a2 span',
					thumbNowClass:'on',
					thumbOverEvent:false,
					slideTime:0//平滑过渡间歇为0，意味着直接切换
				});

			//切换对象为其他，这里为包含图片和标题的层
				$('#change_32 div.changeDiv').soChange({//对象指向层，层内包含图片及标题
					thumbObj:'#change_32 .ul_change_a2 span',
					thumbNowClass:'on'//自定义导航对象当前class为on
				});

			//带导航图标及按钮
				$('#change_4 .a_bigImg img').soChange({
					thumbObj:'#change_4 .ul_change_a1 img',//导航图标
					botPrev:'#change_4 .a_last',
					botNext:'#change_4 .a_next'
				});

			//在选项卡上的运用
				$('#change_6 div').soChange({
					thumbObj:'#change_6 h3',
					slideTime:0,
					thumbOverEvent:true,
					autoChange:false//自动切换为 false，默认为true
				});
			
			});
			</script>
        </div>