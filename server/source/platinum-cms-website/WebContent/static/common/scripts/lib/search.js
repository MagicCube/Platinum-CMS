function search(flag,ele){
	if(flag == 1){
		if(ele.value == "输入搜索关键字"){
			ele.value = "";
			ele.style.color = "#444";
		}
	}else{
		if(ele.value == ""){
			ele.value = "输入搜索关键字";
			ele.style.color = "#999";
		}	
	}
}
