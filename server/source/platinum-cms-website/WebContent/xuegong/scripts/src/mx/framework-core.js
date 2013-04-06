/*!
 * MXFramework v6.0 (Codename: Platinum, PT)
 * - A WebApp-Oriented AJAX Framework
 *
 * Copyright 2012.
 *
 * Create Date: 2012-09-23 20:46
 * First Created by Henry Li
 */


MX = function()
{
    var me = this;
    
    me.debugMode = false;
    me.rootPath = null;
    
    me.init = function()
    {
        var scripts = document.getElementsByTagName("script");
        var src = scripts[scripts.length - 1].src;
        var mxPath = "/scripts/src/mx/framework-core.js";
        if (src.endsWith(mxPath))
        {
            me.debugMode = true;
            me.rootPath = src.substr(0, src.length - mxPath.length);
        }
    };
    
    me.mappath = function(p_url)
    {
        if (typeof (p_url) != "string") return null;
        
        var url = p_url;
        if (url.indexOf("~/") == 0)
        {
            url = mx.rootPath + url.substr(1);
        }
        else if (url.indexOf("$/") == 0)
        {
            url = mx.rootPath + "/scripts/src" + url.substr(1);
        }
        return url;
    };
    $mappath = me.mappath;
    
    
    
    
    me.loadingScripts = [];
    me.loadedScripts = [];    
    me.loadingStyles = [];
    me.loadedStyles = [];
    me.include = function(p_path, p_callback)
    {
        var path = me.mappath(p_path);
        
        var ingList = null;
        var edList = null;
        var type = null;
        if (path.indexOf(".js") == path.length - 3)
        {
            ingList = me.loadingScripts;
            edList = me.loadedScripts;
            type = "js";
        }
        else if (path.indexOf(".css") == path.length - 4)
        {
            ingList = me.loadingStyles;
            edList = me.loadedStyles;
            type = "css";
        }
        
        if (ingList[path] != null)
        {
            if (typeof(p_callback) == "function")
            {
                ingList[path].push(p_callback);
            }
        }
        else if (edList[path] != null)
        {
            if (typeof(p_callback) == "function")
            {
                p_callback();
            }            
        }
        else
        {
            _add(ingList, path, ((typeof(p_callback) == "function") ? [ p_callback ] : []));
            if (document.body != null)
            {
                // 在 document 已成功加载后，某一时刻动态加载一个新的文件。
                var element = null;
                if (type == "js")
                {
                    element = document.createElement("script");
                }
                else if (type == "css")
                {
                    element = document.createElement("link");
                    element.rel = "stylesheet";
                }
                

                element.onload = me._include_onload;
                element.onerror = me._include_onload;
                if (element.readyState)
                {
                    element.onreadystatechange = me._include_onload;
                }
                
                element.dynamic = true;
                document.body.appendChild(element);
                
                
                // 必须在这里给 src 和 href 赋值，强烈鄙视 IE 的 Bug！！！ 
                if (type == "js")
                {
                    element.src = path;
                }
                else if (type == "css")
                {
                    element.href = path;
                }
            }
            else
            {
                // 在 document 正在加载的时候，加载一个新的文件。
                var tag = null;
                if (type == "js")
                {
                    tag = "<script src='" + path + "'";
                }
                else if (type == "css")
                {
                    tag = "<link rel='stylesheet' href='" + path + "'";
                }
                document.write(tag + " onerror='mx._include_onload(event)' onreadystatechange='mx._include_onload(event);' onload='mx._include_onload(event)'></script>");
            }
        }
    };
    $include = me.include;
    
    me._include_onload = function(e)
    {
        var e = e ? e : event;
        var element = null;
        if (e.srcElement != null)
        {
            element = e.srcElement;
        }
        else
        {
            element = e.target;
        }
        
        if (element.readyState != null)
        {                        
            // 如果是 IE 8 及以下版本
            if (typeof(element.times) == "undefined" && element.readyState != "complete")
            {
                // onload 事件触发两次后才算加载完成。
                // IE 的 onreadystate 事件机制有 Bug，不能相信 readyState 的值。
                element.times = 1;
                return;
            }
            
            
        }
        
        
        
        element.onload = null;
        element.onerror = null;
        if (element.readyState)
        {
            element.onreadystatechange = null;
        }
        
        var path = null;
        var callbacks = [];
        if (element.tagName == "SCRIPT")
        {
            path = element.src;
            if (e.type != "error")
            {
                _add(me.loadedScripts, path, path);
                callbacks = me.loadingScripts[path];
                _remove(me.loadingScripts, path);
            }
            else
            {
                mx.error("Fail to load '" + path + "'.");
            }

        }
        else if (element.tagName == "LINK")
        {
            path = element.href;
            if (e.type != "error")
            {
                _add(me.loadedStyles, path, path);
                callbacks = me.loadingStyles[path];
                _remove(me.loadingStyles, path);
            }
            else
            {
                mx.error("Fail to load '" + path + "'.");
            }
        }
        
        
        // 按照先进先出的顺序，触发 include 的回调函数。
        while (callbacks.length > 0)
        {
            var func = callbacks.pop();
            func(path);
            func = null;
        }
        callbacks = null;
        
        if (me.loadingStyles.length == 0 && me._styleReady_callbacks.length > 0)
        {
            // 当所有相关样式表单均已加载完毕。
            while (me._styleReady_callbacks.length > 0)
            {        
                if (me.loadingStyles.length > 0)
                {
                    break;
                }
                var readyFunc = me._styleReady_callbacks.pop();
                readyFunc();
                readyFunc = null;
            }
        }
        
        if (me.loadingScripts.length == 0 && me._scriptReady_callbacks.length > 0)
        {
            // 当所有相关脚本均已加载完毕。
            while (me._scriptReady_callbacks.length > 0)
            {    
                if (me.loadingScripts.length > 0)
                {
                    break;
                }
                var readyFunc = me._scriptReady_callbacks.pop();
                readyFunc();
                readyFunc = null;
            }
        }
        
        if (me.loadingStyles.length == 0 && me.loadingScripts.length == 0 && me._ready_callbacks.length > 0)
        {
            // 当所有文件均已加载完毕。
            while (me._ready_callbacks.length > 0)
            {         
                if (me.loadingStyles.length > 0 || me.loadingScripts.length > 0)
                {
                    break;
                }
                var readyFunc = me._ready_callbacks.pop();
                readyFunc();
                readyFunc = null;
            }
        }
    };
    
    
    
    
    me._ready_callbacks = [];
    me.whenReady = function(p_callback)
    {
        setTimeout(function(){
            if (typeof(p_callback) != "function")
            {
                return;
            }
            
            if (me.loadingStyles.length == 0 && me.loadingScripts.length == 0)
            {
                p_callback();
            }
            else
            {
                me._ready_callbacks.push(p_callback);
            }
        }, 0);
    };
    
    me._styleReady_callbacks = [];
    me.whenStyleReady = function(p_callback)
    {
        setTimeout(function(){
            if (typeof(p_callback) != "function")
            {
                return;
            }
            
            if (me.loadingStyles.length == 0)
            {
                p_callback();
            }
            else
            {
                me._styleReady_callbacks.push(p_callback); 
            }
        }, 0);
    };
    
    me._scriptReady_callbacks = [];
    me.whenScriptReady = function(p_callback)
    {
        setTimeout(function(){
            if (typeof(p_callback) != "function")
            {
                return;
            }
            
            if (me.loadingScripts.length == 0)
            {
                p_callback();
            }
            else
            {
                me._scriptReady_callbacks.push(p_callback); 
            }
        }, 0);
    };
    
    
    
    function _add(p_collection, p_key, p_value)
    {
        p_collection[p_key] = p_value;
        p_collection.push(p_key);
    }
    
    function _remove(p_collection, p_key)
    {
        for (var i = 0; i < p_collection.length; i++)
        {
            if (p_collection[i] == p_key)
            {
                p_collection.splice(i, 1);
                break;
            }
        }
    }
    
    
    
    
    

    
    me.importClass = function(p_fullClassName, p_callback)
    {
        var parts = p_fullClassName.split(".", 1);
        var path = null;
        if (parts.length == 1)
        {
            var classPath = p_fullClassName.replace(/\./g, "/");
            path = "~/scripts/src/" + classPath + ".js";
        }
        
        if (path != null)
        {
            me.include(path, p_callback);
        }
    };
    $import = me.importClass;
    
    
    
    
    me.log = function(p_message)
    {
        if (typeof(console) != "undefined")
        {
            console.log("[MX] " + p_message);
        }
    };
    
    me.warn = function(p_message)
    {
        if (typeof(console) != "undefined")
        {
            console.warn("[MX] " + p_message);
        }
    };
    
    me.error = function(p_message)
    {
        if (typeof(console) != "undefined")
        {
            console.error("[MX] " + p_message);
        }
    };
    
    return me;
};


mx = new MX();
mx.init();



$import("mx.MXObject");
$import("mx.MXEvent");
$import("mx.MXComponent");
$import("mx.view.View");
$import("mx.view.ViewController");
$import("mx.page.PageController");