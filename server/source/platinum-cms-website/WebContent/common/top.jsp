<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<%
request.setCharacterEncoding("utf-8");
%>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/static/common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/960.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/text.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/static/common/css/index.css"/>
<script src="/static/common/scripts/src/IE6.js" type="text/javascript"></script>
<script src="/static/common/scripts/src/IE6Check.js" type="text/javascript"></script>
<script type="text/javascript" src="/static/common/scripts/lib/newmenu.js"></script>
<script type="text/javascript" src="/static/common/scripts/lib/search.js"></script>

<div id="header" class="container_16">	
	<div id="banner">
		<img src="/static/common/newimages/banner1.jpg" width="960" height="70" style="height:70px;"/>
		<img src="/static/common/newimages/banner2.jpg" width="960" height="50" style="height:50px;"/>
		<img src="/static/common/newimages/banner3.jpg" width="960" height="50" style="height:50px;"/>
		<div id="tips">
    		<div id="topLink">
        		<span><a href="" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://zb.njnu.edu.cn/');">设为首页</a></span><span class="fenge">|</span>
            	<span><a href="/introduce/12345679be9e6b7a00002be9e6b7a0d.html">联系我们</a></span><span class="fenge">|</span>
            	<span><a href="/wap">移动版</a></span><span class="fenge">|</span>
             	<span><a style="font-family: 'Verdana','sans-serif';" href="/introduce/ff8081813be4798a013be484d5540002.html">About ZHONGBEI</a></span><span class="fenge">|</span>
           		<span><a target="_blank" href="http://zbzs.njnu.edu.cn/index.asp">返回旧版</a></span>
        	</div>
    	</div>
	</div>
    <div id="homemenu">
    	<div id="menuUp">
        <ul id="up" style="width:100%;height:5px;">
        	<li style="width:5px;"></li>
        	<li class="sy"></li>
            <li class="xygk" style="width:94px;"></li>
        	<li class="bmjg" class="menuUpList"></li>
            <li class="jxky" class="menuUpList"></li>
            <li class="xsgz" class="menuUpList"></li>
            <li class="zzrs" class="menuUpList"></li>
            <li class="zsjy" class="menuUpList"></li>
            <li class="jlhz" class="menuUpList"></li>
            <li class="ggfw" class="menuUpList"></li>
            <li class="jszc" class="menuUpList"></li>
        </ul>
        </div>
        <ul id="middleul">
        	<li id="menuLeft" style="width:5px;"></li>
            <li id="indexItem" style="width:53px;font-weight:bold;background-image:url(/static/common/newimages/menubg.jpg);"><a href="/" style="color:#414141;">首页</a></li>
            <!--<li style="width:53px;font-weight:bold;background-color:#4BA61B;"><a href="">首页</a></li>-->
            <li id="xxgk">
            	<a href="#" class="menuUpA">学院概况</a>
            	<ul>
	            	<li style="margin-left:0;"><a href="/introduce/402881e93b41ec78013b41f8a5cf0008.html">学院简介</a></li>
	            	<li><a href="/introduce/ff8081813be9dcbc013be9e6b7a00002.html">领导简介</a></li>
	            	<li><a href="/introduce">校园美景</a></li>
	            	<li><a href="/introduce/12345679be9e6b7a00002be9e6b7a0d.html">联系我们</a></li>
	        	</ul>
            </li>
            <li id="bmjg" class="li101">
            	<a href="#" class="menuUpA">部门机构</a>
            	<ul>
	            	<li id="bumenshezhi">
	            		<a href="/organization/ff8081813bea7af0013bea97c53f0005.html">部门设置</a>
	            		<div id="bumenList">
	            			<div class="bumenli"><a href="/jiaowu" target="_blank">教务处</a></div>
	            			<div class="bumenli"><a href="/xuegong" target="_blank">学工处</a></div>
	            			<div class="bumenli"><a href="/tuanwei" target="_blank">团委</a></div>
	            			<div class="bumenli"><a href="/zhaosheng" target="_blank">招生办公室</a></div>
	            			<div class="bumenli"><a href="/jiuye" target="_blank">就业办公室</a></div>
	            			<div class="bumenli"><a href="/caiwu" target="_blank">财务处</a></div>
	            			<div class="bumenli"><a href="/zuzhi" target="_blank">组织人事处</a></div>
	            			<div class="bumenli"><a href="/xiandai" target="_blank">现代教育技术中心</a></div>
	            		</div>
	            	</li>
	            	<script type="text/javascript">
	            	$("#bumenshezhi").hover(
	            			function () {
	            				$("#bumenshezhi #bumenList").css({"display":"block"});
	            		  	},
	            		  	function () {
	            		  		$("#bumenshezhi #bumenList").css({"display":"none"});
	            		  	}
	            		);
	            	</script>
	        		<li id="xibushezhi">
	        			<a href="/organization/ff8081813bea7af0013bea9a8e700008.html" >系部设置</a>
	        			<div id="xibuList">
	            			<div class="xibuli"><a href="/renwen" target="_blank">人文系</a></div>
	            			<div class="xibuli"><a href="/waiyu" target="_blank">外语部</a></div>
	            			<div class="xibuli"><a href="/jingguan" target="_blank">经济与管理系</a></div>
	            			<div class="xibuli"><a href="/gongguan" target="_blank">公共与管理系</a></div>
	            			<div class="xibuli"><a href="/xinxi" target="_blank">信息科学与技术系</a></div>
	            			<div class="xibuli"><a href="/gongxue" target="_blank">工学系</a></div>
	            			<div class="xibuli"><a href="/meishu" target="_blank">美术系</a></div>
	            			<div class="xibuli"><a href="/yinyue" target="_blank">音乐系</a></div>
	            			<div id="qhb" class="xibuli" style="position:relative;">
	            				<a href="/qianghua" target="_blank">强化部</a>
	            				<div id="lgqh"><a href="/lgqhb/" target="_blank">11级理工强化班</a></div>
	            			</div>
	            			<script type="text/javascript">
	            			$("#qhb").hover(
	            				function () {
	            					$("#qhb #lgqh").css({"display":"block"});
	            		  		},
	            		  		function () {
	            		  			$("#qhb #lgqh").css({"display":"none"});
	            		  		}
	            			);
	            	</script>
	            		</div>
	        		</li>
	        		<script type="text/javascript">
	            	$("#xibushezhi").hover(
	            			function () {
	            				$("#xibushezhi #xibuList").css({"display":"block"});
	            		  	},
	            		  	function () {
	            		  		$("#xibushezhi #xibuList").css({"display":"none"});
	            		  	}
	            		);
	            	</script>
	            </ul>
            </li>
            <li id="jxky" class="li101">
            	<a href="/jiaowu" target="_blank" class="menuUpA">教学科研</a>
            </li>
            <li id="xsgz" class="li101">
            	<a href="#" class="menuUpA">学生工作</a>
            	<ul>
	            	<li><a href="/xuegong" target="_blank">学 工 处</a></li>
	            	<li><a href="/tuanwei" target="_blank">团&nbsp;&nbsp;&nbsp;&nbsp;委</a></li>
	        	</ul>
            </li>
            <li id="zzrs" class="li101">
            	<a  href="/zuzhi" target="_blank" class="menuUpA">组织人事</a>
            </li>
            <li id="zsjy" class="li101">
            	<a href="#" class="menuUpA">招生就业</a>
            	<ul>
	            	<li><a href="/zhaosheng" target="_blank">招生录取</a></li>
	            	<li><a href="/jiuye" target="_blank">就业指导</a></li>
	        	</ul>
            </li>
            <li id="jlhz" class="li101">
            	<a href="#" class="menuUpA">交流合作</a>
            	 <ul style="width: 150px;">
            	 	<li><a target="_blank" href="/guoji">对外合作与发展办公室</a></li>
	            	<!--<li><a target="_blank" href="/cooperation/ff8081813be951ee013be993b7240002.html">海外学习计划</a></li>-->
	            	<!-- <li class = "subMenu"><a href = "/cooperation/f8081813b7a2ecd013b7a3a0ece000b.html">联合办学</a></li> -->
	        	</ul>
            </li>
            <li id="ggfw" class="li101">
            	<a href="#" class="menuUpA">公共服务</a>
            	<ul>
            		<li><a href="/service/ff8081813be18002013be18e03250002.html">常用链接</a></li>
	      			<!-- <li><a href="/service/ff8081813b7a2ecd013b7a384fb20008.html">来稿须知</a></li> -->
	            	<li><a href="/service/92345678be9e6b7a00002be9e6b7a0d.html">办事指南</a></li>
	            	<li><a href="/service/ff8081813b6fee04013b6ff2b1d90011.html">作息时间</a></li>	            
	            	<li><a href="/service/ff8081813b6fee04013b6ff3a36c0017.html">办公电话</a></li>
	            	<li><a href="/service/ff8081813b6fee04013b6ff158fb0008.html">校园交通</a></li>
	      			<li><a href="/service/ff8081813b6fee04013b6fef4b390002.html">教学周历</a></li>
	            	<li><a href="/service/ff8081813d105c17013d10deb9cc0002.html">班车时刻</a></li>
	      			<li><a href="http://www.njnu.edu.cn/jssd.htm" target="_blank">在线杀毒</a></li>
            		<li><a href="http://211.65.216.145/" target="_blank">校园一卡通</a></li>
	        	</ul>
            </li>
            <li id="jszc" class="li101">
            	<a href="#" class="menuUpA">技术支持</a>
            	<ul>
	    			<!-- <li><a href="/ruanyan/">软件研发与培训中心</a></li> -->
	    			<li style="width:130px;"><a href="/xiandai" target="_blank">现代教育技术中心</a></li>
	            	<!-- <li><a href="/technology/ff8081813be5798c013be58062050002.html">现代教育技术中心</a></li>	-->
	        	</ul>
            </li>
        </ul>
    </div>
    <div id="headerEnd"></div>
</div>



<div id="MainBox">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<div id = "sideBarin">
		<div id = "title_style"><strong>要文回顾</strong><span style= "float: right;"><a href = "/news/more/">更多...</a></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' count="9" />
		<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' subcategoryId="rank" count="9" />
		</div>
	</div>
<%}%>
