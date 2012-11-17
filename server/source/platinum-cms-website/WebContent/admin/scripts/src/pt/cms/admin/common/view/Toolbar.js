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
    
    me.getButton = function(p_id)
    {
        return me.$element.children("button#" + p_id);
    };
    
    me.addButton = function(p_id, p_text, p_onclick)
    {
        var $button = $("<button/>");
        $button.attr("id", p_id);
        $button.text(p_text);
        $button.click(p_onclick);
        return me.addElement($button);
    };
    
    me.addElement = function(p_element)
    {
        me.$element.append(p_element);
        return p_element;
    };
    
    return me.endOfClass(arguments);
};