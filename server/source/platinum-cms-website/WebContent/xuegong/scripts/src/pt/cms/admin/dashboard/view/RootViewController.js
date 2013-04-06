$ns("pt.cms.admin.dashboard.view");

pt.cms.admin.dashboard.view.RootViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.postListViewController = null;
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        me.view.$container.append($("<div class='Panel'> <h1>我的栏目</h1> <div id='body'>  </div> </div>  <div class='Paper Panel'> <div id='left'></div> <div id='right'></div> <div id='top'></div> <div id='bottom'></div> <h1>我最近发布的内容</h1> <div id='body'></div> </div>   <div class='Panel'> <h1>新闻排行榜</h1> <div id='body'>  </div> </div>  <div class='Panel'> <h1>30 天新闻排行榜</h1> <div id='body'>  </div> </div>"));
        me.view.$container.css("paddingLeft", 25);
    };
    
    return me.endOfClass(arguments);
};