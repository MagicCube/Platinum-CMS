$(function(){
	$("#sel1").click(function(){
		select(1);
	});
	$("#sel2").click(function(){
		select(2);
	});
	$("#sel3").click(function(){
		select(3);
	});
	$("#sel4").click(function(){
		select(4);
	});
});

var count = 1;

function select(flag){
	for(i = 1;i<=4;i++){
		if(flag==i){
			$("#post"+i).stop().css({"display":"block"});
			$("#sel"+i).stop().css({"background-color":"#468d00","color":"#CCC"});
		}
		else{
			$("#post"+i).stop().css({"display":"none"});
			$("#sel"+i).stop().css({"background-color":"#CCC","color":"#468d00"});
		}
	}
}