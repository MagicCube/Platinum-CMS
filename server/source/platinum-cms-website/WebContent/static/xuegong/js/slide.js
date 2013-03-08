$(function(){
	
		$("#tsztList").mouseover(function(){
			clearInterval(h);
		});
		$("#tsztList").mouseout(function(){
			h = setInterval("play()",2500);
		});
})

		var count = 1;
		var h;
		h = setInterval("play()",2500);
		
		function play(){
			if(count == 5) count = 1;
			select(count);
			count++;
		}

		function select(flag){
			for(i = 1; i <= 4; i++){
					if(i == flag){
						$("#post" + i).fadeOut("slow",function(){$("#post" + i).css({"display":"block"});});
					}
					else{
						$("#post" + i).css({"display":"none"});
					}
			}
		}