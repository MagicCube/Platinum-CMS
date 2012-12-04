<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院新闻中心</title>

<link href = "/static/news/css/new.css" rel = "stylesheet"></link>
<script src = "/static/news/bg/menu.js" type = "text/javascript"></script>
<script src = "/static/news/bg/jquery.js" type = "text/javascript"></script>
<script src="/static/news/bg/jquery-1.3.2.js" type = "text/javascript"></script>
<script src="/static/news/bg/kxbdMarquee.js" type = "text/javascript"></script>

<script type="text/javascript">
	$(function(){
		$('#marquee1').kxbdMarquee({direction:'right'});
		$('#marquee2').kxbdMarquee({isEqual:false});
		$('#marquee3').kxbdMarquee({direction:'down'});
		$('#marquee4').kxbdMarquee({direction:'up',isEqual:false});
	});
</script>
	<style type="text/css">


		#marquee1 {position:relative; margin:0px auto;width:900px;height:140px;overflow:hidden;background:#fff;}
		#marquee1 ul{  margin:5px auto;padding:0; }
		#marquee1 ul li {float:left; padding:0px 1px;}
		#marquee1 ul li img {display:block; width:160px; height:140px;}
		#marquee1 ul li span#title {display:block; width:110px; height:40px;line-height: 9px;font-size: 6px;}
		
		#marquee2 {position:absolute;top:80px;left:400px;width:300px;height:25px;overflow:hidden; background:#EFEFEF;}
		#marquee2 ul li {float:left; padding:0 10px; line-height:25px;}
		
		#marquee3 {position:absolute;top:150px;left:50px;width:60px;height:235px;overflow:hidden;background:#333;border:2px solid #333;}
		#marquee3 ul li {float:left; padding:1px 0;}
		#marquee3 ul li img {display:block;}
		
		#marquee4 {position:absolute;top:150px;left:400px;width:200px;height:200px; overflow:hidden;background:#EFEFEF;}
		#marquee4 ul li {float:left; width:180px; padding:10px; line-height:20px;}
		
	</style>


</head>
<body> 
 <cms:Header path = "news"/>
<div id = "content">
		<div id = "mainContent">
               
			   
			<div id = "textNews">
                <span><img src = "/static/news/image/zhuanti.png"/></span>
			 <cms:PostList id = "ztbdlist" subcategoryId="sc000000000000000000000000000007" count="9" />
          	 <div class="more" >
            <a href="/news/more/" target="_blank">
              ..更多
            </a>
          </div>
			</div>
			<div id = "informs">
	        <span><img src = "/static/news/image/xinwen.png"/></span>			
		    <cms:PostList id = "xwdtlist" subcategoryId="sc000000000000000000000000000006" count="9" />
		    <div class="more" >
            <a href="/news/more/" target="_blank">
              ..更多
            </a>
          </div>
			</div>
			    <div id = "teaching">
				 <span><img src = "/static/news/image/xiaoyuan.png"/></span>
				 <cms:PostList id = "xwdtlist" subcategoryId="sc000000000000000000000000000020" count="9" />
				  <div class="more" >
            <a href="/news/more/" target="_blank">
              ..更多
            </a>
          </div>
			    </div>
                <div id = "email">
				<span><img src = "/static/news/image/gonggao.png"/></span>
				 <cms:PostList id = "xwdtlist" subcategoryId="sc000000000000000000000000000008" count="9" />
				  <div class="more" >
            <a href="/news/more/" target="_blank">
              ..更多
            </a>
          </div>
                </div>
                 <div id = "gongNews">
                 <div id="marquee1" style="margin-top:5px;">
                  <cms:PostList id = "stfclist" subcategoryId="sc000000000000000000000000000145" displayPhoto = "true" count="9" />
                 <!--<ul>
                  <li class = "picture"><a href = "#"><img src = "/static/news/image/s1.jpg"/>我院 “十佳文明寝室”评选活动拉开序幕</a></li>
		          <li class = "picture"><a href = "#"><img src = "/static/news/image/s2.jpg"/>我院2012年招生宣传工作总结与研讨会成功召开</a></li>
		          <li class = "picture"><a href = "#"><img src = "/static/news/image/s3.jpg"/>江苏省教育评估院专家莅临我院进行专业建设抽检预访</a></li>
                  <li class = "picture"><a href = "#"><img src = "/static/news/image/s1.jpg"/>我院 “十佳文明寝室”评选活动拉开序幕</a></li>
		          <li class = "picture"><a href = "#"><img src = "/static/news/image/s2.jpg"/>我院2012年招生宣传工作总结与研讨会成功召开</a></li>
		          <li class = "picture"><a href = "#"><img src = "/static/news/image/s3.jpg"/>江苏省教育评估院专家莅临我院进行专业建设抽检预访</a></li>
                  <li class = "picture"><a href = "#"><img src = "/static/news/image/s1.jpg"/>我院 “十佳文明寝室”评选活动拉开序幕</a></li>
		          <li class = "picture"><a href = "#"><img src = "/static/news/image/s2.jpg"/>我院2012年招生宣传工作总结与研讨会成功召开</a></li>
                  <li class = "picture"><a href = "#"><img src = "/static/news/image/s2.jpg"/>我院2012年招生宣传工作总结与研讨会成功召开</a></li>
                  <li class = "picture"><a href = "#"><img src = "/static/news/image/s2.jpg"/>我院2012年招生宣传工作总结与研讨会成功召开</a></li>
		         </ul>  -->              
                </div>
                </div>
      </div>	
</div>	
<cms:Footer path = "news"/>
</body>
</html>