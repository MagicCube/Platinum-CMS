<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href = "/static/caiwu/css/common.css" rel = "stylesheet"></link>
      <div id = "headcontain">
      	<div id = "box">
         <span><img src = "/static/caiwu/image/caiwulogo.png" height = "80px" width="800"/></span>	
		
		<div id = mainpage>
			<a href = "#">学院首页   </a>   |   <a href = "#"> 南师大 </a>
		<div id = "searchbar">
		<!-- 表单 -->
			<form id="searchForm" name="form1" method="post" action="#" target="_blank">
    			<label>
       				<input type="hidden" id="searchVpath" name="vpath" value="" />
       				<input type="text" class="word" value="Search..." onfocus="this.value=''" 
       					   onBlur="if(this.value==''){this.value='Search...';}"
       					   style = "height: 18px; margin-top: 3px; margin-left: 2px;"/>
       				<input type = "submit" name = "button" class = "button" value = "" />
      			</label>
   			</form>
		</div>
		</div>	
        </div>
	</div>
