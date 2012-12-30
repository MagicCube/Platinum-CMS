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
    	$(this).find('a').removeAttr("href" );
        _showOverlay(this.id);
    });
    
    

    var _selectedId = null;
    var _$testImage = null;
    var _$overlay = null;
    var _$mask = null;
    var _$photoFrame = null;
    function _showOverlay(p_id)
    {
        _selectedId = p_id;
        
        var imgUrl = $(document.body).find("#" + _selectedId + " img").attr("src");
        if (_$overlay == null)
        {
            _$overlay = $("<div id='albumOverlay'/>");
            _$mask = $("<div id='albumMask'/>");
            
            _$photoFrame = $("<div id='photoFrame'><img id='photo'> <div id='close'/> <div id='previous'/> <div id='next'/> </div>");
            _$photoFrame.find("div")
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
                            _movePrevious();
                            break;
                        case "next":
                            _moveNext();
                            break;
                    }
                });
            
            _$photoFrame.find("#photo").on("load", function(){
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
        if (_$testImage == null)
        {
            _$testImage = $("<img style='position: absolute; left: : -10000px; top: -10000px'/>");
            _$testImage.on("load", function()
            {
                var width = $(this).width();
                var height = $(this).height();
                
                _$photoFrame.animate({
                    "left": (_$mask.width() - width) / 2,
                    "top": (_$mask.height() - height) / 2,
                    "width": width,
                    "height": height
                }, "fast", function()
                {
                    _$photoFrame.find("#photo")
                        .attr("src", _$testImage.attr("src"))
                        .hide()
                        .fadeIn();
                });
            });
            $(document.body).append(_$testImage);
        }
        _$testImage.attr("src", "").attr("src", imgUrl);
    }
    
    function _movePrevious()
    {
        var $previous = $("#" + _selectedId).prev("li");
        if ($previous.length > 0)
        {
            var id = $previous.attr("id");
            _moveTo(id);
        }
    }
    
    function _moveNext()
    {
        var $next = $("#" + _selectedId).next("li");
        if ($next.length > 0)
        {
            var id = $next.attr("id");
            _moveTo(id);
        }
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