$ns("pt.cms.admin.post.view");

$include("$/pt/cms/admin/post/view/PostEditView.css");

pt.cms.admin.post.view.PostEditViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.data = null;
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        me.view.$element.addClass("PostEditView");
        
        base.viewDidLoad();
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
        me.toolbar.addButton("savePost", "保存").addClass("default");
        me.toolbar.addButton("cancel", "取消").addClass("yellow").click(_btnCancel_onclick);
        me.toolbars = [me.toolbar];
        
        me.renderView();
    };
    
    me.renderView = function()
    {
        
    };
    
    
    
    function _btnCancel_onclick(e)
    {
        $pageController.popViewController();
    }    
    
    return me.endOfClass(arguments);
}