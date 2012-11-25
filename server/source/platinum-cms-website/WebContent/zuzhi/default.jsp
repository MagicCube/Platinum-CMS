<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>组织人事处</title>
<link href="/static/zuzhi/css/zuzhi.css" rel = "stylesheet"></link>
<script src="/static/common/scripts/src/dynamicPic.js" type = "text/javascript"></script>
</head>
<body>
	
	<cms:Header path = "zuzhi"/>
	
	<div id = "maincontent">
			<div id = "inform">
				<span><img src="/static/zuzhi/images/inform.gif"/></span>
				<cms:PostList id = "ggtzlist" subcategoryId="sc000000000000000000000000000040" count="9" />
				<div id = "more"><a href = "/zuzhi/more/" style ="font-size: 9px;">更多...</a></div>
			</div>
			<div id = "pic">
				<div id="browsable">
            			<div id="box">
             			    <cms:PostList id = "ztbdlist" cssClass = "list" subcategoryId="sc000000000000000000000000000040" displayPhoto = "true" count="4" />         			  
              			   <ul class="count">
                				<li class="current">1</li>
                				<li>2</li>
                				<li>3</li>
                				<li>4</li>
              			   </ul> 
            			</div>
            	</div>
			</div>
			
			<div id = "activity">
				<span><img src = "/static/zuzhi/images/activity.gif"/></span>
				<cms:PostList id = "zzhdlist" subcategoryId="sc000000000000000000000000000041" count="9" />
				<div id = "more"><a href = "/zuzhi/more/" style ="font-size: 9px;">更多...</a></div>
			</div>
			
			<div id = "box-bottom">
				<div id = "boxContent">
					<div id = "policy">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "zzhdlist" subcategoryId="sc000000000000000000000000000042" count="9" />
						<div id = "more"><a href = "#" style ="font-size: 9px;">更多...</a></div>
					</div>
					
					<div id = "download">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "zzhdlist" subcategoryId="sc000000000000000000000000000043" count="9" />				
						<div id = "more"><a href = "/zuzhi/more/" style ="font-size: 9px;">更多...</a></div>
					</div>
					
					<div id = "outline">
						<span><img src = "/static/zuzhi/images/policy.gif"/></span>
						<cms:PostList id = "zzhdlist" subcategoryId="sc000000000000000000000000000044" count="9" />
						<div id = "more"><a href = "/zuzhi/more/" style ="font-size: 9px;">更多...</a></div>
					</div>
				</div>
			</div>	
	</div>
	
	<cms:Footer path = "zuzhi"/>
	
</body>
</html>