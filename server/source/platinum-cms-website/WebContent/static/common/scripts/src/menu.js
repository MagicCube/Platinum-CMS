$(document).ready(function(){
	$('#homemenu li').hover(
			function()
			{
				$('ul', this).css('display', 'block');
				$('ul', this).css('z-index', '99999');
			},
			function()
			{
				$('ul', this).css('display', 'none');
				$('ul', this).css('z-index', '0');
			});
});


$(document).ready(function(){
	$('#box2 ul#link li').hover(
			function()
			{
				$(this).css('background','green');
				$(this).css('color','#fff');
			},
			function()
			{
				$(this).css('background','#eee');
				$(this).css('color','#000');
			});
});
