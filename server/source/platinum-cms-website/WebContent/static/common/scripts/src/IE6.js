function onload(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		document.getElementById("MainBox").style.height="590px";
	}
}
$(document).ready(function(){
	if (($.browser.msie) && ($.browser.version == "6.0")){
		$("ul.TextList li a div").css({"display":"inline"});
		$("#sideBar").css({"width":"260px"});
	}
});