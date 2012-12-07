<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院财务处</title>
<link href = "/static/caiwu/css/common.css" rel = "stylesheet"></link>
<link href = "/static/caiwu/css/new.css" rel = "stylesheet"></link>


</head>
<body>	
<cms:Header path = "caiwu"/>
<div id = "content">
		<div id = "mainContent">
            <div id = "informs">
	        <span><img src = "/static/caiwu/image/Financial.jpg" height = "210px" width="260"/></span>			
				
          			
			</div>
             <div id = "gongNews">    			
			</div>
			<div id="news">
               <div id="menu">

               <ul>
                <li class = "singleMenu1"><a href = "ff8081813b606afb013b6614616c00c5.html">部门简介</a></li>
		        <li class = "singleMenu1"><a href = "/caiwu/sc000000000000000000000000000159/more/">信息公开</a></li>
                <li class = "singleMenu1"><a href = "/caiwu/sc000000000000000000000000000160/more/">规章制度</a></li>
		        <li class = "singleMenu1"><a href = "/caiwu/sc000000000000000000000000000161/more/">资料下载</a></li>
               </ul>

               </div>
			<div id = "textNews">	
			<cms:PostList id = "xxgklist" subcategoryId="sc000000000000000000000000000159" count="17" />	
			<div id = "nice"><a href = "/caiwu/more/" style ="font-size: 12px;">更多...</a></div>			
          	</div>
			</div>
           
			
      </div>	
</div>	
	<cms:Footer path = "caiwu"/>
</body>
</html>