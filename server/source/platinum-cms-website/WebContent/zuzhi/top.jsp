<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>

<link href = "/static/zuzhi/css/common.css" rel = "stylesheet"></link>

<div id="headcontainer">
	<div id="header1">
       	<span id="collegelogo"><img src = "/static/zuzhi/images/logo.png" style="margin-top: 5px;" /></span>
		<span id="secondlogo"><img src = "/static/zuzhi/images/zuzhi.png"></span>
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
	<menu id = "nav">
		<ul id = "zuzhi">
			<li><a href = "/zuzhi/default.jsp">首页</a></li>
			<li><a href = "/zuzhi/ff8081813ba86b8c013bad8fc9010005.html">部门概况</a></li>
			<li><a href = "/zuzhi/sc000000000000000000000000000035/more/">各类公示</a></li>
			<li><a href = "/zuzhi/sc000000000000000000000000000036/more/">理论学习</a></li>
			<li><a href = "/zuzhi/sc000000000000000000000000000037/more/">党建工作</a></li>
			<li><a href = "/zuzhi/sc000000000000000000000000000038/more/">招聘信息</a></li>
			<li><a href = "/zuzhi/sc000000000000000000000000000039/more/">人事管理</a></li>
			<li id="guanliLi" style="position:relative;">
				<a>管理系统</a>
				<ul id="systemUL" style="display:none;position:absolute;top:36px;right:0px;background:#e60012;z-index:1000;height:60px;width:90px;z-index:1000;">
					<li style="width:124px;height:30px;z-index:1000;float:right;font-size:14px;color:#FFF;line-height:30px;text-align:center;">
						<a href="#" style="display:block;width:100%;">年终考评</a>
					</li>
					<li style="height:30px;z-index:1000;float:right;font-size:14px;color:#FFF;line-height:30px;text-align:center;">
						<a href="#" style="display:block;width:100%;">人才招聘</a>
					</li>
				</ul>	
			</li>
			<script>
					$("#guanliLi").hover(
					  function () {
					    $("#systemUL").css("display","block");
					  },
					  function () {
					    $("#systemUL").css("display","none");
					  }
					);
			</script>
		</ul>
	</menu>
</div>	
	<div id = "bodyContent">
	<% if (request.getParameter("displaySideBar").equals("true")) {%>
		<div id="sideBar">
			<div id = "sideBarin">
			<div id = "title_style"><strong>要文回顾</strong><span style= "float: right;"><a href = "/news/more/" target="_blank">更多...</a></span></div>
			<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' count="9" />
			<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
			<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' subcategoryId="rank" count="9" />
			</div>
		</div>
	<%}%>