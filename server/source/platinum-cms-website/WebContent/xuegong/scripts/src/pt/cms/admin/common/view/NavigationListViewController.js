$ns("pt.cms.admin.common.view");

$import("mx.view.ListViewController");

$include("$/pt/cms/admin/common/view/NavigationListView.css");

pt.cms.admin.common.view.NavigationListViewController = function()
{
    var me = $extend(mx.view.ListViewController);
    var base = {};
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        me.view.$element.removeClass("ListView");
        me.view.$element.addClass("NavigationListView");
    };
    
    me.createBlankRow = function(p_index)
    {
        var $row = $("<li><a><div id='title'/><div id='description'/></a><div id='cursor'/></li>");
        return $row;
    };
    
    me.renderRow = function($p_row, p_item)
    {
        $p_row.attr("id", p_item.id);
        $p_row.find("#title").text(p_item.title);
        $p_row.find("#description").text(p_item.description);
    };
    
    me.selectionWillChange = function(e)
    {
        
    };
    
    me.selectionDidChange = function(e)
    {
        var animation = 0;
        if (e.originalSelectedIndex != -1)
        {
            if (me.view.selectedIndex - e.originalSelectedIndex > 0)
            {
                animation = 1;
            }
            else
            {
                animation = -1;
            }
        }
        
        $path = me.data[e.selectedIndex].id;
        $pageController.navigateTo($path, animation);
    };
    
    return me.endOfClass(arguments);
};