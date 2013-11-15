/* 
*   jQuery Plugins divFloat
* 使用说明： 
*   delay //元素移动速度 每次执行间隔的时间，做越大移动得越慢；
*   xPos  //元素一开始左距离 
*   yPos  //元素一开始上距离 
*   roll  //元素是否随滚动条滚动
*   $('#div1').divFloat({delay:30,xPos:10,yPos:10，roll:false});   
*   $('#div2').divFloat();   //不给参数默认（delay:30,xPos:0,yPos:0，roll:true）                      
*/


(function ($) {

    jQuery.fn.divFloat = function (options) {
        var own = this;
        var settings = {
            delay: 30,
            xPos: 0,
            yPos: 0,
            roll:true
        };
        jQuery.extend(settings, options);
        var ownTop = settings.yPos;
        var ownLeft = settings.xPos;
        own.css({
            position: "absolute",
            cursor: "pointer",
            top: ownTop,
            left: ownLeft
        });
        var speed = 1; //控制每次执行移动的距离，值越大移动得越快；
        //获取飘浮层的长、宽(包括内外边距，边宽）
        var iWidth = own.outerWidth(true);
        var iHeight = own.outerHeight(true);
        //获取浏器可视长、宽
        var windowobj = $(window);
        var browserwidth = windowobj.width();
        var browserheight = windowobj.height();

        var scrollTop = 0; //记录滚动条位置
        own.show();
        var flagX = 0; //横向移动标志
        var flagY = 0; //纵向移动标志
        var offset;
        function flowDiv() {
            offset = own.offset();
            ownLeft = offset.left;
            ownTop = offset.top;
            //横向移动
            if (ownLeft < (browserwidth - iWidth) && flagX == 0) {
                own.css("left", ownLeft + speed);
            } else if (ownLeft >= (browserwidth - iWidth) && flagX == 0) {
                flagX = 1;
            } else if (ownLeft > 0 && flagX == 1) {
                own.css("left", ownLeft - speed);
            } else if (ownLeft <= iWidth && flagX == 1) {
                flagX = 0;
            }
            //纵向移动
            if (ownTop < (browserheight + scrollTop - iHeight) && flagY == 0) {
                own.css("top", ownTop + speed);
            } else if (ownTop >= (browserheight + scrollTop - iHeight) && flagY == 0) {
                flagY = 1;
            } else if (ownTop > scrollTop && flagY == 1) {
                own.css("top", ownTop - speed);
            } else if (ownTop <= (browserheight + scrollTop - iHeight) && flagY == 1) {
                flagY = 0;
            }
        }
        var divInterval = setInterval(flowDiv, settings.delay);
        own.mouseover(function () {
            clearInterval(divInterval);
        }).mouseout(function () {
            divInterval = setInterval(flowDiv, settings.delay);
        });

        if (settings.roll) {
            var scrollTimeout;
            var oldScrollTop = 0;
            //当滚动条改变时把飘浮层移动到当前可视窗口，目前只考虑纵向滚动条
            windowobj.scroll(function () {
                clearTimeout(scrollTimeout);
                clearInterval(divInterval);
                scrollTimeout = setTimeout(function () {
                    offset = own.offset();
                    //                        ownLeft = offset.left;
                    ownTop = offset.top;
                    scrollTop = windowobj.scrollTop();
                    if (scrollTop > oldScrollTop) {
                        own.css("top", ownTop + (scrollTop - oldScrollTop));
                    } else if (scrollTop < oldScrollTop) {
                        own.css("top", ownTop - (oldScrollTop - scrollTop));
                    };
                    oldScrollTop = scrollTop;
                    divInterval = setInterval(flowDiv, settings.delay);
                }, 300);
            });
        } else {
        }

    }
})(jQuery);
