<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href = "/static/zhaosheng/css/common.css" rel = "stylesheet"></link>
<div id = "headcontain">
       <span ><img src = "/static/zhaosheng/image/logo.png" style="margin-top: 5px;" /></span>
		<span><img src = "/static/zhaosheng/image/vicezhaosheng.png"></span>
		<div id = mainpage style="color: #fff; font-size: 12px;">
			<a href = "/">学院首页  </a>|<a href = "http://www.njnu.edu.cn"> 南师大 </a>
		<div id = "searchbar">
		<!-- 表单 -->
			<form id="searchForm" name="form1" method="post" action="#" target="_blank">
    			<label>
       				<input type="hidden" id="searchVpath" name="vpath" value="" />
       				<input type="text" class="word" value="搜索..." onfocus="this.value=''" 
       					   onBlur="if(this.value==''){this.value='搜索...';}"
       					   style = "height: 18px; margin-top: 3px; margin-left: 2px;"/>
       				<input type = "submit" name = "button" class = "button" value = "" />
      			</label>
   			</form>
		</div>
		</div>	

	
	<menu id = "mainmenu">
		<li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000171/more/">学院概况</a>
		</li>
		<li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000172/more/" >招生快讯</a>
		</li>
		<li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000173/more/">政策简章</a>
		</li>
		<li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000174/more/">奖助条例</a>
		</li>
		<li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000175/more/">专业介绍</a>
		</li>
		<li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000180/more/">考生问答</a>
		</li>


	</menu>	
</div>