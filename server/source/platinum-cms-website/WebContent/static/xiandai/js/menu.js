$(document).ready(function(){
	$('li.singleMenu').hover(
			function()
			{
				$('ul', this).css('visibility', 'visible');
				$('#content').css('z-index', '-1');
				$('#mainbody #maincontent').css('z-index', '-1');
			},
			function()
			{
				$('ul', this).css('visibility', 'hidden');
				$('#content').css('z-index', '0');
				$('#mainbody #maincontent').css('z-index', '0');
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