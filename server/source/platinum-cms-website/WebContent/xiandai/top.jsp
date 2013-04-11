<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href = "/static/xiandai/css/common.css" rel = "stylesheet"></link>
<div id="headcontainer">
	<div id="header1">
       	<span id="collegelogo"><img src = "/static/xiandai/image/logo.png" style="margin-top: 5px;" /></span>
		<span id="secondlogo"><img src = "/static/xiandai/image/xiandai.png"></span>
		<div id = "indexAndsearch" style="color: #fff; font-size: 12px;">
			<a href = "/">学院首页  </a>|<a href = "http://www.njnu.edu.cn"> 南师大 </a>
			<div id = "searchbar">
				<form id="searchForm" name="form1" method="get" action="../../../search" target="_blank">
    				<label>
       					<input type="text" name="keyword" class="word" value="搜索..." onfocus="this.value=''" 
       					   onBlur="if(this.value==''){this.value='搜索...';}"
       					   style = "height: 18px; margin-top: 3px; margin-left: 2px;"/>
       					<input type = "submit" name = "button" class = "button" value = "" />
      				</label>
   				</form>
			</div>
		</div>	
  	</div>
	
	<menu id = "mainmenu">
		<li class = "singleMenu"><a href = "/xiandai/">首页</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/ff8081813dee52cc013df19a9cb00005.html" >中心概况</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000189/more/">规章制度</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000388/more/">技术支持</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000193/more/" >培训考试</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000389/more/" >学习园地</a>
		</li>


	</menu>	
    </div>