(function($)
{

    $.fn.hint = function(options)
    {
        var origFontStyle = null;
        var origColor = null;

        var settings = $.extend(
        {}, $.fn.hint.defaults, options);

        return this.each(function()
        {
            // get jQuery version of 'this'
            var $input = $(this),

            // capture the rest of the variable to allow for reuse
            title = $input.attr('title') ? $input.attr('title') : settings.text, $win = $(window);

            function remove()
            {
                if ($input.val() === title && $input.hasClass(settings.blurClass))
                {
                    $input.val('').removeClass(settings.blurClass);
                }
            }

            // only apply logic if the element has the attribute
            if (title)
            {
                // on blur, set value to title attr if text is blank
                $input.blur(function()
                {
                    if (this.value === '')
                    {
                        $input.val(title).addClass(settings.blurClass);
                    }
                }).blur(); // now change all inputs to title

                $input.focus(function()
                {

                    if (settings.resetCursorPos)
                    {
                        // check if IE
                        if ($input.get(0).createTextRange)
                        {
                            var range = $(this).get(0).createTextRange();
                            range.collapse(true);
                            range.moveStart("character", 0);
                        }
                        else
                        {
                            // all other browsers
                            $input.get(0).setSelectionRange(0, 0);
                        }
                    }

                    if (!settings.retain)
                    {
                        remove();
                    }
                });

                if (settings.retain)
                {
                    $input.keydown(function()
                    {
                        if (this.value === title)
                        {
                            remove();
                        }
                    });
                }
                
                $win.unload(remove); // handles Firefox's autocomplete
            }
        });
    };

    $.fn.hint.defaults =
    {
        text : '',
        blurClass : 'blur',
        retain : false,
        resetCursorPos : true
    };

})(jQuery);