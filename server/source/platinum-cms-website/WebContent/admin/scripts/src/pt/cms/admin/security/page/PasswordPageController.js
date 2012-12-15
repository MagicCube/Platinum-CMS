$ns("pt.cms.admin.security.page");

$import("pt.cms.admin.rest.RESTClient");

$include("$/pt/cms/admin/security/page/PasswordPage.css");

pt.cms.admin.security.page.PasswordPageController = function()
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
        
        var top = ($(document).height() - $("#passwordPanel").height()) / 2;
        $("#passwordPanel").css("marginTop", top);
        $("#passwordPanel").fadeIn();
        
        $("#password").select();
        $("#passwordForm").on("submit", _passwordForm_onsubmit);
    };
    
    function _shake()
    {
        var duration = 70;
        var offset = 20;
        var animation = $("#passwordForm").animate({ left: -offset }, duration);
        for (var i = 0; i < 4; i++)
        {
            animation = animation.animate({left: (i % 2 == 0 ? offset : -offset)}, duration);
        }
        animation.animate({ left: 0 }, duration, function(){
            setTimeout(function(){
                $("#loginPassword").focus();
                $("#loginPassword").select();
            }, 100);
        });
    }
    
    function _passwordForm_onsubmit(e)
    {
        e.preventDefault();
        
        if ($("#password").val() == "" || $("#newPassword").val() == "" || $("#confirmPassword").val() == "")
        {
            return;
        }
        if ($("#newPassword").val() != $("#confirmPassword").val())
        {
            alert("两次输入的密码不一致，请重新输入。");
            $("#newPassword").val("");
            $("#confirmPassword").val("");
            $("#newPassword").focus();
            $("#newPassword").select();
            return;
        }
        
        $("#password").attr("disabled", true);
        $("#newPassword").attr("disabled", true);
        $("#confirmPassword").attr("disabled", true);
        $("#confirmButton").attr("disabled", true);
        
        me.restClient.POST("security/password", { loginPassword: $("#password").val() , newPassword: $("#newPassword").val()  })
            .success(function()
            {
                alert("您已成功修改密码，请重新登录。");
                $("#logoffForm").submit();
            })
            .fail(function(request)
            {
                alert("密码修改失败。" + request.responseText);
            });
    }
    
    return me.endOfClass(arguments);
};