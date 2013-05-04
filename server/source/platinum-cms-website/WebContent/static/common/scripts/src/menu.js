$(document).ready(function(event){	
	/*$('#homemenu li').hover(
			function()
			{
				$('ul#downlist').css('z-index', '10000000');
				$('ul#downlist', this).css('display', 'block');
			},
			function()
			{
				$('ul#downlist').css('z-index', '0');
				$('ul#downlist', this).css('display', 'none');
			});*/
	
	$('#homemenu li').mouseover(function(){
		var num =  $("ul#downlist", this).attr("num");
		$('ul#downlist',this).css('z-index',10000000);
		$('ul#downlist',this).stop().slideDown(300);
		$('ul#downlist',this).stop().animate({height:num*34+'px',width:'150px'},300);
	}).mouseout(function(){
		$('ul#downlist',this).stop().animate({height:'0px',width:'150px'},150);
		$('ul#downlist',this).stop().slideUp(150);
	});
});
