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
                frame: { left: 0, top: 38, bottom: 0, width: "38%" },
                onselectionchanged: _postListView_onselectionchanged
            }
        });
        me.view.addSubview(me.postListViewController.view);
        
        me.postDetailViewController = new pt.cms.admin.post.view.PostDetailViewController({
            restClient: me.restClient,
            view: {
                frame: { left: parseInt(me.postListViewController.view.frame.width) + ".2%", right: 0, top: 0, bottom: 0 }
            }
        });
        me.view.addSubview(me.postDetailViewController.view);

        _initToolbars();
        
        me.postListViewController.loadData();
    };
    
    
    function _initToolbars()
    {
        me.postListViewController.toolbar.setFrame({ left: 0, top: 0, width: me.postListViewController.view.frame.width });
        me.toolbars.add(me.postListViewController.toolbar);
        
        me.postDetailViewController.toolbar.setFrame({ left: me.postDetailViewController.view.frame.left, top: 0, right: me.postDetailViewController.view.frame.right });
        me.toolbars.add(me.postDetailViewController.toolbar);
    }
    
    
    
    function _postListView_onselectionchanged(e)
    {
        var post = me.postListViewController.data[me.postListViewController.view.selectedIndex];
        me.postDetailViewController.loadData(post.id);
    }
    
    return me.endOfClass(arguments);
};