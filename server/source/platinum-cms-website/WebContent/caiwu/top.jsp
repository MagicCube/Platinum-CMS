<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href = "/static/caiwu/css/common.css" rel = "stylesheet"></link>
<div id="headcontainer">
	<div id="header1">
       	<span id="collegelogo"><img src = "/static/caiwu/image/logo.png" style="margin-top: 5px;" /></span>
		<span id="secondlogo"><img src = "/static/caiwu/image/caiwu.png"></span>
		<div id = "indexAndsearch" style="color: #fff; font-size: 12px;">
			<a href = "/">学院首页  </a>|<a href = "http://www.njnu.edu.cn" target="_blank"> 南师大 </a>
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
			<div id="caiwuSystem" style="width:200px;height:20px;margin-top:35px;margin-left:35px;">
   				<a href = "http://210.29.137.29/wingsoft/index.jsp" target="_blank" style="font-size:14px;">南师大财务系统</a>
   			</div>
		</div>	
  	</div>
	

        <menu id = "mainmenu">
         <li class = "singleMenu"><a href = "/caiwu">部门首页</a></li>
		 <li class = "singleMenu"><a href = "/caiwu/ff8081813b606afb013b6614616c00c5.html">部门简介</a></li>
		 <li class = "singleMenu"><a href = "/caiwu/sc000000000000000000000000000159/more/">信息公开</a></li>
		 <li class = "singleMenu"><a href = "/caiwu/sc000000000000000000000000000160/more/">规章制度</a></li>
		 <li class = "singleMenu"><a href = "/caiwu/sc000000000000000000000000000161/more/">资料下载</a></li>
		 <!-- <li class = "singleMenu"><a href = "http://210.29.137.29/wingsoft/index.jsp" target="_blank">财务系统</a></li> -->

	</menu>	
	</div>
        </div>