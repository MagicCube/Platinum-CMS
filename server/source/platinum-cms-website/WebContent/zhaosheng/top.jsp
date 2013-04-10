<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<link href = "/static/zhaosheng/css/common.css" rel = "stylesheet"></link>
<div id="headcontainer">
	<div id="header1">
       	<span id="collegelogo"><img src = "/static/zhaosheng/image/logo.png" style="margin-top: 5px;" /></span>
		<span id="secondlogo"><img src = "/static/zhaosheng/image/vicezhaosheng.png"></span>
		<div id = "indexAndsearch" style="color: #fff; font-size: 12px;">
			<a href = "/">学院首页  </a>|<a href = "http://www.njnu.edu.cn" target="_blank"> 南师大 </a>
			<div id = "searchbar">
				<form id="searchForm" name="form1" method="get" action="../../../search" target="_blank">
    				<label>
       					<input type="text"  name="keyword" class="word" value="搜索..." onfocus="this.value=''" 
       					   onBlur="if(this.value==''){this.value='搜索...';}"
       					   style = "height: 18px; margin-top: 3px; margin-left: 2px;"/>
       					<input type = "submit" name = "button" class = "button" value = "" />
      				</label>
   				</form>
			</div> 
		</div>	
  	</div>
	
	<menu id = "mainmenu">
		<li class = "singleMenu"><a href = "/zhaosheng">首页</a>
		</li>
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
		<li class = "singleMenu"><a href = "http://zbzs.njnu.edu.cn/enrol/guestbook/guestbook.asp" target="_blank">考生问答</a>
		<!-- <li class = "singleMenu"><a href = "/zhaosheng/sc000000000000000000000000000180/more/">考生问答</a> -->
		</li>
	</menu>
</div>

	<div id="cebian">
		<div id="cebianTitle">联系我们</div>
		<div id="cebianContent">
			<div id ="shengwei" ></div>
    		<div id = "cebianshang"  >
        		欢迎报考南京师范大学中北学院
        	</div>
       	 	<div class = "cebian">
        		学院代码：江苏省内代码1808，国家代码13906
        	</div>
        	<div class = "cebian">
        		咨询电话： 025-85898048
        	</div>
        	<div class = "cebian">
        		学院地址：江苏省南京市仙林大学城学林路2号
        	</div>
		</div>
	</div>

	<script type = "text/javascript">
		$("#cebian").click(function(){
			$("#cebianTitle").css("display","none");
			$("#cebianContent").css("display","block"); 
			$("#cebianContent").animate({
			    width: "300px",
			  }, 300);
		});
		$("#cebianContent").mouseleave(function(){
			$("#cebianContent").css("display","none");
			$("#cebianTitle").css("display","block");
			$("#cebianContent").css("width","0");
		});
	</script>
	
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