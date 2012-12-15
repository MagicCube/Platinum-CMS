<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="pta" tagdir="/WEB-INF/tags/admin/" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>

<pta:Framework/>
<script>
$import("pt.cms.admin.security.page.PasswordPageController");
</script>
<script>
var pageController = new pt.cms.admin.security.page.PasswordPageController();
</script>

<title>修改密码 - Platinum 平台</title>
</head>
<body>

<div id="passwordPanel">
    <img id="logo" src="images/platinum_logo_login.png"/>
    <form id="passwordForm" method="post" enctype="application/x-www-form-urlencoded">
        <div>
            <label>当前密码</label>
            <input type="password" id="password" name="password" autocomplete="off"/>
        </div>
        
        <div>
            <label>新密码</label>
            <input type="password" id="newPassword" name="newPassword" />
        </div>
        
        <div>
            <label>确认密码</label>
            <input type="password" id="confirmPassword"" name="confirmPassword" />
        </div>
        
        
        <input type="hidden" name="redirectURL" value="${param.redirectURL}"/>
        
        <input type="submit" id="confirmButton" value="确认修改"/>
    </form>
    <form id="logoffForm" method="post" action="${pageContext.request.contextPath}/api/0/security/logoff"></form>
</div>

</body>
</html>