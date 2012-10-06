<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="pta" tagdir="/WEB-INF/tags/admin/" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>

<pta:Framework/>
<script>
$import("pt.cms.admin.security.page.LoginPageController");
</script>
<script>
var pageController = new pt.cms.admin.security.page.LoginPageController();
</script>

<title>登陆到 Platinum 平台</title>
</head>
<body>

<div id="loginPanel">
    <img id="logo" src="images/platinum_logo_login.png"/>
    <form id="loginForm" method="post" action="${pageContext.request.contextPath}/api/0/security/login" enctype="application/x-www-form-urlencoded">
        <div id="userNameRow">
            <label>用户名</label>
            <input type="text" id="loginName" name="loginName" autocomplete="off"/>
        </div>
        
        <div id="passwordRow">
            <label>密　码</label>
            <input type="password" id="loginPassword" name="loginPassword" />
        </div>
        
        <input type="hidden" name="redirectURL" value="${param.redirectURL}"/>
        
        <input type="submit" id="loginButton" value="登 陆"/>
    </form>
</div>

</body>
</html>