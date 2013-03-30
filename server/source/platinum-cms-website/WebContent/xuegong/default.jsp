<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href = "/static/home/css/home.css" rel = "stylesheet"></link>
<script src = "/static/common/scripts/lib/jquery.js" type = "text/javascript"></script>	
<!-- FlexSlider start -->
<link rel="stylesheet" href="/static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="/static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="../static/xuegong/js/slide.js"></script>
<script type="text/javascript" src="../static/xuegong/js/huiyin.js"></script>
<!-- FlexSlider end -->

<link href = "/static/xuegong/css/xuegong.css" rel = "stylesheet"/>

<title>学工处</title>
</head>
<body>

	<cms:Header path = "xuegong"/>

	<div id = "xgcontent">
		<div id = "mainContent">
                <div id = "gongNews">
                <span><img src = "/static/xuegong/images/gonggao.png"/></span>
          		<cms:PostList id = "ggtzlist" subcategoryId = "sc000000000000000000000000000028" count = "8"/>
                <span class="mainMore"><a href = "/xuegong/sc000000000000000000000000000028/more/">更多>></a></span>
                </div>
                
                
				<div id="browsable">			
				 	<div class="block_home_slider" >
                    		<div id="home_slider" class="flexslider">
                            	<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000206" displayPhoto="true" count="4" />
                            	
                            </div>                       
            		 </div>			
				</div>

			<div id = "textNews">
                <span><img src = "/static/xuegong/images/gongshi.png"/></span>        		
        		<cms:PostList id = "gslmlist" subcategoryId = "sc000000000000000000000000000029" count = "8"/>         		
				 <span class="mainMore" ><a href = "/xuegong/sc000000000000000000000000000029/more/">更多>></a></span>
			</div>
			
			<div id = "informs">
	        <span class="spanimg"><img src = "/static/xuegong/images/xinwen.png"/></span>			
          		<cms:PostList id = "xwdtlist" subcategoryId = "sc000000000000000000000000000030" count = "8"/>   		
				 <span class="mainMore"><a href = "/xuegong/sc000000000000000000000000000030/more/">更多>></a></span>
			</div> 
            <div id = "email">
			<span class="spanimg"><img src = "/static/xuegong/images/zhuanti.png"/></span>          		
          		<cms:PostList id = "ztbdlist" subcategoryId = "sc000000000000000000000000000032" count = "8"/>        		        		
            <span class="mainMore"><a href = "/xuegong/sc000000000000000000000000000032/more/">更多>></a></span>
            </div>
            
            <div id = "teaching">
			<span class="spanimg"><img src = "/static/xuegong/images/xibu.png"/></span>
         		<cms:PostList id = "xbkxlist" subcategoryId = "sc000000000000000000000000000031" count = "5"/>         		
				<span class="mainMore"><a href = "/xuegong/sc000000000000000000000000000031/more/">更多>></a></span>
				<div id="huiyinbi"></div>
			</div>
			<div id="huiyintb">
			<div id="subdiv">
			<div id="exittb"></div>
			<table>
					<tr>
                    <td width="101" align="center">称呼姓名：</td>
                    <td width="180"><input name="Books_Name" type="text" class="input">
                        <font color="red"> *</font></td>
                    <td width="94" align="center">内容：<font color="red">*</font></td>
                    <td width="250" rowspan="4"><textarea name="Books_Info" rows="9" cols="60" class="text"></textarea></td>
                  </tr>
                  <tr>
                    <td align="center">留言标题：</td>
                    <td><input name="Books_title" type="text" class="input" id="Books_title">
                        <font color="red"> *</font></td>
                    <td></td>
                  </tr>
               
                  <tr>
                    <td colspan="3" align="center"><input name="submit" type="submit" class="bmit" value=" 添加留言 ">
                        <input name="reset" type="reset" class="bmit" value=" 重新输入 "></td>
                  </tr>
		      </table>
            </div></div>
      </div>	
</div>


	<cms:Footer path = "xuegong"/>


</body>
</html>