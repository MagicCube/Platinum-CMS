<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<link href = "/static/common/css/common.css" rel = "stylesheet"></link>

<div id = "header">
     <div id="linklabel">
     	<ul>
            <li><a href = "http://www.njnu.edu.cn/">南京师范大学</a></li>
            <li><a href = "/service/webmap.jsp">网站地图</a></li>
            <li><a href = "/introduce/contact.jsp">联系我们</a></li>
        </ul>
     </div>
     
     <div id="review">
     	<ul>
            <li><a href="javascript:void(0)" onClick="this.style.behavior='url (#default#homepage)';this.setHomePage('');">设为主页</a></li>
            <li><a href="javascript:void(0)" onClick=" window.external.AddFavorite(document.location.href, document.title);">加入收藏</a></li>
        </ul>
     </div>
     

</div>

<div id = "logo_search">
    <div id = "logo">
        <img src = "/static/common/images/logo.png" alt = "南京师范大学中北学院"/>
    </div>
    
    <div id = "search">
        <div id = "setting">
            <span><a href = "http://zbzs.njnu.edu.cn/"> 旧版回顾 </a></span>|<span><a href = "#"> English Version </a></span>
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
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' count="9" />
		<div id = "title_style"><strong>新闻排行榜</strong><span style= "float: right;"></span></div>
		<cms:PostList id="ywhgList" cssClass="TextList" categoryId='news' subcategoryId="rank" count="9" />
		</div>
	</div>
	<div id = "bodyContent">
<%}%>