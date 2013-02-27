var _$index = 0;
	
$(function(){
	play();
})

function play()
{
	setInterval("auto()", 5000);
}

function auto()
{
	_$index = _$index > 1 ? 0 : _$index+1; 
    change(_$index); 
}

function change(i)
{
	 $("#dttpList img").hide().eq(i).fadeIn('slow');
}