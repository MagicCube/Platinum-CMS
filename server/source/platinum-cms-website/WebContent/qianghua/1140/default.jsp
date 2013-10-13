<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>南京师范大学中北学院-11级理工强化班</title>
<link rel="stylesheet" type="text/css" href="css/normal.css"/>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<script type="text/javascript">
function onLoad(){
	var date = document.getElementById("date");
	date.innerHTML=new Date().toLocaleDateString();
}
</script>
</head>

<body onload="onLoad()">
<div id="all">
	<div id="header">
    	<img class="block floatLeft" src="images/main_03up.png"/>
        <div id="menu" class="floatLeft">
        	<ul>
            	<li class="menuEle floatLeft menuActive"><a href="#">班级首页</a></li>
                <li class="menuEle floatLeft"><a href="#">班级介绍</a></li>
                <li class="menuEle floatLeft"><a href="#">班级荣誉榜</a></li>
                <li class="menuEle floatLeft"><a href="#">班级相册</a></li>
                <li class="menuEle floatLeft"><a href="#">同学信息</a></li>
                <li class="menuEle floatLeft"><a href="#">留  言  本</a></li>
                <li class="menuEle floatLeft"><a href="#">友情链接</a></li>
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
            		<iframe id="weather" allowtransparency="true" frameborder="0" width="155" height="250" scrolling="no" src="http://tianqi.2345.com/plugin/widget/index.htm?s=2&z=1&t=1&v=1&d=3&k=&f=8&q=1&e=1&a=1&c=58238&w=155&h=250"></iframe>
            	</div>
                <div id="columnsLeftDown">
            		<span id="date"></span>
            	</div>
            </div>
        	<div id="columnsRight" class="floatLeft">
            	<p class="block" id="classDeclare">
                	作为一名强化部学子，我庄严宣誓：自强不息，团结奋进。追求卓越，永不言败。不断提高自身能力，努力考取理想的研究生学校，争做社会栋梁之才！
                </p>
            </div>
        </div>
    </div>
    
    <div id="footer">
    	<p class="block">南 京 师 范 大 学 中 北 学 院 - 11 级 理 工 强 化 班</p>
    </div>
</div>
</body>
</html>

