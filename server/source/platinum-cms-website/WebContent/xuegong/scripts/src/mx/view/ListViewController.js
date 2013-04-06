$ns("mx.view");

$import("mx.view.ListView");

$include("$/mx/view/ListView.css");

mx.view.ListViewController = function()
{
    var me = $extend(mx.view.ViewController);
    me.viewClass = mx.view.ListView;
    var base = {};
    
    me.data = [];
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        
        me.view.on("selectionchanging", me.selectionWillChange);
        me.view.on("selectionchanged", me.selectionDidChange);
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
        me.data.add(p_item);
        if (notEmpty(p_item.id))
        {
            me.data[p_item.id] = p_item;
        }
        var $row = me.createRowAt(me.data.length - 1);
        me.view.addRow($row);
    };
    
    me.addItems = function(p_items)
    {
        for (var i = 0; i < p_items.length; i++)
        {
            me.addItem(p_items[i]);
        }
    };
    
    me.insertItem = function(p_index, p_item)
    {
        me.data.insert(p_index, p_item);
        if (notEmpty(p_item.id))
        {
            me.data[p_item.id] = p_item;
        }
        var $row = me.createRowAt(p_index);
        me.view.insertRow(p_index, $row);
    };
    
    me.removeItem = function(p_item)
    {
        if (p_item == null) return;
        
        if (notEmpty(p_item.id))
        {
            delete me.data[p_item.id];
        }
        
        var index = me.data.indexOf(p_item);
        me.data.removeAt(index);
        me.view.removeRowAt(index);
    };
    
    me.removeItemAt = function(p_index)
    {
        var item = me.data[p_index];
        if (item != null)
        {
            me.removeItem(item);
        }
    };
    
    me.clearData = function()
    {
        me.data.clear();
        me.data = null;
        me.data = [];
        me.view.clearRows();
    };
    
    me.setData = function(p_data)
    {
        me.data = p_data;
        me.reloadRows();
    };
    
    
    
    
    me.getRowCount = function()
    {
        return me.data.length;
    };
    
    me.createRowAt = function(p_index)
    {
        var item = me.data[p_index];
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
    

    
    me.reloadRowAt = function(p_index)
    {
        var $row = me.view.getRowAt(p_index);
        var item = me.data[p_index];
        if ($row != null && $row.length > 0 && item != null)
        {
            me.renderRow($row, item);
        }
    };
    me.reloadSelectedRow = function()
    {
        if (me.view.selectedIndex >= 0)
        {
            me.reloadRowAt(me.view.selectedIndex);
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
        me.selectItem(me.data[p_index], p_fireEvent);
    };
    
    me.selectionWillChange = function(e)
    {
        
    };
    
    me.selectionDidChange = function(e)
    {
        
    };
    
    return me.endOfClass(arguments);
};