$ns("pt.cms.admin.post.view");

$import("pt.cms.admin.post.view.PostListViewController");
$import("pt.cms.admin.post.view.PostDetailViewController");

pt.cms.admin.post.view.RootViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.toolbars = [];
    me.postListViewController = null;
    me.postDetailViewController = null;
    
    me.restClient = null;
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        me.postListViewController = new pt.cms.admin.post.view.PostListViewController({
            restClient: me.restClient,
            view: {
                bounds: { left: 0, top: 0, bottom: 0, width: 310 }
            }
        });
        me.view.addSubview(me.postListViewController.view);
        
        me.postDetailViewController = new pt.cms.admin.post.view.PostDetailViewController({
            view: {
                bounds: { left: 312, right: 0, top: 0, bottom: 0 }
            }
        });
        me.view.addSubview(me.postDetailViewController.view);

        _initToolbars();
        
        me.postListViewController.reload();
    };
    
    
    function _initToolbars()
    {
        me.postListViewController.toolbar.setBounds({ left: 0, top: 0, width: me.postListViewController.view.bounds.width });
        me.toolbars.add(me.postListViewController.toolbar);
        
        me.postDetailViewController.toolbar.setBounds({ left: me.postDetailViewController.view.bounds.left, top: 0, right: me.postDetailViewController.view.bounds.right });
        me.toolbars.add(me.postDetailViewController.toolbar);
    }
    
    return me.endOfClass(arguments);
};