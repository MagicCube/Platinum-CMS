$ns("pt.cms.admin.post.view");

$include("$/pt/cms/admin/post/view/PostDetailView.css");

pt.cms.admin.post.view.PostDetailViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.item = null;
    
    me.toolbar = null;
    me.restClient = null;

    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        me.view.$element.addClass("PostDetailView");
        me.view.$element.append("<ul><li id='category'/><li id='subcategory'/></ul> <h1/> <div id='info'> <div id='updateTime'/> <div id='source'/> </div> <div id='content'/>");
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
    };
    
    
    
    me.loadItem = function(p_id)
    {
        me.restClient.GET("admin/post/" + p_id)
            .success(function(p_result){
                me.setItem(p_result);
            });
    };
    
    
    me.setItem = function(p_item)
    {
        me.item = p_item;
        me.renderView();
    };
    
    me.renderView = function()
    {
        me.view.$element.children("h1").text(me.item.title);
        me.view.$element.find("#info").text($format(new Date(me.item.updateTime), "yyyy年M月d日 HH:mm") + " " + me.item.source);
        me.view.$element.find("ul > #category").text(me.item.categoryId + " > ");
        me.view.$element.find("ul > #subcategory").text(me.item.subcategoryName);
        me.view.$element.children("#content").html(me.item.contentText);
        me.view.$element.scrollTop(0);
    };
    
    return me.endOfClass(arguments);
};