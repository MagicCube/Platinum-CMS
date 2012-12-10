$ns("pt.cms.admin.security.page");

$import("pt.cms.admin.rest.RESTClient");

$include("$/pt/cms/admin/security/page/LoginPage.css");

pt.cms.admin.security.page.LoginPageController = function()
{
    var me = $extend(mx.page.PageController);
    var base = {};
    
    var _validated = false;
    
    me.restClient = null;
    
    base.pageDidLoad = me.pageDidLoad;
    me.pageDidLoad = function()
    {
        base.pageDidLoad();
        
        me.restClient = new pt.cms.admin.rest.RESTClient();
        
        var top = ($(document).height() - $("#loginPanel").height()) / 2;
        $("#loginPanel").css("marginTop", top);
        $("#loginPanel").fadeIn();
        
        $("#loginName").select();
        $("#loginForm").on("submit", _loginForm_onsubmit);
    };
    
    function _shake()
    {
        var duration = 70;
        var offset = 20;
        var animation = $("#loginForm").animate({ left: -offset }, duration);
        for (var i = 0; i < 4; i++)
        {
            animation = animation.animate({left: (i % 2 == 0 ? offset : -offset)}, duration);
        }
        animation.animate({ left: 0 }, duration, function(){
            $("#loginPassword").focus();
            $("#loginPassword").select();
        });
    }
    
    function _loginForm_onsubmit(e)
    {
        if (_validated)
        {
            return;
        }
        
        e.preventDefault();
        
        if ($("#loginName").val() == "" || $("#loginPassword").val() == "")
        {
            return;
        }
        
        $("#loginName").attr("disabled", true);
        $("#loginPassword").attr("disabled", true);
        $("#loginButton").attr("disabled", true);
        
        me.restClient.POST("security/validate", { loginName: $("#loginName").val() , loginPassword: $("#loginPassword").val()  })
            .success(function()
            {
                $("#loginName").attr("disabled", false);
                $("#loginPassword").attr("disabled", false);
                $("#loginButton").attr("disabled", false);
                _validated = true;
                
                $("#loginForm").animate({
                    opacity: 0
                }, 500);
                
                $("#logo").animate({
                    top: 90
                }, 500, function()
                {
                    $("#loginForm").eq(0).submit();
                });
            })
            .fail(function()
            {
                _shake();
                $("#loginName").attr("disabled", false);
                $("#loginPassword").attr("disabled", false);
                $("#loginButton").attr("disabled", false);
            });
    }
    
    return me.endOfClass(arguments);
};