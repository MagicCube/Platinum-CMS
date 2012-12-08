<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href = "/static/xiandai/css/common.css" rel = "stylesheet"></link>
<div id = "headcontain">
       <span><img src = "/static/xiandai/image/logo.png"  /></span>
       <span><img src = "/static/xiandai/image/xiandai.png"  /></span>

		<div id = mainpage style="color: #fff; font-size: 12px;">
			<a href = "default.jsp">学院首页  </a>|<a href = "www.njnu.edu.cn"> 南师大 </a>
		<div id = "searchbar">
		<!-- 表单 -->
			<form id="searchForm" name="form1" method="post" action="#" target="_blank">
    			<label>
       				<input type="hidden" id="searchVpath" name="vpath" value="" />
       				<input type="text" class="word" value="搜索..." onfocus="this.value=''" 
       					   onBlur="if(this.value==''){this.value='Search...';}"
       					   style = "height: 18px; margin-top: 3px; margin-left: 2px;"/>
       				<input type = "submit" name = "button" class = "button" value = "" />
      			</label>
   			</form>
		</div>
		</div>	

	
	<menu id = "mainmenu">
		<li class = "singleMenu"><a href = "/xiandai/">首页</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000188/more/" >中心概况</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000189/more/">规章制度</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000190/more/">项目建设</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000191/more/">服务指南</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000192/more/">技术概况</a>
		</li>
		<li class = "singleMenu"><a href = "/xiandai/sc000000000000000000000000000193/more/" >培训考试</a>
		</li>


	</menu>	
    </div>