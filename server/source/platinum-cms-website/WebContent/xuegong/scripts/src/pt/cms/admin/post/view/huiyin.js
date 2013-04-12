

$(function(){
	$("#huiyinbi").click(function(){$("#exittb").css({"display":"block"});$("#huiyintb").css({"display":"block"});});
	$("#exittb").click(function(){$("#exittb").css({"display":"none"});$("#huiyintb").css({"display":"none"});  });
   

})




function myFunction()
{   
	
	var name=window.document.all("Books_Name").value;
	var content=window.document.all("Books_Info").value;
	
	var title=window.document.all("Books_title").value;
	   var _post = {};
	   _post.name=name;
	   _post.content=content;
	   _post.title=title; 
	   var  baseUrl = "/api/0/";  
	   var p_path="admin/post/"
	   var CallBackMess={name:_post.name,content:_post.content,title:_post.title};
	   var strCallBackMess = JSON.stringify(CallBackMess);
	   
	  
	   
	   var url = baseUrl + p_path;	  
	  
  
    	var sendObj = {
     	url :url,
	    type : "post",
        dataTyp : "json",
	    contentType : "application/json; charset=utf-8",
	    data : strCallBackMess,
	    success : function(data) {
	    alert(data);
	    },
	    error : function(e) {
	    	alert("error");
	    	}
    	};

	
    	$.ajax(sendObj);
    
     
       
     
	 



  
}
