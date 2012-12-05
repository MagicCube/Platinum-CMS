$(document).ready(function(){
	$('#main_menu li.main').hover(
			function()
			{
				$('ul', this).css('visibility', 'visible');
				$('ul').css('z-index', '99');
			},
			function()
			{
				$('ul', this).css('visibility', 'hidden');
				$('ul').css('z-index', '0');
			});
});
