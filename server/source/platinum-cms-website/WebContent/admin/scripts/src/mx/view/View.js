$ns("mx.view");

mx.view.View = function()
{
    var me = $extend(MXComponent);
    var base = {};
    
    me.id = null;
    me.$element = null;
    me.$container = null;
    me.elementTag = "div";
    
    me.frame = null;
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

        me.setFrame(me.frame);
    };
    
    me.setFrame = function(p_frame)
    {
        if (p_frame != null)
        {
            if (p_frame.left != null)
            {
                me.$element.css("left", p_frame.left);
            }
            if (p_frame.right != null)
            {
                me.$element.css("right", p_frame.right);
            }
            if (p_frame.top != null)
            {
                me.$element.css("top", p_frame.top);
            }
            if (p_frame.bottom != null)
            {
                me.$element.css("bottom", p_frame.bottom);
            }
            if (p_frame.width != null)
            {
                me.$element.css("width", p_frame.width);
            }
            if (p_frame.height != null)
            {
                me.$element.css("height", p_frame.height);
            }
            if (p_frame.left != null || p_frame.right != null || p_frame.top != null || p_frame.bottom != null)
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