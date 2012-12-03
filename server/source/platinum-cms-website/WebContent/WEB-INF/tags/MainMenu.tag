<%@ tag language="java" pageEncoding="UTF-8"%>

<script src = "/static/common/scripts/src/menu.js" type = "text/javascript"></script>

<!-- 菜单 -->
<menu id = "main_menu">
    <li class = "main"><a href = "/">首页</a></li>
    <li class ="main" onclick = "down_1();"><a href = "#">学院概况</a>
        <ul>
            <li class = "subMenu"><a href = "/introduce/402881e93b44d032013b44d2f5060002.html">学院简介</a></li>
            <li class = "subMenu"><a href = "/introduce/leader.jsp">领导简介</a></li>
            <li class = "subMenu"><a href = "/introduce/view.jsp">校园美景</a></li>
            <li class = "subMenu"><a href = "/introduce/symbol.jsp">学院标志</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_2();"><a href = "#">组织机构</a>
        <ul>
            <li class = "subMenu"><a href = "/organization/facultyset.jsp" >系部设置</a></li>
            <li class = "subMenu"><a href = "/organization/depset.jsp">部门设置</a></li>
        </ul>
    </li>
    <li class = "main"><a href = "#" onclick = "down_3();">教学科研</a>
        <ul>
            <li class = "subMenu"><a href = "/jiaowu/">教务处</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_4();"><a href = "#">师资队伍</a>
        <ul>
            <li class = "subMenu"><a href = "/teacher/402881e93b60acd0013b60ae3bae0002.html">人才政策</a></li>
            <li class = "subMenu"><a href = "/teacher/402881e93b60af69013b60b1decc0002.html">人才引进</a></li>
            <li class = "subMenu"><a href = "/teacher/402881e93b60af69013b60b2b1d80005.html">人事通知</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_5();"><a href = "#">招生就业</a>
        <ul>
            <li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/enrol/index.asp">招生录取</a></li>
            <li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/job/index.asp">就业指导</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_6();"><a href = "#">交流合作</a>
        <ul>
            <li class = "subMenu"><a href = "/international/international.jsp">海外学习计划</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_7();"><a href = "#">学生工作</a>
        <ul>
            <li class = "subMenu"><a href = "/xuegong/">学工处</a></li>
            <li class = "subMenu"><a href = "/tuanwei/">团委</a></li>             
        </ul>
    </li>
    <li class = "main" onclick = "down_8();"><a href = "#">公共服务</a>
        <ul>
            <li class = "subMenu"><a href = "/service/ff8081813b46b724013b46ca7df60005.html">校历</a></li>
            <li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/e-book/index.asp">来稿须知</a></li>
            <li class = "subMenu"><a href = "/service/ff8081813b46b724013b47051b320023.html">办事指南</a></li>
            <li class = "subMenu"><a href = "/service/ff8081813b46b724013b470dedf3002f.html">作息时间</a></li>
            <li class = "subMenu"><a href = "/service/ff8081813b46b724013b470e818a0032.html">办公电话查询</a></li>
            <li class = "subMenu"><a href = "/service/ff8081813b46b724013b470f903c0035.html">校园地图与交通信息</a></li>
        </ul>
    </li>
    <li class = "main"><a href = "#">技术支持</a>
    	<ul style = "margin-left: -82px;">
            <li class = "subMenu"><a href = "/technology/402881e93b60b9e7013b60bd01350005.html"  style = "margin-left: 60px;">现代教育技术中心</a></li>
         	<li class = "subMenu"><a href = "/technology/402881e93b60b9e7013b60bc1d8d0002.html"  style = "margin-left: 50px;">软件研发与培训中心</a></li>
        </ul>
    </li>
</menu>