$ns("pt.cms.admin.post.view");

$include("~/scripts/lib/cleditor/jquery.cleditor.min.js");
$include("~/scripts/lib/cleditor/jquery.cleditor.css");

$include("$/pt/cms/admin/post/view/PostEditView.css");

pt.cms.admin.post.view.PostEditViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.data = null;
    me.contentEditor = null;
    
    me.$title = null;
    me.$summary = null;
    me.$category = null;
    me.$subcategory = null;
    me.$content = null;
    me.$postStatus = null;
    me.$source = null;
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
        me.toolbar.addButton("cancel", "取消").addClass("yellow").click(_btnCancel_onclick);
        me.toolbars = [me.toolbar];
    };
    
    function _initView()
    {
        var $main = $("<div id=main/>");
        var $sideBar = $("<div id=sideBar/>");
        
        var $div = $("<div class=section id=titleSection />");
        me.$title = $("<input id=title type=text/>");
        me.$title.hint({ text: "请在这里输入标题" });
        $div.append(me.$title);
        $main.append($div);
        
        $div = $("<div class='section' id='summarySection'>");
        me.$summary = $("<textarea id=summary/>");
        me.$summary.hint({ text: "请在这里添加摘要" });
        $div.append(me.$summary);
        $main.append($div);
        
        me.$content = $("<textarea id='content'/>");
        $main.append(me.$content);
        
        
        var $dl = $("<dl><dt>状态</dt> <dd></dd></dl>");
        me.$postStatus = $("<select id=postStatus><option value=0>尚未发布</option><option value=1>已发布</option></select>");
        $dl.children("dd").append(me.$postStatus);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>栏目</dt> <dd></dd></dl>");
        me.$category = $("<select id=category><option>请选择栏目</option></select>");
        $dl.children("dd").append(me.$category);
        $sideBar.append($dl);
        
        var $dl = $("<dl><dt>子栏目</dt> <dd></dd></dl>");
        me.$subcategory = $("<select id=subcategory><option>请选择子栏目</option></select>");
        $dl.children("dd").append(me.$subcategory);
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
    };
    
    me.setData = function(p_data)
    {
        me.data = p_data;
        me.renderView();
    };
    
    me.renderView = function()
    {
        me.$title.val(me.data.title);
        me.$title.blur();
        me.$summary.val(me.data.summary);
        me.$summary.blur();
        
        me.$postStatus.val(me.data.postStatus);
        me.$source.val(me.data.source);
        me.$publisher.text(me.data.publisher);
        
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
                height: "90%",
            })[0];
        }
        else
        {
            me.contentEditor.updateFrame();
            me.contentEditor.refresh();
        }
    };
    
    
    
    function _btnSave_onclick(e)
    {
        me.contentEditor.updateTextArea();
        var post = {};
        post.title = me.$title.val();
        post.summary = me.$summary.val();
        //post.contentText = me.$content.val();
        post.postStatus = parseInt(me.$postStatus.val());
        post.source = me.$source.val();
        alert(JSON.stringify(post));
    }
    
    
    function _btnCancel_onclick(e)
    {
        $pageController.popViewController();
    }    
    
    return me.endOfClass(arguments);
}