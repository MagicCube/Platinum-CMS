$(document).ready(function(){
	setTimeout(function () { 
        $('#guoqing').fadeOut("slow");
    }, 7000);
	$("#homemenu ul#middleul #indexItem").hover(
			function () {
		    	
		  	},
		  	function () {
		  		$("#homemenu ul#middleul #indexItem a").css({"color":"#000"});
		  	}
		);	//首页hover
	
	$("#homemenu ul#middleul #menuLeft").hover(
		function () {
	    	$(this).css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
	  	},
	  	function () {
	  		$(this).css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
	  	}
	); //菜单左边小条
	
	$("#homemenu ul#middleul li.#xxgk").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.xygk").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#xxgk a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#xxgk ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.xygk").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#xxgk a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#xxgk ul").css({"display":"none"});
			  }
	);//校园概况
	
	$("#homemenu ul#middleul li.#bmjg").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.bmjg").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#bmjg a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#bmjg ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.bmjg").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#bmjg a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#bmjg ul").css({"display":"none"});
			  }
	);//部门机构
	
	$("#homemenu ul#middleul li.#jxky").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.jxky").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#jxky a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#jxky ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.jxky").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#jxky a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#jxky ul").css({"display":"none"});
			  }
	);//教学科研
	
	
	$("#homemenu ul#middleul li.#xsgz").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.xsgz").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#xsgz a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#xsgz ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.xsgz").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#xsgz a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#xsgz ul").css({"display":"none"});
			  }
	);//学生工作
	
	$("#homemenu ul#middleul li.#zzrs").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.zzrs").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#zzrs a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#zzrs ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.zzrs").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#zzrs a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#zzrs ul").css({"display":"none"});
			  }
	);//组织人事
	
	$("#homemenu ul#middleul li.#zsjy").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.zsjy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#zsjy a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#zsjy ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.zsjy").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#zsjy a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#zsjy ul").css({"display":"none"});
			  }
	);//招生就业
	
	
	$("#homemenu ul#middleul li.#jlhz").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.jlhz").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#jlhz a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#jlhz ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.jlhz").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#jlhz a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#jlhz ul").css({"display":"none"});
			  }
	);//交流合作
	
	
	$("#homemenu ul#middleul li.#ggfw").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.ggfw").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#ggfw a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#ggfw ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.ggfw").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#ggfw a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#ggfw ul").css({"display":"none"});
			  }
	);//公共服务
	
	$("#homemenu ul#middleul li.#jszc").hover(
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"transparent"});
				  $("#homemenu ul#up li.jszc").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#middleul li.#jszc a.menuUpA").css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menuleft.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#FFF"});
				  $("#jszc ul").css({"display":"block"});
			  },
			  function () {
				  $("#homemenu ul#up li.sy").css({"background-color":"#AAEB1F"});
				  $("#homemenu ul#up li.jszc").css({"background-color":"transparent"});
				  $("#homemenu ul#middleul li.#jszc a.menuUpA").css({"background-image":"none","color":"#FFF"});
				  $("#homemenu ul li#indexItem").css({"background-image":"url(/static/common/newimages/menubg.jpg)"});
				  $("#homemenu ul li#indexItem a").css({"color":"#000"});
				  $("#jszc ul").css({"display":"none"});
			  }
	);//技术支持
	
	
	$("#homemenu ul li ul li a").hover(
			function () {
				$(this).css({"color":"#FFF"});
			},
			function () {
				$(this).css({"color":"#000"});
			}
	);
});