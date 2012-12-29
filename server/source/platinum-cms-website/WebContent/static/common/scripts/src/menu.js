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
	
	$('#homemenu li').mouseenter(function(){
		$('ul#downlist').css('z-index', '10000000');
		$('ul#downlist', this).css('display', 'block');
	}).mouseleave(function(){
		$('ul#downlist').css('z-index', '0');
		$('ul#downlist', this).css('display', 'none');
	});
});