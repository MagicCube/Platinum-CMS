<%@page import="platinum.platform.web.HttpClientCache"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>

<%
HttpClientCache clientCache = new HttpClientCache(request, response);
clientCache.setMaxAge(60);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院欢迎您</title>

<link href="/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/home/css/home.css" rel = "stylesheet"></link>
<script src="/static/common/scripts/lib/jquery.js" type="text/javascript"></script>


</head>
<body>

    <cms:Header/>
    
	<div id = "content">
		<div id = "mainContent">
			<div id = "picNews">
				<span><img src = "images/picNews.png"/></span>
				<div id="browsable">
					<cms:PhotoSlide id="tsztList" cssClass="slides" subcategoryId="sc000000000000000000000000000207" displayPhoto="true" count="4" />
				</div>
			</div>
			<div id = "textNews">
				<span><img src = "images/textNews.png"/></span>
					<cms:PostList id="xwdtList2" cssClass="TextList" subcategoryId="sc000000000000000000000000000006" where="photoURL is null" count="8" />
          		<div id = "more" align = "right">
          			<a href = "#" style = "color: #fff;"><img src = "images/more.gif"/></a>
          		</div>
			</div>
			<div id = "informs">
				<span><img src = "images/informs.png"/></span>
				<ul>
				<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1835" target=_banlk title="我院举办2012级新生法制安全教育讲座">
              		我院举办2012级新生法制安全教育讲座</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1833" target=_banlk title="学院团委、学生联合会招新活动顺利完成">
             		 学院团委、学生联合会招新活动顺利完成</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1832" target=_banlk title="我院2011级本科生和2010级专转本新生图书馆入馆教育工作顺利完成">
              		我院2011级本科生和2010级专转本新生图书馆入馆教育工作顺利完成</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1815" target=_banlk title="我院举行2012年暑期社会实践活动出征仪式">
              		我院举行2012年暑期社会实践活动出征仪式</a>
          		</li>
         	 	<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1831" target=_banlk title="信息系尝试新办法 学生带席卡实名上课">
              		信息系尝试新办法 学生带席卡实名上课</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1805" target=_banlk title="我院第三届学生社团工作推进大会召开">
              		我院第三届学生社团工作推进大会召开</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1794" target=_banlk title="我院2012年暑期社会实践活动动员大会顺利召开">
              		我院2012年暑期社会实践活动动员大会顺利召开</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1793" target=_banlk title="我院人文系首届微电影节闭幕式暨颁奖典礼圆满举行">
              		我院人文系首届微电影节闭幕式暨颁奖典礼圆满举行</a>
          		</li>
          		</ul>	
          		<div id = "more" align = "right">
          			<a href = "#" style = "color: #fff;"><img src = "images/more.gif"/></a>
          		</div>	
			</div>
			<div id = "teaching">
				<span><img src = "images/teaching.png"/></span>
				<ul>
				 <li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1834" target=_banlk title="院领导亲切慰问带训教官和2012级新生">
              		院领导亲切慰问带训教官和2012级新生</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1830" target=_banlk title="喜报：中北学子在江苏省第十一届高等数学竞赛中取得优异成绩">
              		喜报：中北学子在江苏省第十一届高等数学竞赛中取得优异成绩</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1829" target=_banlk title="中北学院2012年新生开学典礼隆重举行">
             		 中北学院2012年新生开学典礼隆重举行</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1826" target=_banlk title="校领导视察中北学院新学期开学情况">
              		校领导视察中北学院新学期开学情况</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1828" target=_banlk title="金秋九月中北学院喜迎2012级新生">
              		金秋九月中北学院喜迎2012级新生</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1825" target=_banlk title="我院2011级汤山学生回迁独立校区工作顺利完成">
              		我院2011级汤山学生回迁独立校区工作顺利完成</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1824" target=_banlk title="我院召开秋季新学期全体教职工大会">
              		我院召开秋季新学期全体教职工大会</a>
          		</li>
          		<li><a href="http://zbzs.njnu.edu.cn/main/main_Show.asp?ArticleID=1823" target=_banlk title="我院召开2012年度暑期学院中心组扩大会议">
             	  	 我院召开2012年度暑期学院中心组扩大会议</a>
          		</li>
          		</ul>
				<div id = "more" align = "right">
          			<a href = "#" style = "color: #fff;"><img src = "images/more.gif"/></a>
          		</div>
			</div>
		</div>
		<div id = "sidebar">
			<div id = "box1">
				 <ul style = "padding-top: 38px;">
					<li style = "width: 100px;">用户名:</li>
					<li><input type = "text" size = "14"/></li>
				</ul>
				<ul>
					<li style = "width: 100px;  padding-right: 12px;">密码:</li>
					<li><input type = "password" size = "14"/></li>
				</ul>
				<ul>
					<li style = "width: 100px;">验证码:</li>
					<li><input type = "text" size = "5"/></li>
					<li><img src='http://zbvip.njnu.edu.cn/vip/inc/code.asp' width="38" height="20" border='0' align='absmiddle'onclick="javascript:this.src='http://zbvip.njnu.edu.cn/vip/inc/code.asp?'+Math.random();"/>
					</li>
				</ul>
				<ul>
					<li style = "margin-left: 30px;"><button type = "button">登陆</button></li>
					<li style = "margin-left: 10px;"><button type = "button">取消</button></li>
				</ul>
			</div>
			
			<div id = "box3">
				<span id = "pic" style = "padding-top: 40px;"><img src = "images/mail.gif"/><a href = "#">　院长邮箱</a></span>
				<span id = "pic"><img src = "images/mail.gif"/><a href = "#">　书记邮箱</a></span>			
			</div>
			
			<div id = "box2">
				<ul id = "link">
					<li><a href = "http://222.192.5.246/(wsltik45lxcbvm55u3v1b245)/default2.aspx">教务平台</a></li>
					<li><a href = "http://zbzs.njnu.edu.cn/enrol/index.asp">招生信息</a></li>
					<li><a href = "http://zbzs.njnu.edu.cn/job/index.asp">就业指导</a></li>
					<li><a href = "#">学院电话</a></li>
					<li><a href = "#">人才招聘</a></li>
					
				</ul>
			</div>
			<select name = "facluty" style = "margin:5px 0 0 5px; width: 165px;">
					<option value = "系部站点" selected = "selected">系部站点</option>
					<option value = "信息科学与技术系">信息科学与技术系</option>
					<option value = "经济与管理系">经济与管理系</option>
					<option value = "公共管理系">公共管理系</option>
					<option value = "强化部">强化部</option>
					<option value = "人文系">人文系</option>
					<option value = "外语系">外语系</option>
					<option value = "工学系">工学系</option>
					<option value = "美术系">美术系</option>
					<option value = "音乐系">音乐系</option>
				</select>
			<select name = "department" onChange="MM_jumpMenu('parent',this,1)" style = "margin:5px 0 0 5px; width: 165px;">
					<option value = "#" selected>部门站点</option>
					<option value="YuanBanDangWei.html">院长办公室（党委办公室）</option>
					<option value="">教务处</option>
					<option value="">学生工作处(部)团委</option>
					<option value="CaiWuChu.html">财务处</option>
					<option value="">组织人事处</option>
					<option value="">后勤保卫处</option>
					<option value="ZiChanGuanLi.html">资产管理办公室</option>
					<option value="XianDaiJiaoYu.html">现在教育技术中心</option>
					<option value="">图书资料室</option>
					<option value="#">汤山校区综合管理办公室</option>
			</select>
			
		</div>
	</div>
	
    
    
    <cms:Footer/>

</body>
</html>