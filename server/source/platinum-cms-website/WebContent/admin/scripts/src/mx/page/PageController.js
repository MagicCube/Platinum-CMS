$ns("mx.page");

mx.page.PageController = function()
{
    var me = $extend(MXComponent);
    var base = {};
    
    me.$page = null;
    me.$container = null;
    me.pageSelector = "body";
    
    me.rootViewController = null;
    me.subviews = [];
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        $(function()
        {
            me.$page = $(me.pageSelector);
            if (me.rootViewController != null)
            {
                me.setRootViewController(me.rootViewController);
            }
            me.pageDidLoad();
        });
    };
    
    me.pageDidLoad = function()
    {
        
    };
    
    
    me.setRootViewController = function(p_controller, p_animation)
    {
        var ani = 1;
        if (p_animation === false)
        {
            ani = 0;
        }
        else if (typeof(p_animation) == "number")
        {
            ani = p_animation;
        }
        
        if (me.rootViewController != null)
        {
            var $detach = me.rootViewController.view.$element;
            $detach.animate({
                left: -(me.$container.width() + 15) * ani,
                opacity: 0.5
            }, 400, function(){
                $detach.detach();
            });
        }
        
        
        me.rootViewController = p_controller;
        me.rootViewController.view.setBounds({ left: 0, width: "100%", top: 0, bottom: 0 });
        var $e = me.rootViewController.view.$element;
        $e.css({ left: (me.$container.width() + 15) * ani, opacity: 0.5 });
        me.addSubview(p_controller.view);
        
        $e.animate({
            left: 0,
            opacity: 1
        }, 400);
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