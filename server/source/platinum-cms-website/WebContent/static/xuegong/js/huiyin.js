$(function(){
	$("#huiyinbi").click(function(){$("#exittb").css({"display":"block"});$("#huiyintb").css({"display":"block"});});
	$("#exittb").click(function(){$("#exittb").css({"display":"none"});$("#huiyintb").css({"display":"none"});  });
   

})

function myFunction()
{
	var name=window.document.all("Books_Name").value;
	var content=window.document.all("Books_Info").value;
	
	var title=window.document.all("Books_title").value;
	   var post = {};
	   post.name=name;
	   post.content=content;
	   post.title=title;	
	   alert(post.title);
	
	$.ajax( {
        url : '/api/0/admin/post/',
        type: "PUT",
        data : '{"1":"1","2":"2"}',
        dataType : 'json',
        contentType:'application/json',
        async : false,
        success : function(data) {
            alert("success");
            alert(data.name);
            alert(data.age);
        },
        error : function() {
            alert("ajax error");
        }
    });




  
}
