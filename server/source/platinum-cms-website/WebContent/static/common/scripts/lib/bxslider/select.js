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
			$("#post"+i).css({"display":"block"});
			$("#sel"+i).css({"background-color":"#78ac5a","color":"#FFF"});
		}
		else{
			$("#post"+i).css({"display":"none"});
			$("#sel"+i).css({"background-color":"#FFF","color":"#78ac5a"});
		}
	}
}