<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="pta" tagdir="/WEB-INF/tags/admin/" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<pta:Framework/>

<script>
$import("pt.cms.admin.common.page.AdminPageController");
$import("pt.cms.admin.dashboard.view.RootViewController");
</script>
<script>
var pageController = new pt.cms.admin.common.page.AdminPageController({
    rootViewController: new pt.cms.admin.dashboard.view.RootViewController()
});
</script>

<title>My Dashboard - Platinum 平台</title>
</head>

<body>
    
<div id="admin">
    <pta:Header/>
    <pta:NavigationBar/>
    
    <div id="toolstrip"></div>
    <pta:UserStatus/>
    
    <div id="content">
    
        
        
        
        
        
    </div>
</div>
    
</body>

</html>