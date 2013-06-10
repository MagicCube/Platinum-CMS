<%@tag import="platinum.cms.common.entity.PostAttachmentEntity"%>
<%@ tag import="platinum.cms.common.PostType"%>
<%@ tag import="platinum.common.util.DateUtil"%>
<%@ tag import="platinum.cms.common.entity.PostEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="postId" rtexprvalue="true" %>
<%@ attribute name="categoryId" rtexprvalue="true" %>

<%!
private String _formatFileSize(long p_size)
{
	if (p_size < 1024)
	{
		return "小于 1KB";
	}
    
	if (p_size < 1024 * 1000)
    {
        double size = Math.round(p_size * 10 / 1024) / 10.0;
        if (size == 0)
        {
        	size = 1;
        }
        return size + "KB";
    }
    else if (p_size < 1024 * 1000 * 1000)
    {
        return Math.round(p_size * 10 / 1024000) / 10.0 + "MB";
    }
    else
    {
        return Math.round(p_size * 10 / 1024000000) / 10.0 + "GB";
    }
}
%>

<%
PostRuntimeManager postManager = PostRuntimeManager.getInstance();
PostEntity post = postManager.getPost(postId, categoryId);
%>

<div id="<%= id%>" class="PostDetail <%= post.getPostType()%>">
    <% if (post.getPostType() == PostType.NEWS || post.getPostType() == PostType.NOTIFICATION) {%>
    	 <cms:CategoryNavigationBar id="categoryNavigationBar" categoryId="<%= categoryId%>" subcategoryId="<%= post.getSubcategoryId()%>"></cms:CategoryNavigationBar>
        <h1 id="title"><%= post.getTitle()%></h1>    
        
        <div id="info">
            <% if (post.getSource() != null) {%>
            <span id="source"><span>来源：</span><a href="#"><%= post.getSource()%></a></span>
            <% } %>
            <span id="updateTime"><span>更新时间：</span><a><%= DateUtil.formatDate(post.getUpdateTime(), "yyyy年M月d日HH:mm")%></a></span>
            
            <span id="viewCount" style="display:none;"><span>浏览次数：</span><span id="count"></span></span>
            <script>
            $(function()
            {
                setTimeout(function()
                {
                    $.ajax({
                        url: "/api/0/runtime/post/<%= post.getId()%>/view",
                        type: "POST"
                    }).success(function(p_result){
                        $("#viewCount > #count").text(p_result);
                        $("#viewCount").fadeIn();
                    });
                }, 1000);
            });
            </script>
        </div>
    
        <% if (post.getSummary() != null) {%>
        <div id="summary"><%= post.getSummary()%></div>
        <% } %>
        
        <% if (post.getContentText() != null) {%>
        <div id="content"><%= post.getContentText()%></div>
        <% } %>
        
        <% if (post.getAttachments().size() > 0) {%>
        <ul id="attachmentList">
            <% for (int i = 0; i < post.getAttachments().size(); i++) {
                   PostAttachmentEntity attachment = post.getAttachments().get(i);
            %>
            <li id="<%= attachment.getId()%>">
                <span id="index">附件<%= i + 1%>: </span>
                <a target="_blank" href="<%= attachment.getRelativePath()%>">
                    <span id="name"><%= attachment.getFileName()%></span>
                </a>
                <span id="size">(<%= _formatFileSize(attachment.getFileSize())%>)</span>
            </li>
            <% } %>
        </ul>
        <% } %>
        
    <%} else {%>
        <div id="imageContent">
            <% if (post.getPhotoURL() != null) {%>
            <img src="<%=post.getPhotoURL()%>"/>
            <%} %>
        </div>
        <script>
		if($('#imageContent').length>0) {$('#content').css('border','0'); $('#postDetail').css('border-right','0');}
		</script>
        <div id="textContent">
            <h1 id="title"><%= post.getTitle()%></h1>
            <div id="info">
                <span id="updateTime"><span>更新时间：</span><a><%= DateUtil.formatDate(post.getUpdateTime(), "yyyy年M月d日")%></a></span>
            </div>
            <div id="content"><%= post.getContentText()%></div>
            
            <% if (post.getAttachments().size() > 0) {%>
            <ul id="attachmentList">
                <% for (int i = 0; i < post.getAttachments().size(); i++) {
                       PostAttachmentEntity attachment = post.getAttachments().get(i);
                %>
                <li id="<%= attachment.getId()%>">
                    <span id="index">附件<%= i + 1%>: </span>
                    <a target="_blank" href="<%= attachment.getRelativePath()%>">
                        <span id="name"><%= attachment.getFileName()%></span>
                    </a>
                    <span id="size">(<%= _formatFileSize(attachment.getFileSize())%>)</span>
                </li>
                <% } %>
            </ul>
            <% } %>
        </div>
    <%} %>
</div>

<script>
	if($('#textContent').length>0) $('#postDetail').css('width','960px');
	if($('#imageContent').length>0) {$('#content').css('border','0'); $('#postDetail').css('border-right','0');}
	if($('#side').length>0) {
		$('#postDetail').css('width','733px'); 
		$('#postDetail').css('border-right','1px solid #ccc');
	}
	if($('#caiwutag').length>0) {$('#postDetail').css({'padding':'0','width':'988px','border-right':'1px solid #b0c2d3','border-left':'1px solid #b0c2d3'});}
</script>