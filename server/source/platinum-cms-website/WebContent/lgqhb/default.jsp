<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>南京师范大学中北学院-11级理工强化班</title>
<meta name="author" content="Hutai"/>
<meta name="keywords" content="南京师范大学中北学院理工强化班,中北学院1140理工强化班,中北学院理工强化班,中北学院1140班"/>
<link rel="stylesheet" type="text/css" href="css/normal.css"/>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
$(function(){
	countDown("2015/1/5 23:59:59","#countDown .day","#demo01 .hour","#demo01 .minute","#demo01 .second");
});

function countDown(time,day_elem,hour_elem,minute_elem,second_elem){
	//if(typeof end_time == "string")
	var end_time = new Date(time).getTime(),//月份是实际月份-1
	//current_time = new Date().getTime(),
	sys_second = (end_time-new Date().getTime())/1000;
	var timer = setInterval(function(){
		if (sys_second > 0) {
			sys_second -= 1;
			var day = Math.floor((sys_second / 3600) / 24);
			var hour = Math.floor((sys_second / 3600) % 24);
			var minute = Math.floor((sys_second / 60) % 60);
			var second = Math.floor(sys_second % 60);
			day_elem && $(day_elem).text(day);//计算天
			$(hour_elem).text(hour<10?"0"+hour:hour);//计算小时
			$(minute_elem).text(minute<10?"0"+minute:minute);//计算分
			$(second_elem).text(second<10?"0"+second:second);// 计算秒
		} else { 
			clearInterval(timer);
		}
	}, 1000);
}
</script>
</head>

<body onload="onLoad()">
<div id="all">
	<div id="header">
    	<img class="block floatLeft" src="images/main_03up.png"/>
        <div id="menu" class="floatLeft">
        	<ul>
            	<li class="menuEle floatLeft menuActive"><a href="/lgqhb/">班级首页</a></li>
                <li class="menuEle floatLeft"><a href="/lgqhb/297e990e41b9094c0141b90b89e30002.html">班级介绍</a></li>
                <li class="menuEle floatLeft"><a href="/lgqhb/ff80818141da4d330141db57bc710049.html">班级荣誉榜</a></li>
                <li class="menuEle floatLeft"><a href="/lgqhb/sc000000000000000000000000000397/more/">班级相册</a></li>
                <li class="menuEle floatLeft"><a href="/lgqhb/sc000000000000000000000000000396/more/">资料下载</a></li>
                <li class="menuEle floatLeft"><a href="/lgqhb/ff80818141c5a9bf0141c61f9131000d.html">座  右  铭</a></li>
                <li class="menuEle floatLeft"><a href="/lgqhb/ff80818141c5a9bf0141da2c281501f1.html">友情链接</a></li>
            </ul>
        </div>
    </div>
    
    <div id="indexContent">
    	<div id="album">
        	<div id="albumLeft" class="floatLeft"></div>
            <div id="albumRight" class="floatLeft">
            	<div id="albumInner">
                	<div id="yezi"></div>
                </div>
            </div>
        </div>
        <div id="columns">
        	<div id="columnsLeft" class="floatLeft">
            	<div id="columnsLeftUp">
            		<iframe id="weather" allowtransparency="true" frameborder="0" width="155" height="260" scrolling="no" src="http://tianqi.2345.com/plugin/widget/index.htm?s=2&z=1&t=1&v=1&d=3&k=&f=8&q=1&e=1&a=1&c=58238&w=155&h=250"></iframe>
            	</div>
                <div id="columnsLeftDown">
            		<div id="countDown">
            			<span>离2015年考研还有:<br></span>
            			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="day">-</span>
            			<span>天</span>
            		</div>
            	</div>
            </div>
        	<div id="columnsRight" class="floatLeft">
            	<p class="block" id="classDeclare">
                	作为一名强化部学子，我庄严宣誓：自强不息，团结奋进。追求卓越，永不言败。不断提高自身能力，努力考取理想的研究生学校，争做社会栋梁之才！
                </p>
                <div id="banjixinwen_more">
                	<a href="/lgqhb/sc000000000000000000000000000390/more/">更多...</a>
                </div>
                <div id="banjixinwen">
                	<cms:newPostList id="classXinwen" subcategoryId="sc000000000000000000000000000390"     count="8" />
                </div>
                <div id="tongzhi_more">
                	<a href="/lgqhb/sc000000000000000000000000000395/more/">更多...</a>
                </div>
                <div id="tongzhi">
                	<cms:newPostList id="tongzhiGonggao" subcategoryId="sc000000000000000000000000000395"     count="8" />
                </div>
            </div>
        </div>
    </div>
    
    <div id="footer">
    	<p class="block">南 京 师 范 大 学 中 北 学 院 - 11 级 理 工 强 化 班</p>
    </div>
</div>
</body>
</html>

