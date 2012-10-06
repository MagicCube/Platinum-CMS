$ns("pt.cms.admin.post.view");

$import("mx.view.ListViewController");

$include("$/pt/cms/admin/post/view/PostListView.css");

pt.cms.admin.post.view.PostListViewController = function()
{
    var me = $extend(mx.view.ListViewController);
    var base = {};
    
    me.toolbar = null;
    
    me.restClient = null;
       
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        me.view.$element.addClass("PostListView");
        
        me.view.rowHeight = 78;
        base.viewDidLoad();
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
    };
    
    
    me.loadItems = function()
    {
        me.restClient.GET("admin/post/")
            .success(function(p_result){
                me.setItems(p_result);
            });
    };
    
    
    
    
    
    
    base.createBlankRow = me.createBlankRow;
    me.createBlankRow = function(p_index)
    {
        var $row = base.createBlankRow(p_index);
        $row.append("<div id='updateTime'/> <div id='author'/> <div id='summary'/>");
        return $row;
    };
    
    base.renderRow = me.renderRow;
    me.renderRow = function($p_row, p_item)
    {
        base.renderRow($p_row, p_item);
        
        $p_row.children("#title").attr("title", p_item.title);
        
        var updateTime = new Date(p_item.updateTime);
        $p_row.children("#updateTime").text($format(updateTime, "smart"));
        $p_row.children("#updateTime").attr("title", $format(updateTime, "yyyy年M日d日 HH:mm:ss"));
        
        $p_row.children("#author").text(p_item.author);
        $p_row.children("#summary").text(p_item.summary);
    };
    
    return me.endOfClass(arguments);
};