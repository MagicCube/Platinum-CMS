$ns("pt.cms.admin.common.page");

$import("pt.cms.admin.rest.RESTClient");
$import("pt.cms.admin.common.view.Toolbar");
$import("pt.cms.admin.common.view.NavigationListViewController");

$include("$/pt/cms/admin/common/page/AdminPage.css");

pt.cms.admin.common.page.AdminPageController = function()
{
    var me = $extend(mx.page.PageController);
    me.pageSelector = "body > #admin";
    var base = {};
    
    me.restClient = null;
    me.navigationListViewController = null;
    me.rootViewControllers = {};
    
    var _$blankToolbar = null;
    
    base.pageDidLoad = me.pageDidLoad;
    me.pageDidLoad = function()
    {
        me.$container = me.$page.children("#content");
        base.pageDidLoad();
        
        me.restClient = new pt.cms.admin.rest.RESTClient();
        me.navigationListViewController = new pt.cms.admin.common.view.NavigationListViewController({
            view: { $element: me.$page.children("#navigationListView"), bounds: { left: 0, top: 40, bottom: 0, width: 205 } },
            items: [
                { id: "dashboard", title: "My Dashboard", description: "显示我发布的内容和常规任务" },
                { id: "post", title: "内容", description: "添加及维护各种形式的内容" },
                { id: "category", title: "栏目", description: "添加及维护内容的栏目" },
                { id: "user", title: "用户", description: "管理系统用户及其对应权限" },
                { id: "system", title: "系统", description: "管理和配置系统" }
            ]
        });
        me.navigationListViewController.reloadRows();
        
        me.navigateTo($path, false);
    };
    
    me.navigateTo = function(p_path, p_animation)
    {    
        me.navigationListViewController.selectItemById(p_path, false);

        if (me.rootViewControllers[p_path] == null)
        {
            mx.importClass("pt.cms.admin." + p_path + ".view.RootViewController");
            mx.whenReady(function(){
                var controller = new pt.cms.admin[p_path].view.RootViewController({
                    restClient: me.restClient
                });
                me.rootViewControllers[p_path] = controller;
                me.setRootViewController(controller, p_animation);
            });
        }
        else
        {
            me.setRootViewController(me.rootViewControllers[p_path], p_animation);
        }
    };
    
    base.setRootViewController = me.setRootViewController;
    me.setRootViewController = function(p_controller, p_animation)
    {
        base.setRootViewController(p_controller, p_animation);
        
        var $toolstrip = me.$page.children("#toolstrip");
        $toolstrip.children().detach();
        if (p_controller.toolbars != null && p_controller.toolbars.length > 0)
        {
            for (var i = 0; i < p_controller.toolbars.length; i++)
            {
                var toolbar = p_controller.toolbars[i];
                $toolstrip.append(toolbar.$element);
            }
            
            if (p_controller.toolbars.length == 2)
            {
                p_controller.toolbars[0].$element.css("borderRadius", "4px 4px 0 0");
            }
        }
        else
        {
            if (_$blankToolbar == null)
            {
                _$blankToolbar = $("<div class='Toolbar'>");
            }
            $toolstrip.append(_$blankToolbar);
        }
    };
    
    return me.endOfClass(arguments);
};