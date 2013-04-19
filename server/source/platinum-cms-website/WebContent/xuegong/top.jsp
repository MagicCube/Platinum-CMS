<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>

<link href = "/static/xuegong/css/common.css" rel = "stylesheet"/>


<div id="headcontainer">
	<div id="header1">
       	<span id="collegelogo"><img src = "/static/xuegong/images/logo.png" style="margin-top: 5px;" /></span>
		<span id="secondlogo"><img src = "/static/xuegong/images/xuegong.png"></span>
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
		</div>	
  	</div>

<menu id = "mainmenu">
	  	<li class = "singleMenu"><a href = "/xuegong">首页</a></li>
		<li class = "singleMenu" id="gaikuangLi">
			<div id="gaiTitle">部门概况</div>          	
          	<ul id="gaikuang">
          		<li class="gaikuangC"><a href="#">处(部)简介</a></li>
          		<li class="gaikuangC"><a href="#">工作职责</a></li>
          		<li class="gaikuangC"><a href="#">工作要点</a></li>
          		<li class="gaikuangC"><a href="#">工作荣誉</a></li>
          	</ul>
			<!-- <a href = "/xuegong/ff8081813b50f9a5013b566a970e0005.html"></a> -->
		</li>
		<script type = "text/javascript">
        			$('#gaikuangLi').mouseover(function(){
        				$('#gaikuang',this).stop().slideDown(300);
        				$('#gaikuang',this).stop().animate({height:'128px',width:'110px'},300);
        			}).mouseout(function(){
        				$('#gaikuang',this).stop().animate({height:'0px',width:'110px'},150);
        				$('#gaikuang',this).stop().slideUp(150);
        			});
        </script>
		<li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000033/more/">规章制度</a></li>
		<li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000021/more/" >教育管理</a></li>
		<li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000022/more/">学生党建</a></li>
		<li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000023/more/">心灵驿站</a></li>
		<li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000024/more/">资助工作</a></li>
        <li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000026/more/">招生就业</a></li>
		<li class = "singleMenu"><a href = "/xuegong/sc000000000000000000000000000025/more/">资料下载</a></li>
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

