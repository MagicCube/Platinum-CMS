<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="cms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<title>校园地图</title>

<link href = "/static/common/css/basic.css" rel = "stylesheet"></link>
<link href="/static/common/css/normal.css" rel="stylesheet"/>

</head>
<body>

   			<div id = "layoutright">
				<h2>联系我们</h2>
				<p>联系地址：南京市栖霞区仙林大学城学林路2号</p>
				<p>邮政编码：210046</p>			
  				<!--百度地图容器-->
  				<div style="width:900px;height:900px;border:#ccc solid 1px;" id="dituContent"></div>
				<script type="text/javascript">
   				 //创建和初始化地图函数：
    			function initMap(){
        			createMap();//创建地图
        			setMapEvent();//设置地图事件
        			addMapControl();//向地图添加控件
        			addMarker();//向地图中添加marker
        			addPolyline();//向地图中添加线
    			}
    
    			//创建地图函数：
    			function createMap(){
        			var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        			var point = new BMap.Point(118.923576,32.118646);//定义一个中心点坐标
        			map.centerAndZoom(point,15);//设定地图的中心点和坐标并将地图显示在地图容器中
        			window.map = map;//将map变量存储在全局
    			}
    
    			//地图事件设置函数：
    			function setMapEvent(){
        			map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        			map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        			map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        			map.enableKeyboard();//启用键盘上下左右键移动地图
    			}
    
    			//地图控件添加函数：
    			function addMapControl(){
        		//向地图中添加缩放控件
					var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
					map.addControl(ctrl_nav);
        			//向地图中添加缩略图控件
					var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_TOP_RIGHT,isOpen:1});
					map.addControl(ctrl_ove);
        			//向地图中添加比例尺控件
					var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
					map.addControl(ctrl_sca);
    			}
    
    			//标注点数组
    			var markerArr = [{title:"南京师范大学中北学院老北区",content:"可乘坐166路，177路，138路，东上线公交车。",point:"118.923108|32.119626",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 		,{title:"南京师范大学中北学院新北区",content:"可乘坐166路公交车。",point:"118.914952|32.120512",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 		];
    			//创建marker
   				function addMarker(){
        		for(var i=0;i<markerArr.length;i++){
            		var json = markerArr[i];
            		var p0 = json.point.split("|")[0];
            		var p1 = json.point.split("|")[1];
            		var point = new BMap.Point(p0,p1);
					var iconImg = createIcon(json.icon);
            		var marker = new BMap.Marker(point,{icon:iconImg});
					var iw = createInfoWindow(i);
					var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
					marker.setLabel(label);
            		map.addOverlay(marker);
            		label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            		});
			
				(function(){
					var index = i;
					var _iw = createInfoWindow(i);
					var _marker = marker;
					_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
							}
						})()
        			}
    			}
    			//创建InfoWindow
    			function createInfoWindow(i){
        			var json = markerArr[i];
        			var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        			return iw;
    			}
    			//创建一个Icon
    			function createIcon(json){
        		var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        		return icon;
    			}
				//标注线数组
    			var plPoints = [{style:"solid",weight:4,color:"#f00",opacity:0.6,points:["118.914844|32.12039","118.914413|32.120054","118.91567|32.118555","118.91682|32.11776","118.918437|32.117485","118.921743|32.117118","118.922282|32.118158","118.923037|32.118953","118.923468|32.119534","118.923144|32.119656","118.923108|32.119656","118.923108|32.119687"]}
				,{style:"solid",weight:4,color:"#f00",opacity:1,points:["118.921707|32.117148","118.921635|32.114763","118.921707|32.112316","118.921851|32.11042","118.923576|32.1073","118.918976|32.105771","118.919264|32.105894","118.920701|32.103324","118.924438|32.098308","118.923576|32.097635"]}
		 		];
    			//向地图中添加线函数
    			function addPolyline(){
				for(var i=0;i<plPoints.length;i++){
					var json = plPoints[i];
					var points = [];
				for(var j=0;j<json.points.length;j++){
					var p1 = json.points[j].split("|")[0];
					var p2 = json.points[j].split("|")[1];
					points.push(new BMap.Point(p1,p2));
				}
					var line = new BMap.Polyline(points,{strokeStyle:json.style,strokeWeight:json.weight,strokeColor:json.color,strokeOpacity:json.opacity});
					map.addOverlay(line);
					}
				}
    
    			initMap();//创建和初始化地图
				</script>	
			</div>


</body>
</html>