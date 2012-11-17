$ns("pt.cms.admin.post.view");

$import("pt.cms.admin.post.view.PostEditViewController");

$include("$/pt/cms/admin/post/view/PostDetailView.css");

pt.cms.admin.post.view.PostDetailViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.data = null;
    
    me.toolbar = null;
    me.restClient = null;
    
    me.postEditViewController = null;

    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        me.view.$element.addClass("PostDetailView");
        me.view.$element.append("<ul><li id='category'/><li id='subcategory'/></ul> <h1/> <div id='info'> <div id='updateTime'/> <div id='source'/> </div> <div id='content'/>");
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
        me.toolbar.addButton("editPost", "编辑").addClass("default").click(_btnEdit_onclick);
        me.renderView();
    };
    
    
    
    me.loadData = function(p_id)
    {
        me.restClient.GET("admin/post/" + p_id)
            .success(function(p_result){
                me.setData(p_result);
            });
    };
    
    
    me.setData = function(p_data)
    {
        me.data = p_data;
        me.renderView();
    };
    
    me.renderView = function()
    {
        if (me.data != null)
        {
            me.view.$element.children("h1").text(me.data.title);
            me.view.$element.find("#info").text($format(new Date(me.data.updateTime), "yyyy年M月d日 HH:mm") + " " + me.data.source);
            me.view.$element.find("ul > #category").text(me.data.categoryId + " > ");
            me.view.$element.find("ul > #subcategory").text(me.data.subcategoryName);
            me.view.$element.children("#content").html(me.data.contentText);
            me.view.$element.scrollTop(0);
            
            me.toolbar.getButton("editPost").show();
        }
        else
        {
            me.toolbar.getButton("editPost").hide();
        }
    };
    
    
    
    
    function _btnEdit_onclick(e)
    {
        if (me.postEditViewController == null)
        {
            me.postEditViewController = new pt.cms.admin.post.view.PostEditViewController();
        }
        $pageController.pushViewController(me.postEditViewController);
    }
    
    return me.endOfClass(arguments);
};