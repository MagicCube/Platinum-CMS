<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>

<link href = "/static/jiaowu/css/common.css" rel = "stylesheet"/>
<script src="/static/common/scripts/src/IE6.js" type="text/javascript"></script>

<div id = "header">
  <div id = "_logo">
  	<img src="/static/jiaowu/images/logo.png">
  	<img src="/static/jiaowu/images/jiaowu.png" >
  </div>
  <div id = "link_search">
    <div id = "text">
      <span>
      <a href = "/">
        学院首页
      </a>
      </span>
      <span style = "color: #fff;"> |</span>
      <span>
      <a href = "http://www.njnu.edu.cn/" target="_blank">
        南师大
      </a>
      </span>
    </div>
    <div id = "search">
      <form id="searchForm_1" name="form_1" method="get" action="../../../search" target="_blank">
        <label>
          <input type="text" id="description" name="keyword" value="搜索..." onfocus="this.value=''" 
       					  	 onBlur="if(this.value==''){this.value='搜索...';}"
       					  	 style = "height: 18px; margin-left: 3px; margin-top: 2px;"/>
          <input type = "submit" name = "button" id = "button" value = "" />
        </label>
      </form>
    </div>
  </div>
</div>
<!--头部结束-->
<!--菜单开始-->
<div id="ja-mainnavwrap">
  <div id="ja-mainnav" class="clearfix">
    <ul class="menu">
      <li id="first" class="">
        <a href="/jiaowu/default.jsp">
          <span>教务处首页</span>
        </a>
      </li>
      <li class="item4">
        <a href="/jiaowu/sc000000000000000000000000000045/more/">
          <span>通知与公告</span>
        </a>
      </li>
      <li class="item3">
        <a href="/jiaowu/sc000000000000000000000000000046/more/">
          <span>教务新闻</span>
        </a>
      </li>
      <li class="item5">
        <a href="/jiaowu/sc000000000000000000000000000047/more/">
          <span>教务管理</span>
        </a>
      </li>
      <li class="item16">
        <a href="/jiaowu/sc000000000000000000000000000048/more/">
          <span>实践教学</span>
        </a>
      </li>
      <li class="item6">
        <a href="/jiaowu/sc000000000000000000000000000049/more/">
          <span>教学评估</span>
        </a>
      </li>
      <li class="item17">
        <a href="/jiaowu/sc000000000000000000000000000050/more/">
          <span>教学研究</span>
        </a>
      </li>
      <li class="item7">
        <a href="/jiaowu/sc000000000000000000000000000051/more/">
          <span>国际交流与合作</span>
        </a>
      </li>
      <li class="end">
        <a href="/jiaowu/sc000000000000000000000000000186/more/">
          <span>联系我们</span>
        </a>
      </li>
    </ul>
  </div>
</div>
<!--菜单结束-->


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