<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教务处</title>
<link href = "/static/jiaowu/css/jiaowu.css" rel = "stylesheet"></link>
<script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/static/jiaowu/js/gallery.js"></script>
</head>
<body>
	<cms:Header path = "jiaowu"/>
	
<!--正文开始-->
<div id="ja-containerwrap-fr">       
          <!-- BEGIN: CONTENT -->
          <div id="left_part">
           <div id="left_column_1">
           
           <div class="category_1" id="firstCate">
           <div class="category_name">
              <h3>教务新闻</h3>
              </div>
              	<cms:PostList id = "jwxwlist" cssClass = "latestnews_menu" subcategoryId = "sc000000000000000000000000000046" count = "6"/>
                <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000046/more/">更多...</a></p>
              </div>
      
            <div class="category_1">
            <div class="category_name">
              <h3>教务管理</h3>
            </div>
              <cms:PostList id = "jwgllist" cssClass = "menu" subcategoryId = "sc000000000000000000000000000047" count = "6"/>
              <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000047/more/">更多...</a></p>
            </div>
            

            
            <div class="category_1">
            <div class="category_name">
              <h3>实践教学</h3>
            </div>
               <cms:PostList id = "sjjxlist" cssClass = "menu" subcategoryId = "sc000000000000000000000000000048" count = "6"/>
               <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000048/more/">更多...</a></p>
            </div>
            
           </div>
           
           <div id="left_column_2">
           
           <div id="tupian">
           		<div id="home_slider" class="flexslider">
           			<div id="container" style="width:100%;height:100%;position:relative;">
                		<cms:PhotoSlide id="tupianList" cssClass="slides" subcategoryId="sc000000000000000000000000000317" displayPhoto="true" count="4" />
                	</div> 
                </div>
           </div>
           
           <div class="category_1">
           <div class="category_name">
              <h3>教学评估</h3>
            </div>
              <cms:PostList id = "sjjxlist" cssClass = "latestnews_menu" subcategoryId = "sc000000000000000000000000000049" count = "6"/>
              <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000049/more/">更多...</a></p>
            </div>

            
            <div class="category_1">
            <div class="category_name">
              <h3>教学研究</h3>
            </div>
              <cms:PostList id = "jxyjlist" cssClass = "menu" subcategoryId = "sc000000000000000000000000000050" count = "6"/>            
              <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000050/more/">更多...</a></p>
            </div>
            

            <!--
            <div class="category_1">
            <div class="category_name">
             <h3>国际交流与合作</h3>
             </div>
            	<cms:PostList id = "jxyjlist" cssClass = "menu" subcategoryId = "sc000000000000000000000000000051" count = "6"/>
                <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000051/more/">更多...</a></p>
            </div> --> 
           
           </div>
           
          </div>
          <!-- END: CONTENT -->

                  
          <!-- BEGIN: RIGHT COLUMN -->
          <div id="right_part">
            <div class="moduletable_menu" id="tongzhi" >
              <h3 style="margin-top:10px;">通知与公告</h3>
             <cms:PostList id = "zztglist" cssClass = "menu" subcategoryId = "sc000000000000000000000000000045" displayDate="true" count = "7"/>  
            </div>
            
			<hr style="text-align:center; width:90%; margin-left:10px;" />
			
		  <div class="moduletable_menu" id="guoji" >
              <h3 style="margin-top:10px;">国际交流与合作</h3>
              <cms:PostList id = "jxyjlist" cssClass = "menu" subcategoryId = "sc000000000000000000000000000051" count = "4"/>
              <p id = "position_2"><a href = "/jiaowu/sc000000000000000000000000000051/more/">更多...</a></p>
          </div>
            　　
            <hr style="text-align:center; width:90%; margin-left:10px;" />
            
            <div class="moduletable_menu">
              <h3>教务处简介</h3>
              <ul class="menu">
                <li class="link_2">
                  <a href="/jiaowu/ff8081813da0a022013da0a9630b001a.html">
                    <span>教务处领导</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="/jiaowu/ff8081813da0a022013da0a9f687001d.html">
                    <span>行政管理科</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="/jiaowu/ff8081813da0a022013da0ab01d00020.html">
                    <span>信息管理科</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="/jiaowu/ff8081813da0a022013da0aba02e0023.html">
                    <span>综合管理科</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="/jiaowu/ff8081813da0a022013da0ac0fd40026.html">
                    <span>国际交流与合作办公室</span>
                  </a>
                </li>
              </ul>
            </div>
            
            <hr style="text-align:center; width:90%; margin-left:10px;" />
            
            <div class="moduletable_menu">
              <h3>常用菜单</h3>
              <ul class="menu">
                <li class="link_2">
                  <a href="http://222.192.5.246/" target="_blank">
                    <span>教务系统</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="http://zbvip.njnu.edu.cn/vip/">
                    <span>教工之家</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="/index.php?option=com_newsfeeds&amp;view=category&amp;id=9&amp;Itemid=12">
                    <span>教育动态</span>
                  </a>
                </li>
                <li class="link_2">
                  <a href="/jiaowu/sc000000000000000000000000000052/more/">
                    <span>资料下载</span>
                  </a>
                </li>
              </ul>
            </div>
           
            
          </div>
          <!-- END: RIGHT COLUMN -->          

</div>
<!--正文结束-->
	
	<cms:Footer path = "jiaowu"/>
</body>
</html>