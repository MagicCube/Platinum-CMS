$ns("pt.cms.admin.post.view");

$include("$/pt/cms/admin/post/view/PostEditView.css");

pt.cms.admin.post.view.PostEditViewController = function()
{
    var me = $extend(mx.view.ViewController);
    var base = {};
    
    me.data = null;
    
    
    
    me.$title = null;
    me.$summary = null;
    me.$category = null;
    me.$subcategory = null;
    
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
        me.toolbar.addButton("savePost", "保存").addClass("default");
        me.toolbar.addButton("cancel", "取消").addClass("yellow").click(_btnCancel_onclick);
        me.toolbars = [me.toolbar];
    };
    
    function _initView()
    {
        var $main = $("<div id=main/>");
        var $sideBar = $("<div id=sideBar/>");
        
        me.$title = $("<input id=title type=text/>");
        var $div = $("<div class=section id=titleSection />");
        $div.append(me.$title);
        $main.append($div);
        
        
        var $dl = $("<dl><dt>状态</dt> <dd></dd></dl>");
        me.$postStatus = $("<select id=postStatus />");
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
        
        me.$summary = $("<textarea id=summary/>");
        $div = $("<div class='section' id='summarySection'>");
        $div.append(me.$summary);
        $main.append($div);
        
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
        me.$summary.val(me.data.summary);
        
        //me.$postStatus;
        me.$source.val(me.data.source);
        me.$publisher.val(me.data.publisher);
        me.$createTime.text(me.data.createTime);
        me.$updateTime.text(me.data.updateTime);
    }
    
    
    
    function _btnCancel_onclick(e)
    {
        $pageController.popViewController();
    }    
    
    return me.endOfClass(arguments);
}