$ns("mx.view");

$import("mx.view.ListView");

$include("$/mx/view/ListView.css");

mx.view.ListViewController = function()
{
    var me = $extend(mx.view.ViewController);
    me.viewClass = mx.view.ListView;
    var base = {};
    
    me.items = [];
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        
        me.view.on("selectionchanging", me.selectionWillChange);
        me.view.on("selectionchanged", me.selectionDidChange);
    };
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        base.viewDidLoad();
        
        if (me.items == null)
        {
            me.items = [];
        }
    };
    
    me.newItem = function(p_options)
    {
        if (isPlainObject(p_options))
        {
            item = p_options;
        }
        else
        {
            item = {};
        }
        return item;
    };
    
    me.addItem = function(p_item)
    {
        me.items.add(p_item);
        if (notEmpty(p_item.id))
        {
            me.items[p_item.id] = p_item;
        }
        var $row = me.createRowAt(me.items.length - 1);
        me.view.addRow($row);
    };
    
    me.insertItem = function(p_index, p_item)
    {
        
    };
    
    me.removeItem = function(p_item)
    {
        if (p_item == null) return;
        
        if (notEmpty(p_item.id))
        {
            delete me.items[p_item.id];
        }
        
        var index = me.items.indexOf(p_item);
        me.items.removeAt(index);
        me.view.removeRowAt(index);
    };
    
    me.removeItemAt = function(p_index)
    {
        var item = me.items[p_index];
        if (item != null)
        {
            me.removeItem(item);
        }
    };
    
    me.clearItems = function()
    {
        me.items.clear();
        me.items = null;
        me.items = [];
        me.view.clearRows();
    };
    
    me.setItems = function(p_items)
    {
        me.items = p_items;
        me.reloadRows();
    };
    
    
    
    
    me.getRowCount = function()
    {
        return me.items.length;
    };
    
    me.createRowAt = function(p_index)
    {
        var item = me.items[p_index];
        var $row = me.createBlankRow(p_index);
        me.renderRow($row, item);
        return $row;
    };
    
    me.createBlankRow = function(p_index)
    {
        var $row = me.view.createBlankRow();
        return $row;
    };
    
    me.renderRow = function($p_row, p_item)
    {
        if (p_item.id != null)
        {
            $p_row.attr("id", p_item.id);
        }
        if (p_item.title != null)
        {
            $p_row.children("#title").text(p_item.title);
        }
    };
    
    me.updateRowAt = function(p_index)
    {
        var $row = me.view.getRowAt(p_index);
        var item = me.items[p_index];
        if ($row != null && item != null)
        {
            me.renderRow($row, item);
        }
    };
    
    me.reloadRows = function()
    {
        me.view.clearRows();
        var count = me.getRowCount();
        for (var i = 0; i < count; i++)
        {
            var $row = me.createRowAt(i);
            me.view.addRow($row);
        }
    };


    
    me.selectItemById = function(p_id, p_fireEvent)
    {
        var $row = me.view.getRowById(p_id);
        me.view.selectRow($row, p_fireEvent);
    };
    
    me.selectItem = function(p_item, p_fireEvent)
    {
        me.selectItemById(p_item.id, p_fireEvent);
    };
    
    me.selectItemAt = function(p_index, p_fireEvent)
    {
        me.selectItem(me.items[p_index], p_fireEvent);
    };
    
    me.selectionWillChange = function(e)
    {
        
    };
    
    me.selectionDidChange = function(e)
    {
        
    };
    
    return me.endOfClass(arguments);
};