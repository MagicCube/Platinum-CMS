<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/home/css/home.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<script src="/static/common/scripts/src/IE6.js" type="text/javascript"></script>

<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->
<link rel="stylesheet" href="/static/tuanwei/css/tuanwei.css" type="text/css" />
<link rel="stylesheet" href="/static/tuanwei/css/galley.css" type="text/css" />

<script src="/static/tuanwei/script/jquery-1.3.1.min.js" type = "text/javascript"></script>
<script src = "/static/tuanwei/script/jump.js" type = "text/javascript"></script>

<script src="/static/tuanwei/script/kxbdMarquee.js" type = "text/javascript"></script>
<script src="/static/tuanwei/script/galley.js" type = "text/javascript"></script>

<script type="text/javascript">
	$(function(){
		$('#marquee1').kxbdMarquee({direction:'right'});
		$('#marquee2').kxbdMarquee({isEqual:false});
		$('#marquee3').kxbdMarquee({direction:'down'});
		$('#marquee4').kxbdMarquee({direction:'up',isEqual:false});
	});
</script>
	<style type="text/css">

		ul {list-style:none;}
		#marquee1 {position:relative; margin:0 auto;width:900px;height:200px;overflow:hidden;background:#fff;}
		#marquee1 ul li {float:left; padding:5px 1px;}
		#marquee1 ul li img {display:block; width:220px; height:170px;}
		#marquee1 ul li span#title {display:block; width:100px; height:10px;}
		
		#marquee2 {position:absolute;top:80px;left:400px;width:300px;height:25px;overflow:hidden; background:#EFEFEF;}
		#marquee2 ul li {float:left; padding:0 10px; line-height:25px;}
		
		#marquee3 {position:absolute;top:150px;left:50px;width:60px;height:235px;overflow:hidden;background:#333;border:2px solid #333;}
		#marquee3 ul li {float:left; padding:1px 0;}
		#marquee3 ul li img {display:block;}
		
		#marquee4 {position:absolute;top:150px;left:400px;width:200px;height:200px; overflow:hidden;background:#EFEFEF;}
		#marquee4 ul li {float:left; width:180px; padding:10px; line-height:20px;}
		
	</style>

<style>
a img{ border:none}
</style>
<title>共青团南京师范大学中北学院委员会</title>
</head>

<body onload="tuanwei()"> 

  <cms:Header path = "tuanwei"/>
