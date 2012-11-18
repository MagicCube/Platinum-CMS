$ns("mx.view");

mx.view.ListView = function()
{
    var me = $extend(mx.view.View);
    me.elementTag = "ul";
    var base = {};
    
    
    me.rowHeight = null;
    me.selectedIndex = -1;
    
    
    me.onselectionchanging = null;
    me.onselectionchanged = null;
    
    
    base.init = me.init;
    me.init = function(p_options)
    {
        base.init(p_options);
        me.$element.addClass("ListView");
        me.$element.on("click", "li", _row_onClick);
    };


    
    me.createBlankRow = function()
    {
        var $row = $("<li><div id='title'/></li>");
        if (me.rowHeight != null)
        {
            $row.css("height", me.rowHeight);
        }
        return $row;
    };
    
    me.getRowAt = function(p_index)
    {
        var $row = me.$element.children("li").eq(p_index);
        return $row;
    };

    me.getRowById = function(p_id)
    {
        var $row = me.$element.children("li#" + p_id);
        return $row;
    };
    
    me.addRow = function($p_row)
    {
        me.$element.append($p_row);
    };
    
    me.insertRow = function(p_index, $p_row)
    {
        if (me.$element.children().length > 0)
        {
            var $target = me.$element.children().eq(p_index);
            $p_row.insertBefore($target);
        }
        else
        {
            me.addRow($p_row);
        }
    };

    me.removeRow = function($p_row)
    {
        me.$element.remove($p_row);
    };
    
    me.removeRowAt = function(p_index)
    {
        me.$element.children().eq(p_index).remove();
        if (me.selectedIndex == p_index)
        {
            me.selectedIndex = -1;
        }
    };
    
    me.clearRows = function()
    {
        me.deselectAllRows();
        me.$element.children("li").remove();
        me.selectedIndex = -1;
    };
    
    
    me.selectRowAt = function(p_index, p_fireEvent)
    {
        if (p_index >= 0 && p_index < me.$element.children("li").length && me.selectedIndex != p_index)
        {
            if (p_fireEvent != false)
            {
                var e = { cancel: false, selectedIndex: p_index };
                
                me.trigger("selectionchanging", e);
                if (e.cancel)
                {
                    return;
                }
            }
            
            
            var originalSelectedIndex = me.selectedIndex;
            me.deselectAllRows(false);
            var $row = me.getRowAt(p_index);
            $row.addClass("selected");
            
            me.selectedIndex = p_index;
            
            if (p_fireEvent != false)
            {
                delete e.cancel;
                e.originalSelectedIndex = originalSelectedIndex;
                me.trigger("selectionchanged", e);
            }
        }
    };
    
    me.selectRow = function($p_row, p_fireEvent)
    {
        me.selectRowAt($p_row.index(), p_fireEvent);
    };
    
    me.deselectRowAt = function(p_index, p_fireEvent)
    {
        var $row = me.getRowAt(p_index);
        $row.removeClass("selected");
    };

    me.deselectAllRows = function(p_fireEvent)
    {
        if (me.selectedIndex >= 0)
        {
            me.deselectRowAt(me.selectedIndex, p_fireEvent);
            me.selectedIndex = -1;
        }
    };
    
    
    
    function _row_onClick(e)
    {
        var $row = $(e.currentTarget);
        me.selectRow($row);
    }
    
    return me.endOfClass(arguments);
};