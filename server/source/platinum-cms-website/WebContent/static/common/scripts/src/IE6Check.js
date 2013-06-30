$(document).ready(function(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		$("#postDetail").css({"height":"650px"});
		$("#homemenu ul#middleul li a").hover(
				  function () {
				    $(this).css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  },
				  function () {
					 $(this).css({"background-image":"none","color":"#FFF"});
				  }
		);
		$("#homemenu ul#middleul #indexItem a").hover(
				 function () {
				},
				function () {
					$(this).css({"color":"#414141"});
				}
		);
		$("#homemenu ul li ul li").css({"background-color":"#57B217"});
	}
});

function onload(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		$("#homemenu ul#middleul li a").hover(
				  function () {
				    $(this).css({"background-image":"url(/static/common/newimages/menubg.jpg)","color":"#414141"});
				  },
				  function () {
					 $(this).css({"background-image":"none","color":"#FFF"});
				  }
		);
		$("#homemenu ul#middleul #indexItem a").hover(
				 function () {
				},
				function () {
					$(this).css({"color":"#414141"});
				}
		);
		$("#searchForm").css({"position":"relative"});
		$("#searchline").css({"position":"absolute","left":"0"});
		$("#searchBtn").css({"position":"absolute","right":"0"});
		
	}
}