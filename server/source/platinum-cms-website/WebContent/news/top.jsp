<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href = "/static/news/css/common.css" rel = "stylesheet"></link>

 	 <div id = "header">
		<div id = "linklabel">
			<ul>
				<li><a href = "#">南京师范大学</a></li>
				<li><a href = "#">网站地图</a></li>
				<li><a href = "#">联系我们</a></li>
			</ul>
		</div>
		<div id = "login">	
			<form id = "_login" name = "login" method = "post" action = "#">
				<ul>
					<li>用户</li>
					<li>
						<input type = "text" style = "width: 100px; height: 14px;"/>
					</li>
					<li>密码</li>
					<li>
						<input type = "password" style = "width: 100px; height: 14px;"/>
					</li>
					<li>
						<input type = "submit" name = "btn" id = "button" value = ""/>
					</li>
				</ul>
			</form>
		</div>	
	</div>
	
	<div id = "logo_search">
		<div id = "logo">
			<img src = "/static/news/image/logo.jpg" alt = "南京师范大学中北学院"/>
		</div>
		
		<div id = "search">
			<div id = "setting">
				<span><a href = "#">设为主页 </a></span>|<span><a href = "#"> English Version </a></span>
			</div>
			
			<div id = "searchbar">
				<form id = "_search" name = "seacrh" method = "post" action = "#" >				
					<input type = "text" id = "input" />	
					<input type = "submit" id = "button" value = "" name = "button"/>				
				</form>	
			</div>
		</div>	
	</div>
	
	<!-- 菜单 -->
	<menu id = "main_menu">
			<li class = "main"><a href = "index.htm">首页</a></li>
			<li class ="main"><a href = "#">新闻动态</a>
				
			</li>
			<li class = "main"><a href = "#">专题报道</a>
				
			</li>
			<li class = "main"><a href = "#" >校园动态</a>
			
			</li>
			<li class = "main"><a href = "#">公告通知</a>
			
			</li>
			<li class = "main"><a href = "#">图片新闻</a>
				
			</li>
			
	</menu>
	