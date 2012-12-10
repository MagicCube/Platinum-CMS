<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/static/faculty/css/xinxi.css"
	type="text/css" />
<link rel="stylesheet" href="/static/faculty/common/css/faculty.css"
	type="text/css" />
<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/home/css/home.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<script src = "/static/faculty/common/script/jump.js" type = "text/javascript"></script>

<title>南京师范大学中北学院 美术系</title>

</head>
<body>
<cms:Header path = "meishu"/> 

  <!--右侧正文开始-->
  <div id="r_content">
    <!--导航开始-->
    <div id="menu">
      <div id="menu_ul">
        <ul id="nav">
          <li>
            <a href="/meishu/ff8081813b845ff6013b849d3a250014.html">
              系科介绍
            </a>
          </li>
          <li>
           <a class="discipline" href="/meishu/sc000000000000000000000000000074/more/">
              学科建设
            </a>
                        <ul class="sub">
              <li><a href="/meishu/ff8081813b750def013b75326484007d.html" title="学科建设>教师风采">教师风采</a></li>
              <li><a href="/meishu/ff8081813b750def013b753179f0007a.html" title="学科建设>教研组">教研组</a></li>
              <li><a href="/meishu/ff8081813b750def013b753004eb0077.html" title="学科建设>教师作品">教师作品</a></li>
              <li><a href="/meishu/ff8081813b750def013b752c3aa50071.html" title="学科建设>专业设置">专业设置</a></li>
            </ul>
            
          </li>
          <li>
            <a href="/meishu/sc000000000000000000000000000075/more/">
              教学管理
            </a>
          </li>
          <li>
            <a href="/meishu/sc000000000000000000000000000076/more/">
              学生工作
            </a>
          </li>
          <li>
            <a href="/meishu/sc000000000000000000000000000077/more/">
              党团建设

            </a>
          </li>
          <li>
            <a href="/meishu/sc000000000000000000000000000078/more/">
              作品展示
            </a>
          </li>       
          <li>
            <a href="/meishu/sc000000000000000000000000000079/more/">
              班级风采
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!--图片开始-->
    <div id="browsable">
       	<div id="box"> 	
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000200" displayPhoto="true" count="4" />
                            </div>                       
             </div>
			<!-- end of block_home_slider-->
       	 </div>
	</div>

  <!--公告开始-->
    <div id="am">
      <div class="title">&nbsp;&raquo;&nbsp;&nbsp;公告通知</div>
      <cms:PostList id="detail" cssClass="detail" subcategoryId="sc000000000000000000000000000080" count="5" ></cms:PostList>
      <div id = "moer_list" class="list_more"><a href = "/meishu/sc000000000000000000000000000080/more/" >更多...</a></div>
    </div>

  <!--公告结束-->
    <!--新闻开始-->
    <div id="new">
      <div class="title">&nbsp;&raquo;&nbsp;&nbsp;新闻动态</div>
      <cms:PostList id="detail" cssClass="detail" subcategoryId="sc000000000000000000000000000081" count="6" ></cms:PostList>
      <div id = "moer_list" class="list_more"><a href = "/meishu/sc000000000000000000000000000081/more/" >更多...</a></div>
    </div>
    <!--新闻结束-->
    <!--就业开始-->
    <div id="job">
      <div class="title">&nbsp;&raquo;&nbsp;&nbsp;就业指导</div>
      <cms:PostList id="detail" cssClass="detail" subcategoryId="sc000000000000000000000000000082" count="6" ></cms:PostList>
      <div id = "moer_list" class="list_more"><a href = "/meishu/sc000000000000000000000000000082/more/" >更多...</a></div>
    </div>

  <!--就业结束-->
     </div>
  <!--右侧正文结束-->
  
	<cms:Footer path="meishu"></cms:Footer>
	
</div>

</body>
</html>