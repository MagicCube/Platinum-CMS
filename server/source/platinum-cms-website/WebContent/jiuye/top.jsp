<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>

<link href = "/static/jiuye/css/common.css" rel = "stylesheet"/>
<link href = "/static/jiuye/css/joplink.css" rel = "stylesheet"/>
<div id="headcontainer">
	<div id="header1">
       	<span id="collegelogo"><img src = "/static/jiuye/images/logo.png" style="margin-top: 5px;" /></span>
		<span id="secondlogo"><img src = "/static/jiuye/images/head_logo.png"></span>
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
            <li class = "singleMenu"><a href = "/jiuye/">首&nbsp;&nbsp;页</a></li>
            <li class = "singleMenu"><a href = "/jiuye/sc000000000000000000000000000146/more/">工作动态</a></li>
            <li class = "singleMenu"><a href = "/jiuye/sc000000000000000000000000000148/more/">招聘信息</a></li>
            <li class = "singleMenu"><a href = "/jiuye/sc000000000000000000000000000149/more/" >政策法规</a></li>
            <li class = "singleMenu"><a href = "/jiuye/sc000000000000000000000000000151/more/">就业指导</a></li>
            <li class = "singleMenu"><a href = "/jiuye/sc000000000000000000000000000369/more/">资料下载</a></li>  
            <li class = "singleMenu"><a href = "/jiuye/sc000000000000000000000000000150/more/">职业生涯规划</a></li>          
	    </menu>	
	  
  </div>
     <!--菜单结束-->
     
	<div id="cebian">
		<div id="cebianTitle">联系我们</div>
		<div id="cebianContent">
			<div id ="shengwei" ></div>
    		<div id = "cebianshang"  >
        		欢迎进入南师大中北学院就业指导网站
        	</div>
       	 	<div class = "cebian">
        		学院代码:江苏省内代码1808 | 国家代码13906
        	</div>
        	<div class = "cebian">
        		咨询电话: 025-85891289 | 联系人:贾老师
        	</div>
        	<div class = "cebian">
        		<span>E-mail:</span><a href="mailto:zbjy2010@163.com" style="color:#FFF;font-size:14px;">zbjy2010@163.com</a>
        	</div>
        	<div class = "cebian">
        		学院地址:江苏省南京市仙林大学城学林路2号
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