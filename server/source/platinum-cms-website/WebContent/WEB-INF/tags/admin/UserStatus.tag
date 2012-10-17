<%@ tag import="platinum.security.Membership"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%
Membership membership = Membership.getInstance();
%>
<menu id="userStatus">
    <li id="user">
        <a href="javascript:;">
            <label><%= membership.getCurrentUser().getUserName()%></label>
        </a>
        
        <menu>
            <li><a href="${pageContext.request.contextPath}/admin/dashboard"><label>My Dashboard</label></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/system/changePassword"><label>修改我的密码</label></a></li>
            <li><a href="javascript:$('#logoffForm').submit();"><label>安全退出</label></a> <form id="logoffForm" method="post" action="${pageContext.request.contextPath}/api/0/security/logoff"></form></li>
        </menu>
    </li>
</menu>