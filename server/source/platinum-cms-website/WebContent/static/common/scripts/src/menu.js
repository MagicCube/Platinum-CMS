$(document).ready(function(event){	
	$('#homemenu li').hover(
			function()
			{
				$('ul#downlist').css('z-index', '10000000');
				$('ul#downlist', this).css('display', 'block');
			},
			function()
			{
				$('ul#downlist').css('z-index', '0');
				$('ul#downlist', this).css('display', 'none');
			});
});