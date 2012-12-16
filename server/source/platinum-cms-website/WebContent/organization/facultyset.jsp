<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="cms"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系部设置</title>
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
</head>
<body>
	<cms:Header/>

	
		<div id="middle">
			<span><img src="/static/common/images/facultystruct.png" title="结构图" usemap="#facultymap"/></span>
			<map name="facultymap">
				<area shape="rect" coords="310,40,400,170" href ="/xinxi/" alt="xinxi"/>
				<area shape="rect" coords="510,50,610,107" href ="/yinyue/" alt="yinyue"/>
				<area shape="rect" coords="557,170,657,242" href ="/gongxue/" alt="yinyue"/>
				<area shape="rect" coords="280,240,368,322" href ="/renwen/" alt="yinyue"/>
				<area shape="rect" coords="520,320,580,383" href ="/meishu/" alt="yinyue"/>
				<area shape="rect" coords="370,360,456,468" href ="/gongguan/" alt="yinyue"/>
				<area shape="rect" coords="520,460,596,523" href ="/waiyu/" alt="yinyue"/>
				<area shape="rect" coords="370,550,451,616" href ="/qianghua/" alt="yinyue"/>
				<area shape="rect" coords="460,600,640,642" href ="/jingguan/" alt="yinyue"/>
			</map>
		</div>	
		
		
	<cms:Footer/>
</body>
</html>