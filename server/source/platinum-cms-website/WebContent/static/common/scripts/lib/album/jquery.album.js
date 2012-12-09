 $.fn.opacity = function(p_opacity)
 {
     var opacity = 0.5;
     if (p_opacity != null)
     {
         opacity = p_opacity;
     }
     if ($.browser.msie && parseInt($.browser.version) <= 8)
     {
         this.css("filter", "progid:DXImageTransform.Microsoft.BasicImage(opacity=" + opacity + ")")
     }
     else
     {
         this.css("opacity", opacity);
         this.css("webkitOpacity", opacity);
         this.css("MozOpacity", opacity);
     }
     return this;
};

$.fn.album = function(opt)
{
    var defaultOpt = {
        cellWidth: 500,
        cellHeight: 300,
        cellPadding: 5
    };
    opt = $.extend(defaultOpt, opt);
    
    this.addClass("Album");
    
    var $li = this.children("li");
    $li.width(opt.cellWidth).height(opt.cellHeight).css("margin", opt.cellPadding);
    
    $li.mouseenter(function(e){
        $(this).find("#title").stop(true, true).slideDown("fast");
    });
    
    $li.mouseleave(function(e){
        $(this).find("#title").stop(true, true).slideUp("fast");
    });
    
    $li.click(function(e){
        _showOverlay(this.id);
    });
    
    

    var _selectedId = null;
    var _$overlay = null;
    var _$mask = null;
    var _$photoFrame = null;
    function _showOverlay(p_id)
    {
        _selectedId = p_id;
        
        var imgUrl = $(document.body).find("#" + _selectedId + " img").attr("src");
        if (_$overlay == null)
        {
            _$overlay = $("<div id='albumOverlay' style='display:none; background: black; position: fixed; z-index:9999998; top: 0; bottom: 0; left: 0; right: 0;'/>");
            _$overlay.opacity(0.8);
            _$mask = $("<div id='albumMask' style='display:none; position: fixed; z-index:9999999; top: 0; bottom: 0; left: 0; right: 0;'/>");
            
            _$photoFrame = $("<div id='photoFrame'><img id='photo'> <div id='close'/> <div id='previous'/> <div id='next'/> </div>");
            _$photoFrame.find("div").opacity(0.5)
                .mouseenter(function()
                {
                    $(this).opacity(1);
                })
                .mouseleave(function()
                {
                    $(this).opacity(0.5);
                })
                .click(function(e)
                {
                    switch (this.id)
                    {
                        case "close":
                            _hideOverlay();
                            break;
                        case "previous":
                            var $previous = $("#" + _selectedId).prev("li");
                            if ($previous.length > 0)
                            {
                                var id = $previous.attr("id");
                                _moveTo(id);
                            }
                            break;
                        case "next":
                            var $next = $("#" + _selectedId).next("li");
                            if ($next.length > 0)
                            {
                                var id = $next.attr("id");
                                _moveTo(id);
                            }
                            break;
                    }
                });
            
            _$photoFrame.find("img").on("load", function(){
                var width = $(this).width();
                var height = $(this).height();
                
                _$photoFrame.animate({
                    "left": (_$mask.width() - width) / 2,
                    "top": (_$mask.height() - height) / 2,
                    "width": width,
                    "height": height
                }, "fast", function()
                {
                    _$photoFrame.removeClass("loading");
                    _$photoFrame.find("#photo").fadeIn();
                });
            });
            _$mask.append(_$photoFrame);
        }
        
        $(document.body).append(_$overlay);
        $(document.body).append(_$mask);
        _$overlay.fadeIn("fast");
        _$mask.fadeIn("fast");
        
        _$photoFrame.find("#photo").hide();
        _$photoFrame.width(66).height(44);
        _$photoFrame.css({
            "left": (_$mask.width() - _$photoFrame.width()) / 2,
            "top": (_$mask.height() - _$photoFrame.height()) / 2
        });
        
        setTimeout(function()
        {
            _$photoFrame.addClass("loading");
            _$photoFrame.find("#photo").attr("src", "").attr("src", imgUrl);
        }, 1);
    }
    
    function _moveTo(p_id)
    {
        _selectedId = p_id;
        var imgUrl = $(document.body).find("#" + _selectedId + " img").attr("src");
        
    }
    
    function _hideOverlay()
    {
        if (_$overlay != null)
        {
            _$mask.fadeOut();
            _$overlay.fadeOut("fast", function(){
                _$overlay.detach();
            });
        }
    }
    
    return this;
};