<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<link href = "/static/common/css/common.css" rel = "stylesheet"></link>

<div id = "header">
    <div id = "weather">
        <iframe src="http://m.weather.com.cn/m/pn5/weather.htm " width="200" height="30" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
    </div>
  	
    <!-- <ul id="mail">
           		<li><a href = "http://zbvip.njnu.edu.cn/vip/mail/add-mail.asp?who=yz">院长邮箱</a></li>
           		<li><a href = "http://zbvip.njnu.edu.cn/vip/mail/add-mail.asp?who=sj">书记邮箱</a></li>
     </ul> -->
     
     <div id="linklabel">
     	<ul>
            <li><a href = "http://www.njnu.edu.cn/">南京师范大学</a></li>
            <li><a href = "/service/webmap.jsp">网站地图</a></li>
            <li><a href = "/introduce/contact.jsp">联系我们</a></li>
        </ul>
     </div>

</div>

<div id = "logo_search">
    <div id = "logo">
        <img src = "/static/common/images/logo.jpg" alt = "南京师范大学中北学院"/>
    </div>
    
    <div id = "search">
        <div id = "setting">
            <span><a href = "#">设为主页 </a></span>|<span><a href = "#"> English Version </a></span>
        </div>
        
        <div id = "searchbar">
            <form id = "_search" name = "seacrh" method = "post" action = "#" >             
                <input type = "text" id = "input" />    
                <input type = "submit" id = "button" value = "" name = "button"/>               
            </form> 
        </div>
    </div>  
</div>

<cms:MainMenu/>

<div id="body">
<% if (request.getParameter("displaySideBar").equals("true")) {%>
	<div id="sideBar">
		<div id = "sideBarin">
		<div id = "title_style"><strong>要文回顾</strong><span style= "float: right;"><a href = "/news/more/">更多...</a></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='<%= request.getParameter("path")%>' count="9" />
		<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='<%= request.getParameter("path")%>' subcategoryId="rank" count="9" />
		</div>
	</div>
	<div id = "bodyContent">
<%}%>