<!--右侧正文开始-->
  <div id="content">
    <div class="line_1">
      <div id="browsable">
        <div id="box">
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider">         	
             	<cms:XibuPhotoSlide id="gallery" subcategoryId="sc000000000000000000000000000143" displayPhoto="true" count="4" />	                       
             </div>
			<!-- end of block_home_slider-->
        </div>
      </div>
      <!--新闻开始-->
      <div id="am">

        <div id="headline">
        <cms:PostList id = "twxwlist" subcategoryId="sc000000000000000000000000000143" displaySummary = "true" count="1" />
        </div>
        <div id="headline1">
         <cms:PostList id = "twxwlist" subcategoryId="sc000000000000000000000000000142" count="6" />
         <div class="more" >
            <a href="/tuanwei/sc000000000000000000000000000142/more/" target="_blank">
              	更多...
            </a>
          </div>
           <br/>
        </div>
      </div>
    </div>
    <!--新闻结束-->
    <div class="line_2">
     
      <!--通知开始-->
      <div id="new">
        <div class="title" style="background-image:url(/static/tuanwei/images/tagg_bg.gif);background-repeat:repeat-x; width:95%; margin-left:20px;">
        <p style="background-image:url(/static/tuanwei/images/tag_bg.gif); background-position:0px 0px;background-repeat:no-repeat; height:37px; color:#fff; padding-left:4px;text-shadow: 4px 4px 3px #000;">&nbsp;公告通知</p></div>
         <cms:PostList id = "twtzlist" subcategoryId="sc000000000000000000000000000144" count="10" />
         <div class="more" >
            <a href="/tuanwei/sc000000000000000000000000000144/more/" target="_blank">
              	更多...
            </a>
          </div>
      </div>
      <!--通知结束-->
      <div style="width:236px;height:386px;float:left">
       <!--院报开始-->
      <div id="paper" style="height:150px;">
        <div class="title" style=" margin-left:5px;background-image:url(/static/tuanwei/images/tagg_bg.gif); background-repeat:repeat-x;width:95%;"><p style="background-image:url(/static/tuanwei/images/tag_bg.gif); background-repeat:no-repeat; height:37px; color:#fff;text-shadow: 4px 4px 3px #000;">&nbsp;中北之声</p></div>
        <div style="margin:0 auto; text-align:center;">
          <a href="/tuanwei/sc000000000000000000000000000156/more/" >
            <img src="/static/tuanwei/images/paper.jpg" width="150px" height="160px" style="padding-top:10px; margin:0 auto;" />
           </a>
        </div>
      </div>    
      <!--院报结束-->
      <!--社团开始-->
      <div id="shetuan" style="height:180px;width: 220px;float: left;margin-top:5px;margin-left: 10px;border: 3px solid #D41F00;-radius: 10px;-moz-border-radius: 10px;-webkit-border-radius: 10px;background-color: white;padding-top: 10px;padding-bottom: 10px;">
        <div class="title" style=" margin-left:5px;background-image:url(/static/tuanwei/images/tagg_bg.gif); background-repeat:repeat-x;width:95%;"><p style="background-image:url(/static/tuanwei/images/tag_bg.gif); background-repeat:no-repeat; height:37px; color:#fff;text-shadow: 4px 4px 3px #000;">&nbsp;学生组织</p></div>
        <div style="margin:0 auto; text-align:center;postion:relative;width:220px;height:155px;">
        	<div style="position:relative;margin-left:10px;width:200px;height:200px;">
        		<a href="/tuanwei/ff8081813e30e4f2013e37459ef4000e.html"><img title="社团联合会" src="/static/tuanwei/images/image1.jpg" width="85px" height="70px" style="position:absolute;top:5px;left:103px;"/></a>
        		<a href="/tuanwei/ff8081813e30e4f2013e37443b93000b.html"><img title="同心青协" src="/static/tuanwei/images/image2.jpg" width="85px" height="70px" style="position:absolute;top:5px;left:12px;"/></a>
        		<a href="/tuanwei/ff8081813e30e4f2013e37467a640011.html"><img title="中北学生会" src="/static/tuanwei/images/image3.jpg" width="85px" height="70px" style="position:absolute;top:80px;left:103px;"/></a>
        		<a href="/tuanwei/ff8081813e30e4f2013e374706ab0014.html"><img title="社区自管会" src="/static/tuanwei/images/image4.jpg" width="85px" height="70px" style="position:absolute;top:80px;left:12px;"/></a>
        		<!-- <img title="就业与职业发展协会" src="/static/tuanwei/images/image5.png" width="50px" height="50px" style="position:absolute;top:90px;left:85px;"></img> -->
        	</div>
        </div>
      </div>    
      <!--社团结束-->
      </div>
      <!--特色专题开始-->
      <div id="activities" >
        <div class="title" style=" margin-left:5px;background-image:url(/static/tuanwei/images/tagg_bg.gif); background-repeat:repeat-x;width:95%;"><p style="background-image:url(/static/tuanwei/images/tag_bg.gif); background-repeat:no-repeat; height:37px; color:#fff;text-shadow: 4px 4px 3px #000;">&nbsp;特色专题</p></div>
        <div style="text-align:center;">
   			<cms:PostList id = "twtzlist" subcategoryId="sc000000000000000000000000000187" displayPhoto="true" count="6" />
        </div>
      </div>
      
      <!--特色专题结束-->
      
      <!-- 网络平台开始 -->
      <div id="online">
      	<div class="title" style=" margin-left:5px;background-image:url(/static/tuanwei/images/tagg_bg.gif); background-repeat:repeat-x;width:95%;"><p style="background-image:url(/static/tuanwei/images/tag_bg.gif); background-repeat:no-repeat; height:37px; color:#fff;text-shadow: 4px 4px 3px #000;">&nbsp;网络平台</p></div>
    	<div id="linkLabel">
			<ul>
				<li><a href="http://e.weibo.com/u/2430329182?ref=http%3A%2F%2Fs.weibo.com%2Fweibo%2F%2525E4%2525B8%2525AD%2525E5%25258C%252597%2525E5%2525AD%2525A6%2525E9%252599%2525A2%2525E5%25259B%2525A2%2525E5%2525A7%252594%3Ftopnav%3D1%26wvr%3D5%26b%3D1" target="_banlk" title="中北团委"><img src="/static/tuanwei/images/weibo.gif" height="45" width="45"/></a></li>

				<li><a href="http://t.qq.com/nanjingshi7599" target="_banlk" title="中北团委"><img src="/static/tuanwei/images/qq.gif" height="45" width="45" /></a></li>

                <li><a href="http://page.renren.com/601566662" target="_banlk" title="团委人人"><img src="/static/tuanwei/images/renren.gif" height="45" width="45"/></a></li>
			</ul>
    	</div>
      </div>
      <!-- 网络平台结束 -->
      
    </div>
    <!--底部链接开始-->
    <div class="line_3">
     
      
      <div class="link_2">
  <!--    <div style="width:20px; padding-top:20px;padding-left:10px;padding-right:10px;float:left; text-align:center;">活动剪影</div>-->
                  <div class="title" style="background-image:url(/static/tuanwei/images/tagg_bg.gif); background-repeat:repeat-x;margin-left:20px;width:95%;padding-bottom:10px;"><p style="background-image:url(/static/tuanwei/images/tag_bg.gif); background-repeat:no-repeat; height:37px; color:#fff;text-shadow: 4px 4px 3px #000;">&nbsp;活动剪影</p></div>
		<div id="marquee1">
		     <cms:PostList id = "stfclist" subcategoryId="sc000000000000000000000000000145" displayPhoto = "true" count="9" />
        </div>
      </div>
    </div>
    


	<cms:Footer path = "tuanwei"/>
</body>
</html>
