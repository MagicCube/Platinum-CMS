$ns("pt.cms.admin.rest");

pt.cms.admin.rest.RESTClient = function()
{
    var me = $extend(MXComponent);
    var base = {};

    me.baseUrl = "/api/0/";
    
    me.GET = function(p_path, p_data)
    {
        var url = me.baseUrl + p_path;
        var result = $.ajax({
            type: "GET",
            url: url,
            data: p_data,
        });
        return result;
    };
    
    me.POST = function(p_path, p_data)
    {
        var url = me.baseUrl + p_path;
        var result = $.ajax({
            type: "POST",
            url: url,
            data: p_data
        });
        return result;
    };
    
    me.PUT = function(p_path, p_data)
    {
        var url = me.baseUrl + p_path;
        var result = $.ajax({
            type: "PUT",
            url: url,
            data: p_data
        });
        return result;
    };

    me.DELETE = function(p_path, p_data)
    {
        var url = me.baseUrl + p_path;
        var result = $.ajax({
            type: "DELETE",
            url: url,
            data: p_data
        });
        return result;
    };
    
    return me.endOfClass(arguments);
};