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
	   
	$.ajax( {
        url : '/api/0/admin/post/nihao',
        type: "POST",
        data : _post,
        dataType : 'json',
        contentType:'application/json',
    
        success : function(data) {
            alert("success");
            alert(data.name);
            alert(data.age);
        },
        error : function() {
            alert("ajax");
        }
        
    });

	 



  
}
