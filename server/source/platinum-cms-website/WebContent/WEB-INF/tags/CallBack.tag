<%@ tag import="platinum.common.util.DateUtil"%>
<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>
<%@ tag import="platinum.common.util.StringUtil"%>
<%@ tag import="platinum.cms.common.entity.CallBackEntity"%>
<%@ tag import="platinum.cms.runtime.service.PostRuntimeManager"%>
<%@ tag language="java" pageEncoding="UTF-8"%>



<%@ attribute name="title" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="name" rtexprvalue="true" type="java.lang.Boolean"%>
<%@ attribute name="content" rtexprvalue="true" type="java.lang.Boolean"%>
<%
PostRuntimeManager manager = PostRuntimeManager.getInstance();
List<CallBackEntity> posts = null;
posts=manager.getCallBackDao().selectAll();



 %>
 
 
 
 <% for (CallBackEntity post : posts) {%>
 
 <p><%=post.getName() %>  </p>

  <p><%=post.getTitle() %>  </p>
    <p><%=post.getContent() %>  </p>
 
 
 <% } %>