function onload(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		document.getElementById("MainBox").style.height="590px";
	}
}
$(document).ready(function(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		$("ul.TextList li a div").css({"display":"inline"});
		$("#sideBar").css({"width":"260px"});
		$("#imageContent").css({"margin-left":"10px"});
		
	}
});

function load(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		
	}
}

function jiaowu(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		$("#header #_logo").css({"margin":"35px 0 0 0","height":"60px","width":"700px","background:url":"(/static/jiaowu/images/logo.png) no-repeat","float":"left"});

	}
}