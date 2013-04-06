$ns("mx.view");

mx.view.ViewController = function()
{
    var me = $extend(MXComponent);
    var base = {};
    
    me.view = null;
    me.viewClass = mx.view.View;
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        me.view = null;
        if (p_options != null && isPlainObject(p_options.view))
        {
            me.view = me.createView(p_options.view);
        }
        else
        {
            me.view = me.createView();
        }
    };
    
    me.createView = function(p_options)
    {
        me.view = new me.viewClass(p_options);
        me.viewDidLoad();
        return me.view;
    };
    
    me.viewDidLoad = function()
    {
        
    };
    
    return me.endOfClass(arguments);
};