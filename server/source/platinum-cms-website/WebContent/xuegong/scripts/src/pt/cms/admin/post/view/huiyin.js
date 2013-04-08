


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
	     
	
	 alert(_post.title);
	  
	
    
     
       
     
	 



  
}
