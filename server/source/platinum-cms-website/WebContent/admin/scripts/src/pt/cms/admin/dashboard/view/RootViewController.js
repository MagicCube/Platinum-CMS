$ns("pt.cms.admin.dashboard.view");
$import("mx.view.ListViewController");

pt.cms.admin.dashboard.view.RootViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.postListViewController = null;
    me.baseUrl = "/api/0/";
    me.categories = null;
    me.category=null;
    me.p_keywords="hitcount";
    
    
  
    var p_data=null;
    me.GET = function(p_path, p_data)
    {
        var url = me.baseUrl + p_path;
        var result = $.ajax({
            type: "GET",
            url: url,
            data: p_data,
        });
       
        
        return result;
    };
    
    
    
    me.GET("admin/post", null).success(function(p_result){
    	
       
    
    	 me.categories = p_result;
    	 var $div =$( "<div class='Panel'> <h1>我最近发布的内容</h1> <div id='body'> </div></div>");
    	  for (var i = 0; i < p_result.length; i++) 
    		
    	    
    	  { me.category=me.categories[i];
    	     
    	   
    	    $div.append(me.category.title);
    	    $div.append("<hr>");
                  
    		me.view.$container.append($div);
    	  }
    	    	
    });
    
    me.GET("admin/post",{dashboardhitcount: me.p_keywords}).success(function(p_result){
    	
        
        
   	 me.categories = p_result;
   	 var $div =$( "<div class='Panel'> <h1>点击次数最多内容</h1> <div id='body'> </div></div>");
   	  for (var i = 0; i < p_result.length; i++) 
   		
   	    
   	  { me.category=me.categories[i];
   	     
   	   
   	    $div.append(me.category.title);
   	    $div.append("<hr>");
                 
   		me.view.$container.append($div);
   	  }
   	    	
   });
    
    
    
    me.GET("admin/post",{dashboardtime: me.p_keywords}).success(function(p_result){
    	
        
        
      	 me.categories = p_result;
      	 var $div =$( "<div class='Panel'> <h1>时间最近的内容</h1> <div id='body'> </div></div>");
      	  for (var i = 0; i < p_result.length; i++) 
      		
      	    
      	  { me.category=me.categories[i];
      	     
      	   
      	    $div.append(me.category.title);
      	    $div.append("<hr>");
                    
      		me.view.$container.append($div);
      	  }
      	    	
      });
    

   
    
    
    
   
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
     
        me.view.$container.css("paddingLeft", 25);
    };
                                                             
    return me.endOfClass(arguments);
};