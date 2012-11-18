<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京师范大学中北学院欢迎您</title>

<link href = "static/common/css/common.css" rel = "stylesheet"></link>
<link href = "static/home/css/home.css" rel = "stylesheet"></link>
<script src = "static/common/scripts/lib/jquery.js" type = "text/javascript"></script>
<script src = "static/common/scripts/src/menu.js" type = "text/javascript"></script>

<!-- FlexSlider start -->
<link rel="stylesheet" href="static/home/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="static/home/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

</head>
<body>
 	 <div id = "header">
		<div id = "linklabel">
			<ul>
				<li><a href = "#">南京师范大学</a></li>
				<li><a href = "#">网站地图</a></li>
				<li><a href = "#">联系我们</a></li>
			</ul>
		</div>
		<div id = "login">	
			<form id = "_login" name = "login" method = "post" action = "#">
				<ul>
					<li>用户</li>
					<li>
						<input type = "text" style = "width: 100px; height: 14px;"/>
					</li>
					<li>密码</li>
					<li>
						<input type = "password" style = "width: 100px; height: 14px;"/>
					</li>
					<li>
						<input type = "submit" name = "btn" id = "button" value = ""/>
					</li>
				</ul>
			</form>
		</div>	
	</div>
	
	<div id = "logo_search">
		<div id = "logo">
			<img src = "static/common/images/logo.jpg" alt = "南京师范大学中北学院"/>
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
	
	<!-- 菜单 -->
	<menu id = "main_menu">
			<li class = "main"><a href = "index.htm">首页</a></li>
			<li class ="main" onclick = "down_1();"><a href = "#">学院概况</a>
				<ul id = "down_1">
					<li class = "subMenu"><a href = "college/CollegeIntroduce.htm">学院简介</a></li>
					<li class = "subMenu"><a href = "college/LeaderIntroduce.htm">领导简介</a></li>
					<li class = "subMenu"><a href = "college/BeautyView.htm">校园美景</a></li>
					<li class = "subMenu"><a href = "college/Symbol.htm">学院标志</a></li>
				</ul>
			</li>
			<li class = "main" onclick = "down_2();"><a href = "#">组织机构</a>
				<ul id = "down_2">
					<li class = "subMenu"><a href = "organization/FacultySet.htm" >系部设置</a></li>
					<li class = "subMenu"><a href = "organization/DepartmentSet.htm">部门设置</a></li>
				</ul>
			</li>
			<li class = "main"><a href = "#" onclick = "down_3();">教学科研</a>
				<ul id = "down_3">
					<li class = "subMenu"><a href = "teaching/Educational.htm">教务处</a></li>
				</ul>
			</li>
			<li class = "main" onclick = "down_4();"><a href = "#">师资队伍</a>
				<ul id = "down_4">
					<li class = "subMenu"><a href = "teacher/Policy.htm">人才政策</a></li>
					<li class = "subMenu"><a href = "teacher/Talents.htm">人才引进</a></li>
					<li class = "subMenu"><a href = "teacher/Inform.htm">人事通知</a></li>
				</ul>
			</li>
			<li class = "main" onclick = "down_5();"><a href = "#">招生就业</a>
				<ul id = "down_5">
					<li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/enrol/index.asp">招生录取</a></li>
					<li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/job/index.asp">就业指导</a></li>
				</ul>
			</li>
			<li class = "main" onclick = "down_6();"><a href = "#">交流合作</a>
				<ul id = "down_6">
					<li class = "subMenu"><a href = "international/International.htm">海外学习计划</a></li>
				</ul>
			</li>
			<li class = "main" onclick = "down_7();"><a href = "#">学生工作</a>
				<ul id = "down_7">
					<li class = "subMenu"><a href = "stuManage/StuManage.htm">学工处</a></li>
					<li class = "subMenu"><a href = "culture/Youth.htm">团委</a></li>				
				</ul>
			</li>
			<li class = "main" onclick = "down_8();"><a href = "#">公共服务</a>
				<ul id = "down_8">
					<li class = "subMenu"><a href = "public/Calendar.htm">校历</a></li>
					<li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/e-book/index.asp">来稿须知</a></li>
					<li class = "subMenu"><a href = "public/TimeTable.htm">作息时间</a></li>
					<li class = "subMenu"><a href = "public/TelSearch.htm">办公电话查询</a></li>
					<li class = "subMenu"><a href = "public/Map.htm">校园地图与交通信息</a></li>
				</ul>
			</li>
			<li class = "main"><a href = "#">技术支持</a></li>
	</menu>
	
	<!-- 正文内容 -->
	<div id = "content">
		<!-- left side -->
		<div id = "left">
			<!-- begin of block_home_slider -->
			 <div class="block_home_slider">
                    		<div id="home_slider" class="flexslider">
                            	<ul class="slides">
                                	<li>
                                    	<a>
                                            <img src="static/temp/1.jpg" height = "260px" alt="" />
                                            <span class="caption">
                                                
                                            </span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                    	<a>
                                            <img src="static/temp/1.jpg" height = "260px" alt="" />
                                            <span class="caption">
                                               
                                            </span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                    	<a>
                                            <img src="static/temp/1.jpg" height = "260px" alt="" />
                                            <span class="caption">
                                                
                                            </span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                    	<a>
                                            <img src="static/temp/1.jpg" height = "260px" alt="" />
                                            <span class="caption">
                                                
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            
                            <script type="text/javascript">
								$(function () {
									$('#home_slider').flexslider({
										animation : 'slide',
										controlNav : true,
										directionNav : true,
										animationLoop : true,
										slideshow : false,
										useCSS : false
									});
									
								});
							</script>
                       </div>
			<!-- end of block_home_slider-->
					
			<div id = "news">
				<span><img src = "static/home/images/news.png" alt = ""/></span>
				<div id = "part1">
					<cms:PostList id="xwdtList" cssClass="PhotoList" subcategoryId="SC000000000000000000000000000006" displayPhoto="true" count="3" />
				</div>
				
				<div id = "part2">
					<cms:PostList id="xwdtList2" subcategoryId="SC000000000000000000000000000006" count="6" />
					<p id = "position_2"><a href = "home/list.jsp">更多...</a></p>
				</div>
			</div>
			
			<div id = "schoolnews">
				<span><img src = "static/home/images/schoolnews.png" alt = ""/></span>
				<div id = "part1">
					<cms:PostList id="xydtList" cssClass="PhotoList" subcategoryId="SC000000000000000000000000000020" displayPhoto="true" count="3" />
				</div>
				
				<div id = "part2">
					<cms:PostList id="xydtList2" subcategoryId="SC000000000000000000000000000020" count="6" />
					<p id = "position_2"><a href = "home/list.jsp">更多...</a></p>
				</div>				
			</div>			
		</div>
		<!-- left end -->
		
		<div id = "right">
			<div id = "topic">
				<span id = "position_1"><img src = "static/home/images/topic.gif" alt = ""/></span>
				<p id = "position_2"><a href = "home/list.jsp">更多...</a></p>
				
				<div id = "right_part">
					<cms:PostList id="ztbdList" cssClass="PhotoSummaryList" categoryId="news" displaySummary="true" displayPhoto="true" count="3" />
				</div>				
			</div>
			
			<div id = "inform">
				<span id = "position_1"><img src = "static/home/images/inform.gif" alt = ""/></span>
				<p id = "position_2"><a href = "home/more.jsp">更多...</a></p>
				<div id = "part2" style = "width : 360px; margin-top: -10px;">
					<cms:PostList id="tzggList" subcategoryId="SC000000000000000000000000000008" count="7" />
				</div>				
			</div> 
			
			<div id = "video">
				<span id = "position_1"><img src = "static/home/images/movie.gif" alt = ""/></span>
				<p id = "position_2"><a href = "home/list.jsp">更多...</a></p>
                <div id = "medium">
                	<img src = "static/home/images/movie.jpg" alt = ""/>
                </div>
			</div>
		</div>
		<!-- right end -->
	</div>

	<!-- 底部 -->
	<div id = "bottom">
		<div id = "view">
			<p>校园美景</p>
			<table >
				<tr>
					<td>
						<a href = "#"><img src = "static/college/image/1.jpg"/></a>
					</td>
					<td>
						<a href = "#"><img src = "static/college/image/2.jpg"/></a>
					</td>
					<td>
						<a href = "#"><img src = "static/college/image/3.jpg"/></a>
					</td>
				</tr>
				
				<tr>
					<td>
						<a href = "#"><img src = "static/college/image/4.jpg"/></a>
					</td>
					<td>
						<a href = "#"><img src = "static/college/image/a.jpg"/></a>
					</td>
					<td>
						<a href = "#"><img src = "static/college/image/b.jpg"/></a>
					</td>
				</tr>
			</table>
		</div>
		
		<div id = "fastlink">
			<p>部门链接</p>
				<table>
				<tr>
					<td>
						<a href = "department/President.htm">院长办公室</a>
					</td>
					<td>
						<a href = "department/BackOffice.htm">后勤保卫处</a>
					</td>
				</tr>		
				<tr>
					<td>
						<a href = "teaching/Educational.htm">教务处</a>
					</td>
					<td>
						<a href = "department/XianDaiJiaoYu.htm">现代教育技术中心</a>
					</td>
				</tr>		
				<tr>
					<td>
						<a href = "#">组织人事处</a>
					</td>
					<td>
						<a href = "department/Assets.htm">资产管理办公室</a>
					</td>
				</tr>	
				<tr>
					<td>
						<a href = "stuManage/stuManage.htm">学生工作处</a>
					</td>
					<td>
						<a href = "department/TangShan.htm">汤山校区综合管理办公室</a>
					</td>
				</tr>	
				<tr>
					<td>
						<a href = "#">财务处</a>
					</td>
				</tr>
			</table>
		</div>
		
		
		<div id = "fastlink" style = "left: 720px;">
			<p>系部链接</p>	
			<table >
				<tr>
					<td>
						<a href = "faculty/XinXi.htm">信息科学与技术系</a>
					</td>
					<td>
						<a href = "faculty/GongXue.htm">工学系</a>
					</td>
				</tr>		
				<tr>
					<td>
						<a href = "faculty/RenWen.htm">人文系</a>
					</td>
					<td>
						<a href = "faculty/MeiShu.htm">美术系</a>
					</td>
				</tr>		
				<tr>
					<td>
						<a href ="faculty/GongGuan.htm">公共管理系</a>
					</td>
					<td>
						<a href = "faculty/YinYue.htm">音乐系</a>
					</td>
				</tr>	
				<tr>
					<td>
						<a href = "faculty/WaiYu.htm">外语系</a>
					</td>
					<td>
						<a href = "faculty/QiangHua.htm">强化部</a>
					</td>
				</tr>			
				<tr>
					<td>
						<a href = "faculty/JingGuan.htm">经济与管理系</a>
					</td>
				</tr>
			</table>	
		</div>
		<div id = "footer">
			<p style = "text-align: center;">南京师范大学中北学院版权所有</p>
		</div>
	</div>

</body>
</html>