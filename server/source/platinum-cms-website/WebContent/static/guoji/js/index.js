$(document).ready(function(event){		
	$('#menu .menuli').css({"cursor":"pointer"});
	$('#menu .menuli').mouseover(function(){
		$(this).css({"background-image":"url(/static/guoji/images/menubghover.jpg)"});
		$(this).find("a").css({"color":"#6699CC","font-weight":"bold"});
	}).mouseout(function(){
		$(this).css({"background-image":"url(/static/guoji/images/menubg.jpg)"});
		$(this).find("a").css({"color":"#FFF","font-weight":"normal"});
	});
	if (($.browser.msie) && ($.browser.version == "6.0")){
		$("#tzggUl li a").css({"width":"202px"});
	}
});
