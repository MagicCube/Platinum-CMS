$ns("pt.cms.admin.post.view");

pt.cms.admin.post.view.PostDetailViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.toolbar = null;

    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
    };
    
    return me.endOfClass(arguments);
};