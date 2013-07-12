<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/static/guoji/css/960.css"/>
<link rel="stylesheet" type="text/css" href="/static/guoji/css/normal.css"/>
<link rel="stylesheet" type="text/css" href="/static/guoji/css/main.css"/>
<script src="/static/guoji/js/jquery.js" type="text/javascript"></script>
<script src="/static/guoji/js/soChange.js" type="text/javascript"></script>
<title>南京师范大学中北学院-对外发展合作与办公室</title>
</head>
<body>
	<cms:Header path = "guoji"/>
	
<!--正文开始-->
<div id="indexContent" class="container_16">
    	<div id="tzgg" class="grid_4">
        	<div id="tzggTitle">
            	<span>通知公告</span>
                <a href="#">more>></a>
            </div>
            <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="205" scrollamount="1" style="height:270px;">
            <ul id="tzggUl"Content>
            	<li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
                <li class="tzggLi">
                	<div class="listIcon"></div>
                    <a href="#">我院与大众书局举行向甘肃学校捐赠图书仪式</a>
                </li>
            </ul>
            </marquee>
        </div>
        <div id="tpxw" class="grid_8">
        	<div class="changeBox_a1" id="change_32">
				<div class="changeDiv" style="display: none;">
					<h3><a href="#" >我院与大众书局举行向甘肃学校捐赠图书仪式</a></h3>
					<a href="#"><img width="460" height="308" src="/static/guoji/images/image01.jpg"></a>
				</div>
				<div class="changeDiv" style="display: none;">
					<h3><a href="#">校领导视察研究中北学院独立校区图书馆建设</a></h3>
					<a href="#"><img width="460" height="308" src="/static/guoji/images/image02.jpg"></a>
				</div>
				<div class="changeDiv" style="display: none;">
					<h3><a href="#">我院首次全国大学英语四六级考试顺利举行</a></h3>
					<a href="#"><img width="460" height="308" src="/static/guoji/images/image03.jpg"></a>
				</div>
				<div class="changeDiv" style="display: block;">
					<h3><a href="#">我院2013年学士学位评定委员会会议召开</a></h3>
					<a href="#"><img width="460" height="308" src="/static/guoji/images/image04.jpg"></a>
				</div>
				<ul class="ul_change_a2">
					<li><span class="">1</span></li>
					<li><span class="">2</span></li>
					<li><span class="">3</span></li>
					<li><span class="on">4</span></li>
				</ul>
			</div>
			<script type="text/javascript">
			$(function () {
			//数字导航切换及自定义当前数字的class
				$('#change_3 .a_bigImg img').soChange({
					thumbObj:'#change_3 .ul_change_a2 span',
					thumbNowClass:'on',//自定义导航对象当前class为on
					changeTime:4000//自定义切换时间为4000ms
				});
			
			//平滑过渡间歇时间为0
				$('#change_33 .a_bigImg img').soChange({
					thumbObj:'#change_33 .ul_change_a2 span',
					thumbNowClass:'on',
					thumbOverEvent:false,
					slideTime:0//平滑过渡间歇为0，意味着直接切换
				});

			//切换对象为其他，这里为包含图片和标题的层
				$('#change_32 div.changeDiv').soChange({//对象指向层，层内包含图片及标题
					thumbObj:'#change_32 .ul_change_a2 span',
					thumbNowClass:'on'//自定义导航对象当前class为on
				});

			//带导航图标及按钮
				$('#change_4 .a_bigImg img').soChange({
					thumbObj:'#change_4 .ul_change_a1 img',//导航图标
					botPrev:'#change_4 .a_last',
					botNext:'#change_4 .a_next'
				});

			//在选项卡上的运用
				$('#change_6 div').soChange({
					thumbObj:'#change_6 h3',
					slideTime:0,
					thumbOverEvent:true,
					autoChange:false//自动切换为 false，默认为true
				});
			
			});
			</script>
        </div>
        <div id="cylj" class="grid_4">
        	<div id="cyljTitle">
            	<span>常用链接</span>
            </div>
            <div class="subTitle">友情链接</div>
            <ul style="padding-bottom:5px;height:105px;">
            	<li class="linkContent">
                	<a href="http://shanghai-ch.usembassy-china.org.cn/" target="_blank">美国领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">英国领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">德国领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">日本领事馆</a>
                </li>
                <li class="linkContent">
                    <a href="#" target="_blank">江苏省外办</a>
                </li>
            </ul>
            
        </div>
    </div>
<!--正文结束-->
	
	<cms:Footer path = "guoji"/>
</body>
</html>