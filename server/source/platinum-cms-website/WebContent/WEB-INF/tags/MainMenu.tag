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
            <li class = "subMenu"><a href = "/jiaowu/default.jsp">教务处</a></li>
            <li class = "subMenu"><a href = "http://222.192.5.246/(byn3ui55hhycibfaa4lgghi1)/default2.aspx">教务系统</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_4();"><a href = "#">师资队伍</a>
        <ul>
            <li class = "subMenu"><a href = "/teacher/policy.jsp">人才政策</a></li>
            <li class = "subMenu"><a href = "/teacher/import.jsp">人才引进</a></li>
            <li class = "subMenu"><a href = "/teacher/notice.jsp">人事通知</a></li>
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
            <li class = "subMenu"><a href = "/international/International.htm">海外学习计划</a></li>
        </ul>
    </li>
    <li class = "main" onclick = "down_7();"><a href = "#">学生工作</a>
        <ul>
            <li class = "subMenu"><a href = "/xuegong/default.jsp">学工处</a></li>
            <li class = "subMenu"><a href = "/tuanwei/default.jsp">团委</a></li>             
        </ul>
    </li>
    <li class = "main" onclick = "down_8();"><a href = "#">公共服务</a>
        <ul>
            <li class = "subMenu"><a href = "/service/calendar.jsp">校历</a></li>
            <li class = "subMenu"><a href = "http://zbzs.njnu.edu.cn/e-book/index.asp">来稿须知</a></li>
            <li class = "subMenu"><a href = "/service/guide.jsp">办事指南</a></li>
            <li class = "subMenu"><a href = "/service/time.jsp">作息时间</a></li>
            <li class = "subMenu"><a href = "/service/telphone.jsp">办公电话查询</a></li>
            <li class = "subMenu"><a href = "/service/traffic.jsp">校园地图与交通信息</a></li>
        </ul>
    </li>
    <li class = "main"><a href = "#">技术支持</a>
    	<ul style = "margin-left: -82px;">
            <li class = "subMenu"><a href = "/technology/xiandai.jsp"  style = "margin-left: 60px;">现代教育技术中心</a></li>
         	<li class = "subMenu"><a href = "/technology/ruanyan.jsp"  style = "margin-left: 50px;">软件研发与培训中心</a></li>
        </ul>
    </li>
</menu>