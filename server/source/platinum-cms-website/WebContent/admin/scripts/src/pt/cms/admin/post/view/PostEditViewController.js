$ns("pt.cms.admin.post.view");

$include("~/scripts/lib/cleditor/jquery.cleditor.js");
$include("~/scripts/lib/cleditor/jquery.cleditor.css");
$include("~/scripts/lib/uploadify/jquery.uploadify.js");
$include("~/scripts/lib/uploadify/uploadify.css");

$include("$/pt/cms/admin/post/view/PostEditView.css");


pt.cms.admin.post.view.PostEditViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.data = null;
    me.categories = null;
    me.contentEditor = null;
    me.restClient = null;
    
    me.$main = null;
    
    me.$id = null;
    me.$title = null;
    me.$summary = null;
    me.$category = null;
    me.$subcategory = null;
    me.$homeSubcategory = null;
    me.$content = null;
    me.$postType = null;
    me.$postStatus = null;
    me.$source = null;
    me.$photoURL = null;
    me.$publisher = null;
    me.$createTime = null;
    me.$updateTime = null;
    me.$uploadAttachmentButton = null;
    me.$uploadImageButton = null;
    me.$attachmentList = null;
    
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {        
        me.view.$element.addClass("PostEditView");
        
        base.viewDidLoad();
        
        _initView();
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
        me.toolbar.addButton("cancel", "返回").addClass("yellow").click(_btnCancel_onclick);
        me.toolbar.addButton("savePost", "保存").addClass("green").addClass("default").css("marginRight", 25).click(_btnSave_onclick);
        me.toolbar.$element.append("<div id='upload' style='display:none;'><input type='file' name='file' id='uploadImage'/> <input type='file' name='file' id='uploadAttachment'/></div>");
        me.toolbars = [me.toolbar];
        
        setTimeout(function(){
            me.$uploadImageButton = me.toolbar.$element.find("#uploadImage"); 
            me.$uploadImageButton.uploadify({
                "uploader"          : "/api/0/admin/upload/image",
                "swf"               : $mappath("~/scripts/lib/uploadify/uploadify.swf"),
                "fileObjName"       : "file",
                "fileTypeExts"      : "*.jpg; *.png; *.gif",
                "fileTypeDesc"      : "所有图片",
                "buttonText"        : "上传图片",
                "height"            : 26,
                "onDialogOpen"      : function()
                {
                    me.$uploadImageButton.uploadify("settings", "formData", { postId: me.data.id });
                },
                "onUploadSuccess"   : function(p_file, p_data, p_response)
                {
                    me.contentEditor.execCommand("insertimage", p_data, null, null);
                }
            });
            
            me.$uploadAttachmentButton = me.toolbar.$element.find("#uploadAttachment");
            me.$uploadAttachmentButton.uploadify({
                "uploader"      : "/api/0/admin/upload/attachment",
                "swf"           : $mappath("~/scripts/lib/uploadify/uploadify.swf"),
                "fileObjName"   : "file",
                "buttonText"    : "上传附件",
                "fileTypeDesc"  : "所有文件",
                "height"        : 26,
                "onDialogOpen"      : function()
                {
                    me.$uploadAttachmentButton.uploadify("settings", "formData", { postId: me.data.id });
                },
                "onUploadSuccess"   : function(p_file, p_data, p_response)
                {
                    if (me.data.attachments == null)
                    {
                        me.data.attachments = [];
                    }
                    var attachment = eval("(" + p_data + ")");
                    me.data.attachments.add(attachment);
                    me.addAttachment(attachment);
                    _autoResize();
                }
            });
        }, 1);
    };
    
    function _initView()
    {
        var $main = $("<div id=main/>");
        me.$main = $main;
        var $sideBar = $("<div id=sideBar/>");
        
        var $div = $("<div class=section id=titleSection />");
        me.$title = $("<input id=title type=text/>");
        me.$title.attr({ title: "请在这里输入标题" });
        $div.append(me.$title);
        $main.append($div);
        
        $div = $("<div class='section' id='summarySection'>");
        me.$summary = $("<textarea id=summary/>");
        me.$summary.attr({ title: "请在这里添加摘要" });
        $div.append(me.$summary);
        $main.append($div);
        
        
        $div = $("<div class='section' id='attachmentSection'> <ul id='attachmentList'></ul> </div>");
        me.$attachmentList = $div.children("#attachmentList");
        me.$attachmentList.on("click", "#delete", _btnDeleteAttachment_onclick);
        $main.append($div);
                
        
        var $contentFrame = $("<div id='contentFrame'/>");
        me.$content = $("<textarea id='content'/>");
        $contentFrame.append(me.$content);
        $main.append($contentFrame);
        
        
        

        
        var $dl = $("<dl><dt>唯一标识</dt> <dd></dd></dl>");
        me.$id = $("<input type=text id=id readonly onclick='this.select()'>");
        $dl.children("dd").append(me.$id);
        $sideBar.append($dl);

        
        
        $dl = $("<dl><dt>状态</dt> <dd></dd></dl>");
        me.$postStatus = $("<select id=postStatus><option value=0>尚未发布</option><option value=1>已发布</option></select>");
        $dl.children("dd").append(me.$postStatus);
        $sideBar.append($dl);
        

        $dl = $("<dl><dt>类型</dt> <dd></dd></dl>");
        me.$postType = $("<select id=postStatus><option value=0>静态信息</option><option value=1 selected=selected>新闻</option><option value=2>通知</option></select>");
        $dl.children("dd").append(me.$postType);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>栏目</dt> <dd></dd></dl>");
        me.$category = $("<select id=category><option value=0>(请选择栏目)</option></select>");
        $dl.children("dd").append(me.$category);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>子栏目</dt> <dd></dd></dl>");
        me.$subcategory = $("<select id=subcategory><option value=0>(空)</option></select>");
        $dl.children("dd").append(me.$subcategory);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>首页栏目</dt> <dd></dd></dl>");
        me.$homeSubcategory = $("<select id=subcategory><option value=0>(空)</option></select>");
        $dl.children("dd").append(me.$homeSubcategory);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>封面图片</dt> <dd></dd></dl>");
        me.$photoURL = $("<input type=text id=photoURL />");
        $dl.children("dd").append(me.$photoURL);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>来源</dt> <dd></dd></dl>");
        me.$source = $("<input type=text id=source />");
        $dl.children("dd").append(me.$source);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>发布者</dt> <dd></dd></dl>");
        me.$publisher = $("<label id=publisher />");
        $dl.children("dd").append(me.$publisher);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>创建时间</dt> <dd></dd></dl>");
        me.$createTime = $("<label id=createTime />");
        $dl.children("dd").append(me.$createTime);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>更新时间</dt> <dd></dd></dl>");
        me.$updateTime = $("<label id=updateTime />");
        $dl.children("dd").append(me.$updateTime);
        $sideBar.append($dl);
        
        me.view.$element.append($main);
        me.view.$element.append($sideBar);
        
        
        me.restClient.GET("admin/category/", null)
            .success(function(p_result){
                me.categories = p_result;
                for (var i = 0; i < me.categories.length; i++)
                {
                    var category = me.categories[i];
                    var $opt = $("<option>");
                    $opt.attr("value", category.id);
                    $opt.text(category.name);
                    me.$category.append($opt);
                }
                if (me.data != null && me.data.categoryId)
                {
                    me.$category.val(me.data.categoryId);
                    _category_onchanged();
                    me.$subcategory.val(me.data.subcategoryId);
                }
                
                for (var i = 0; i < me.categories.length; i++)
                {
                    if (me.categories[i].id == "news")
                    {
                        var subcategories = me.categories[i].subcategories;
                        for (var j = 0; j < subcategories.length; j++)
                        {
                            var sc = subcategories[j];
                            var $opt = $("<option>");
                            $opt.attr("value", sc.id);
                            $opt.text(sc.name);
                            me.$homeSubcategory.append($opt);
                        }
                        break;
                    }
                }
                if (me.data != null && me.data.homeSubcategoryId != null)
                {
                    me.$homeSubcategory.val(me.data.homeSubcategoryId);
                }
            });
        me.$category.change(_category_onchanged);
    };
    
    me.setData = function(p_data)
    {
        me.data = p_data;
        me.renderView();
    };
    
    me.renderView = function()
    {
        if (me.data.id != null)
        {
            me.$id.val(me.data.id);
            me.toolbar.$element.find("#upload").css("display", "inline-block");
        }
        else
        {
            me.$id.val("");
            me.toolbar.$element.find("#upload").css("display", "none");
        }            
        me.$title.val(me.data.title);
        me.$title.blur();
        me.$summary.val(me.data.summary);
        me.$summary.blur();
        
        me.$category.val(me.data.categoryId);
        _category_onchanged();
        
        if (me.data.subcategoryId != null)
        {
            me.$subcategory.val(me.data.subcategoryId);
        }
        else
        {
            me.$subcategory.val(0);
        }
        
        if (me.data.homeSubcategoryId != null)
        {
            me.$homeSubcategory.val(me.data.homeSubcategoryId);
        }
        else
        {
            me.$homeSubcategory.val(0);
        }
        
        me.$postStatus.val(me.data.postStatus);
        me.$postType.val(me.data.postType);
        me.$source.val(me.data.source);
        me.$publisher.text(me.data.publisher);
        me.$photoURL.val(me.data.photoURL);
        
        if (me.data.createTime)
        {
            var createTime = new Date(me.data.createTime);
            me.$createTime.text($format(createTime, "yyyy年M月d日 HH:mm:ss"));
        }
        else
        {
            me.$createTime.text("");
        }
        
        if (me.data.updateTime)
        {
            var updateTime = new Date(me.data.updateTime);
            me.$updateTime.text($format(updateTime, "yyyy年M月d日 HH:mm:ss"));
        }
        else
        {
            me.$createTime.text("");
        }
        
        me.$content.val(me.data.contentText);
        if (me.contentEditor == null)
        {
            me.contentEditor = me.$content.cleditor({
                width: "100%",
                height: "100%"
            })[0];
        }
        
        me.renderAttachmentListView();
        
        _autoResize();

        me.contentEditor.focus();
    };
    
    me.renderAttachmentListView = function()
    {
        me.$attachmentList.children().remove();
        if (me.data.attachments == null)
        {
            me.data.attachments = [];
        }
        for (var i = 0; i < me.data.attachments.length; i++)
        {
            me.addAttachment(me.data.attachments[i]);
        }
    };
    
    me.addAttachment = function(p_attachment)
    {
        var $li = $("<li> <span id='name'/> <span id='size'/> <div id='delete'/> </li>");
        $li.attr("id", p_attachment.id);
        $li.children("#name").text(p_attachment.name);
        $li.children("#size").text(_formatFileSize(p_attachment.size));
        me.$attachmentList.append($li);
    };
    
    me.savePost = function()
    {        
        me.contentEditor.updateTextArea();
        var post = {};
        post.id = me.data.id;
        post.title = me.$title.val().trim();
        if (post.title == "")
        {
            _showWarning("title", "标题不能为空。");
            return;
        }
        
        if (post.title.length > 60)
        {
            _showWarning("title", "标题不能超过 60 个汉字。");
            return;
        }
        
        post.summary = me.$summary.val().trim();
        if (post.summary.length > 120)
        {
            _showWarning("summary", "摘要不能超过 120 个汉字。");
            return;
        }
        
        
        post.categoryId = me.$category.val();
        if (post.categoryId == 0)
        {
            _showWarning("category", "请选择该文章所在的栏目。");
            return;
        }
        
        post.subcategoryId = me.$subcategory.val();
        if (post.subcategoryId == 0)
        {
            post.subcategoryId = null;
        }
        
        post.homeSubcategoryId = me.$homeSubcategory.val();
        if (post.homeSubcategoryId == 0)
        {
            post.homeSubcategoryId = null;
        }
        
        post.contentText = me.$content.val();
        post.postStatus = parseInt(me.$postStatus.val());
        post.postType = parseInt(me.$postType.val());
        post.source = me.$source.val();
        
        post.photoURL = me.$photoURL.val();
        if (post.photoURL == "")
        {
            post.photoURL = null;
        }
        
        if (post.id != null)
        {
            me.restClient.PUT("admin/post/" + post.id, { post: JSON.stringify(post) })
                .success(function(p_result){
                    $.extend(me.data, post);
                    $.extend(me.data, p_result);
                    
                    me.renderView();
                    $pageController.rootViewControllers["post"].postDetailViewController.renderView();
                    
                    var listViewController = $pageController.rootViewControllers["post"].postListViewController;
                    var postInList = listViewController.data[listViewController.view.selectedIndex];
                    postInList.title = me.data.title;
                    postInList.updateTime = me.data.updateTime;
                    postInList.source = me.data.source;
                    postInList.summary = me.data.summary;
                    listViewController.reloadSelectedRow();
                    
                    alert("您已成功保存当前操作的文章。");
                })
                .fail(function()
                {
                    alert("无法正确保存指定的文章。");
                });
        }
        else
        {
            me.restClient.POST("admin/post/", { post: JSON.stringify(post) })
                .success(function(p_result)
                {
                    $.extend(me.data, post);
                    $.extend(me.data, p_result);
                    me.renderView();
                    
                    var listViewController = $pageController.rootViewControllers["post"].postListViewController;
                    listViewController.insertItem(0, me.data);
                    
                    alert("您已成功创建当前操作的文章。");
                })
                .fail(function()
                {
                    alert("保存文章失败。");
                });
        }
    };
    
    
    function _showWarning(p_field, p_message)    
    {
        me.view.$element.find("#" + p_field).focus();
        me.view.$element.find("#" + p_field).select();
        alert(p_message);
    }
    
    function _btnSave_onclick(e)
    {
        me.savePost();
    }
    
    function _category_onchanged(e)
    {
        var categoryId = me.$category.attr("value");
        me.$subcategory.children("option[value!=\"0\"]").remove();
        if (categoryId != 0)
        {
            for (var i = 0; i < me.categories.length; i++)
            {
                if (me.categories[i].id == categoryId)
                {
                    var subcategories = me.categories[i].subcategories;
                    for (var j = 0; j < subcategories.length; j++)
                    {
                        var sc = subcategories[j];
                        var $opt = $("<option>");
                        $opt.attr("value", sc.id);
                        $opt.text(sc.name);
                        me.$subcategory.append($opt);
                    }
                    break;
                }
            }
        }
    }
    
    function _btnDeleteAttachment_onclick(e)
    {
        var id = $(e.target).parent().attr("id");
        if (confirm("确实要删除所选择的附件吗？"))
        {
            me.restClient.DELETE("admin/upload/attachment/" + id, null)
            .success(function(p_result){
                for (var i = 0; i < me.data.attachments.length; i++)
                {
                    var att = me.data.attachments[i];
                    if (att.id == id)
                    {
                        me.data.attachments.removeAt(i);
                        break;
                    }
                }
                var $li = me.$attachmentList.find("#" + id);
                $li.animate({
                    width: 0,
                    opacity: 0
                }, function()
                {
                    $li.remove();
                    _autoResize();
                });
            })
            .fail(function()
            {
                alert("无法正确删除指定的附件。");
            });
        }
    }
    
    
    function _btnCancel_onclick(e)
    {
        $pageController.popViewController();
    }
    
    
    function _autoResize() 
    {
        if (me.data.attachments == null || me.data.attachments.length == 0)
        {
            me.$main.find("#attachmentSection").hide();
        }
        else
        {
            me.$main.find("#attachmentSection").show();
        }

        var offsetTop = 0;
        var $children = me.$main.children(".section");
        for (var i = 0; i < $children.length; i++)
        {
            if ($children.eq(i).css("display") != "none")
            {
                offsetTop += $children.eq(i).height() + 1;
            }
        }
        me.$main.find("#contentFrame").css("top", offsetTop);
        me.contentEditor.updateFrame();
        me.contentEditor.refresh();
    }
    $(window).resize(_autoResize);
    
    function _formatFileSize(p_size)
    {
        if (p_size < 1024 * 5)
        {
            return Math.round(p_size * 10 / 1024) / 10 + "KB";
        }
        else if (p_size < 10240000)
        {
            return Math.round(p_size * 10 / 1024000) / 10 + "MB";
        }
        else
        {
            return Math.round(p_size * 10 / 1024000000) / 10 + "GB";
        }
    }
    
    return me.endOfClass(arguments);
}