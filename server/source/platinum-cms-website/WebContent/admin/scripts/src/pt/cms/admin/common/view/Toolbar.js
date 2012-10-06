$ns("pt.cms.admin.common.view");

pt.cms.admin.common.view.Toolbar = function()
{
    var me = $extend(mx.view.View);
    var base = {};
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        
        me.$element.addClass("Toolbar");
    };
    
    return me.endOfClass(arguments);
};