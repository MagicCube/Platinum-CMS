<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="cms"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门设置</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
</head>
<body>
	<cms:Header/>
	<div id = "mainbody" style = "height: 600px;">
		<div id = "maincontent" style = "height: 600px;">
			<div id = "layoutleft" >
				<img src = "/static/common/images/department.jpg" height = 200; width = 250px;/>
			</div>
			<div id = "layoutright">
				<h2>部门设置</h2>
				<p style = "color: #3399CC; font-size: 14px;">更新日期： 2012/10/16</p>
				<ul>
					<li><a href = "/yuzhang/">院长办公室（党委办公室）</a></li>
 					<li><a href = "/jiaowu/">教务处</a></li>
					<li><a href = "/xuegong/">学生工作处</a></li>
					<li><a href = "/tuanwei/">团委</a></li>
					<li><a href = "/caiwu/">财务处</a></li>
					<li><a href = "/zuzhi/">组织人事处</a></li>
					<li><a href = "/houqin/">后勤保卫处</a></li>
					<li><a href = "/zichan/">资产管理办公室</a></li>
					<li><a href = "/xiandai/">现在教育技术中心</a></li>
					<li><a href = "/ruanyan/">软件培训与研发中心</a></li>
					<li><a href = "/library/">图书资料室</a></li>
					<li><a href = "/tangshan/">汤山校区综合管理办公室</a></li>
				</ul>		
			</div>		
		</div>
	</div>
	<cms:Footer/>
</body>
</html>