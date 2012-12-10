<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院财务处</title>
<link href = "/static/caiwu/css/common.css" rel = "stylesheet"></link>
<link href = "/static/caiwu/css/caiwu.css" rel = "stylesheet"></link>


</head>
<body>	
<cms:Header path = "caiwu"/>
<div id = "content">
		<div id = "mainContent">
			
			<div id = "picNews">
				<div id="browsable">
			<div id="box">
			 <div class="block_home_slider">
               
                <span><img src = "/static/caiwu/image/Financial.jpg" height = "240px" width="310"/></span>			
				
                </div>
				</div>
				</div>
			</div>
			<div id="news">
			<div id = "textNews">	
			<span><img src = "/static/caiwu/image/xinxi.png"  width="520" /></span>	
			<cms:PostList id = "xxgklist" subcategoryId="sc000000000000000000000000000159" count="16" />	
			<div id = "nice"><a href = "/caiwu/more/" style ="font-size: 12px;">更多...</a></div>			
          	</div>
			</div>
           
			
      </div>	
</div>	
	<cms:Footer path = "caiwu"/>
</body>
</html>