$ns("mx.view");

mx.view.View = function()
{
    var me = $extend(MXComponent);
    var base = {};
    
    me.id = null;
    me.$element = null;
    me.$container = null;
    me.elementTag = "div";
    
    me.bounds = null;
    me.subviews = [];
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        
        if (me.$element == null)
        {
            me.$element = $("<" + me.elementTag + "/>");
        }
        if (me.$container == null)
        {
            me.$container = me.$element;
        }
        
        if (isEmpty(me.id) && isEmpty(me.$element.attr("id")))
        {
            me.id = String.newGuid();
        }
        me.$element.attr("id", me.id);

        me.setBounds(me.bounds);
    };
    
    me.setBounds = function(p_bounds)
    {
        if (p_bounds != null)
        {
            if (p_bounds.left != null)
            {
                me.$element.css("left", p_bounds.left);
            }
            if (p_bounds.right != null)
            {
                me.$element.css("right", p_bounds.right);
            }
            if (p_bounds.top != null)
            {
                me.$element.css("top", p_bounds.top);
            }
            if (p_bounds.bottom != null)
            {
                me.$element.css("bottom", p_bounds.bottom);
            }
            if (p_bounds.width != null)
            {
                me.$element.css("width", p_bounds.width);
            }
            if (p_bounds.height != null)
            {
                me.$element.css("height", p_bounds.height);
            }
            if (p_bounds.left != null || p_bounds.right != null || p_bounds.top != null || p_bounds.bottom != null)
            {
                me.$element.css("position", "absolute");
            }
        }
    };
    
    me.addSubview = function(p_view)
    {
        if ($instanceOf(p_view, mx.view.View))
        {
            me.$container.append(p_view.$element);
            me.subviews.add(p_view);
        }
    };
    
    me.removeSubview = function(p_view)
    {
        if ($instanceOf(p_view, mx.view.View))
        {
            p_view.$element.detach();
            me.subviews.remove(p_view);
        }
    };
    
    me.clearSubviews = function()
    {
        while (me.subviews.length > 0)
        {
            me.removeSubview(me.subviews[0]);
        }
    };
    
    return me.endOfClass(arguments);
};