<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/tags2" %>

<link href="../static/common/css/css.css" rel="stylesheet" type="text/css" />
 <div class="header">
  	<div class="logo" onclick="location.href='../../../';"><img src="../../../static/common/images/logo.jpg" height="40" /></div>
  	<div class="news" onclick="location.href='../../../mob/news';"><img src="../../../static/common/images/news.gif"  height="34" /></div>
  </div>
    <div class="weather">
   <p class="right"> 
   <script language='javaScript'>
    today = new Date();
    function initArray() {
     this.length = initArray.arguments.length;
     for ( var i = 0; i < this.length; i++)
      this[i + 1] = initArray.arguments[i]
    }
    var d = new initArray('星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六');
    var year = (today.getYear()>1000)?today.getYear():today.getYear()+1900;
    document.write(year,'年',today.getMonth()+1,'月',today.getDate(),'日　',d[today.getDay() + 1]);
   </script>
   </p>
   
  </div>