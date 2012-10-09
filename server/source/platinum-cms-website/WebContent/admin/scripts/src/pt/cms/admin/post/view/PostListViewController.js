$ns("pt.cms.admin.post.view");

$import("mx.view.ListViewController");

$include("$/pt/cms/admin/post/view/PostListView.css");

pt.cms.admin.post.view.PostListViewController = function()
{
    var me = $extend(mx.view.ListViewController);
    var base = {};
    
    me.toolbar = null;
    
    me.restClient = null;
    
    me.$searchBar = null;
    
    var _$keywords = null;
    var _renderMode = "text";
       
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        me.view.$element.addClass("PostListView");
        
        me.view.rowHeight = 78;
        base.viewDidLoad();
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar({ id: "postListToolbar" });
        _$keywords = $("<input type='text' id='keywords'>");
        _$keywords.hint({ text: "输入搜索关键字或内容的 ID" });
        _$keywords.on("keydown", _keywords_onkeydown);
        me.$searchBar = $("<div id='searchBar'>");
        me.$searchBar.append(_$keywords);
        
        me.toolbar.$element.append(me.$searchBar);
    };
    
    
    me.loadItems = function()
    {
        me.queryByCategory(null);
    };
    
    
    me.queryByKeywords = function(p_keywords)
    {
        _renderMode = "html";
        me.restClient.GET("admin/post/", { keywords: p_keywords })
            .success(function(p_result){
                me.setItems(p_result);
            });
    };
    
    me.queryByCategory = function(p_categoryId)
    {
        _renderMode = "text";
        me.restClient.GET("admin/post/")
            .success(function(p_result){
                me.setItems(p_result);
            });
    };
    
    
    
    
    base.createBlankRow = me.createBlankRow;
    me.createBlankRow = function(p_index)
    {
        var $row = base.createBlankRow(p_index);
        $row.append("<div id='updateTime'/> <div id='source'/> <div id='summary'/>");
        return $row;
    };
    
    base.renderRow = me.renderRow;
    me.renderRow = function($p_row, p_item)
    {
        base.renderRow($p_row, p_item);
        
        
        
        var updateTime = new Date(p_item.updateTime);
        $p_row.children("#updateTime").text($format(updateTime, "smart"));
        $p_row.children("#updateTime").attr("title", $format(updateTime, "yyyy年M日d日 HH:mm:ss"));
        $p_row.children("#source").text(p_item.source);
        
        
        
        if (_renderMode == "html")
        {
            $p_row.children("#title").html(p_item.title);
            $p_row.children("#summary").html(p_item.summary);
        }
        else
        {
            $p_row.children("#title").html(p_item.title);
            $p_row.children("#summary").text(p_item.summary);
        }
        $p_row.children("#title").attr("title", $p_row.children("#title").text());
    };
    
    
    
    function _keywords_onkeydown(e)
    {
        if (e.keyCode == 13)
        {
            var keywords = _$keywords.val();
            if (keywords.trim() == "")
            {
                me.queryByCategory(null);
            }
            else
            {
                me.queryByKeywords(keywords);
            }
        }
    }
    
    return me.endOfClass(arguments);
};