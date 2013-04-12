<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<link rel="stylesheet" href="/static/tuanwei/css/commom.css" type="text/css" />
<div id="main">
<!--
<div id="top">

		<div id="login">	
			<form id="_login" name="login" method="post" action="#">
				<ul>
					<li>用户</li>
					<li>
						<input type="text" style="width: 100px; height: 14px;">
					</li>
					<li>密码</li>
					<li>
						<input type="password" style="width: 100px; height: 14px;">
					</li>
					<li>
						<input type="submit" name="btn" id="button" value="">
					</li>
				</ul>
			</form>
		</div>	
        		<div id="linklabel">
			<ul>
				<li><a href="#" target=_banlk title="腾讯微博"><img src="/static/tuanwei/images/weibo.gif" height="25px;" /></a></li>

				<li><a href="#" target=_banlk title="QQ微博"><img src="/static/tuanwei/images/weibo-qq-icon.png" height="25px;" /></a></li>

                                <li><a href="#" target=_banlk title="团委人人"><img src="/static/tuanwei/images/renren.gif" height="25px;" /></a></li>
			</ul>
		</div>
       
	</div>

  头部开始-->

  
  <div id="header">
  <!--
            <table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" background="">
                   <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                        width="960" height="192">
                        <param name="movie" value="../static/faculty/images/head.swf">
                        <param name="quality" value="high">
                        <embed src="../static/faculty/images/head.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                            type="application/x-shockwave-flash" width="987" height="192"></embed>
                    </object>
              
                </td>
            </tr>
            </table>
       -->     

    <div id="logo_pic">
    <img src="/static/tuanwei/images/logo.gif" height="90px" width="90px" style="padding-bottom:45px; padding-left:20px;"/>
    <img src="/static/tuanwei/images/logo_1.gif" height="192" width="500" />
    </div>

    <div id = "link_search">
      <div id = "text">
        <span>
        <a href = "/" style=" font-family:黑体;">
          学院首页
        </a>
        </span>
        <span style = "color: #fff;"> |</span>
        <span>
        <a href = "http://www.njnu.edu.cn" target="_blank" style=" font-family:黑体;">
          南师大
        </a>
        </span>
      </div>
      <div id = "search">
        <form id="searchForm_1" name="form_1" method="get" action="../../../search" target="_blank">
          <label>
            <input type="hidden" id="searchVpath" name="vpath" value="" />
            <input type="text" name="keyword" id="description" value="搜索..." onfocus="this.value=''" 
       					  	 onBlur="if(this.value==''){this.value='搜索...';}"
       					  	 style = "height: 18px; margin-left: 3px; margin-top: 2px;"/>
            <input type = "submit" name = "button" id = "button" value = "" />
          </label>
        </form>
      </div>
    </div>
    
    
  </div>
  <!--导航开始-->
  <div id="menu">
    <div id="menu_ul">
      <ul id="nav">
      	<li>
          <a href="/tuanwei/">
            首页
          </a>
        </li> 
        <li id="jianjieLi">
          <div>部门简介</div>          	
          <ul id="jianjie">
          	<li class="jianjieC"><a href="/tuanwei/ff8081813b50f9a5013b564548d30002.html">团委简介</a></li>
          	<li class="jianjieC"><a href="/tuanwei/ff8081813df89554013dfc21137d003b.html">组织构架</a></li>
          </ul>
        </li>
        <script type = "text/javascript">
        			$('#jianjieLi').mouseover(function(){
        				$('#jianjie',this).stop().slideDown(300);
        				$('#jianjie',this).stop().animate({height:'80px',width:'124px'},300);
        			}).mouseout(function(){
        				$('#jianjie',this).stop().animate({height:'0px',width:'124px'},150);
        				$('#jianjie',this).stop().slideUp(150);
        			});
        </script>
        <li>
          <a href="/tuanwei/sc000000000000000000000000000144/more/">
            公告通知
          </a>
        </li>
        <li>
          <a href="/tuanwei/sc000000000000000000000000000142/more/">
            团委新闻
          </a>
        </li>
        <li>
          <!-- <a href="/tuanwei/sc000000000000000000000000000153/more/"> -->
          <a href="/tuanwei/ff8081813df89554013dfc233bf6003e.html">
            学生组织
          </a>
        </li>
        <li>
          <a href="/tuanwei/sc000000000000000000000000000154/more/">
            学生社团
          </a>
        </li>
        <!-- <li>
          <a href="/tuanwei/sc000000000000000000000000000155/more/">
            学生活动
          </a>
        </li> -->
        <li>
          <a href="/tuanwei/sc000000000000000000000000000156/more/">
            中北之声
          </a>
        </li>
        <li>
          <a href="/tuanwei/sc000000000000000000000000000157/more/">
            资料下载
          </a>
        </li>
      </ul>
    </div>
  </div>
  <!--导航结束-->
  <!--头部结束-->
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

