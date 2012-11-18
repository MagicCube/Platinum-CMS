$ns("pt.cms.admin.post.view");

$include("~/scripts/lib/cleditor/jquery.cleditor.min.js");
$include("~/scripts/lib/cleditor/jquery.cleditor.css");

$include("$/pt/cms/admin/post/view/PostEditView.css");

pt.cms.admin.post.view.PostEditViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.data = null;
    me.categories = null;
    me.contentEditor = null;
    me.restClient = null;
    
    me.$id = null;
    me.$title = null;
    me.$summary = null;
    me.$category = null;
    me.$subcategory = null;
    me.$content = null;
    me.$postStatus = null;
    me.$source = null;
    me.$photoURL = null;
    me.$publisher = null;
    me.$createTime = null;
    me.$updateTime = null;
    
    
    base.viewDidLoad = me.viewDidLoad;
    me.viewDidLoad = function()
    {
        me.view.$element.addClass("PostEditView");
        
        base.viewDidLoad();
        
        _initView();
        
        me.toolbar = new pt.cms.admin.common.view.Toolbar();
        me.toolbar.addButton("savePost", "保存").addClass("default").click(_btnSave_onclick);
        me.toolbar.addButton("cancel", "返回").addClass("yellow").click(_btnCancel_onclick);
        me.toolbars = [me.toolbar];
    };
    
    function _initView()
    {
        var $main = $("<div id=main/>");
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
        
        me.$content = $("<textarea id='content'/>");
        $main.append(me.$content);
        
        
        

        
        var $dl = $("<dl><dt>唯一标识</dt> <dd></dd></dl>");
        me.$id = $("<input type=text id=id readonly onclick='this.select()'>");
        $dl.children("dd").append(me.$id);
        $sideBar.append($dl);
        
        $dl = $("<dl><dt>状态</dt> <dd></dd></dl>");
        me.$postStatus = $("<select id=postStatus><option value=0>尚未发布</option><option value=1>已发布</option></select>");
        $dl.children("dd").append(me.$postStatus);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>栏目</dt> <dd></dd></dl>");
        me.$category = $("<select id=category><option value=0>(请选择栏目)</option></select>");
        $dl.children("dd").append(me.$category);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>子栏目</dt> <dd></dd></dl>");
        me.$subcategory = $("<select id=subcategory><option value=0>(空)</option></select>");
        $dl.children("dd").append(me.$subcategory);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>图片</dt> <dd></dd></dl>");
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
        }
        else
        {
            me.$id.val("");
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
        
        me.$postStatus.val(me.data.postStatus);
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
                height: "80%",
            })[0];
        }
        else
        {
            me.contentEditor.updateFrame();
            me.contentEditor.refresh();
        }
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
        post.contentText = me.$content.val();
        post.postStatus = parseInt(me.$postStatus.val());
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
    
    
    function _btnCancel_onclick(e)
    {
        $pageController.popViewController();
    }    
    
    return me.endOfClass(arguments);
}