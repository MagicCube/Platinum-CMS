<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href = "/static/zuzhi/css/common.css" rel = "stylesheet"></link>

<div id = "head">
	<div id = "box-top">
		<img style = "float: left; margin: 10px 0 0 0;" src = "/static/zuzhi/images/logo.png" alt = "组织人事处" />		
		<div id = "link_search">
			<div id = "text">
				<span><a href = "/zuzhi/default.jsp">回到首页 |</a></span>
				<span><a href = "http://njnu.edu.cn"> 南师大</a></span>
			</div>
			<div id = "search">
				<form id="searchForm_1" name="form_1" method="post" action="#" target="_blank">
					<label>
       					<input type="text" id="description" value="搜索" onfocus="this.value=''" 
       					  	 onBlur="if(this.value==''){this.value='搜索';}"
       					  	 style = "height: 18px; margin-left: 3px; margin-top: 2px;"/>
       					<input type = "submit" name = "button" id = "button" value = "" />
					</label>
				</form>
			</div>
		</div>	
	</div>
</div>
	
	<menu id = "nav">
		<ul id = "zuzhi">
			<li><a href = "/zuzhi/default.jsp">首页</a></li>
			<li><a href = "#">部门概况</a></li>
			<li><a href = "#">各类公示</a></li>
			<li><a href = "#">理论学习</a></li>
			<li><a href = "#">党建工作</a></li>
			<li><a href = "#">招聘信息</a></li>
			<li><a href = "#">人事管理</a></li>
		</ul>
	</menu>
	
	<div id = "bodyContent">