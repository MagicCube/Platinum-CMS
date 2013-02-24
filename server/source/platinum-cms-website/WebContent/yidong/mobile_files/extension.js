(function(){
    //console.log(typeof MyRebate);
    if("undefined" !== typeof MyRebate) {
        return ;
    }
    window.MyRebate = MyRebate = {
        server: "http://www.caigoumi.com/",
        css: "css/extension/style.css",
        jQuery: "js/jquery-1.8.3.min.js",
        jQueryUi: "js/jquery/plugin/jquery-ui-1.9.1.custom.min.js",
        easyDrag: "js/jquery/plugin/jquery.easydrag.handler.beta2.js",
        params: {
            "isInviteIframeLoaded": false,
            "pinSiteindex": false
        },
        keys: {
            "userPinIndex": "userPinIndex",
            "userAlipayAccount": "userAlipayAccount"
        },
        SITE_RATE: 0.75,
        SITE_PATTERN: {            
            "^(http|https)://(item|item\.beta|item\.lp|ju|detail|chaoshi|spu|a.m)\.(taobao|tmall)\.com/": "tb_item",
            "^(http|https)://rate\.taobao\.com/(myRate|user-myrate)": "tb_rate",
            "^(http|https)://trade\.taobao\.com/trade/itemlist/(list_bought_items|listboughtitems).htm": "tb_bought",
            "^(http|https)://rate\.taobao\.com/(remark_seller|append_rate)\.(jhtml|htm)": "tb_remark",
            "^(http|https)://www\.(taobao|tmall)\.com/": "tb",
            "^(http|https)://*/*": "other"
        },
        SITE_PARAM_RULES: {
            "tb_item": {
                "ju": ["item_id=\\d+", "itemid=\\d+"],
                "spu": ["default_item_id=\\d+", {
                    "pattern": "spu-\\d+-\\d+",
                    "delimiter": "-",
                    "offset": "2"
                }],
                "item": ["item_num=\\d+", "item_num_id=\\d+", "item_id=\\d+", "mallstitemid=\\d+", "id=\\d+"],
                "a.m": ["i\\d+"]
            },
            "tb_rate": {
                "user-myrate": [
                    //"user-myrate-(\\d+)+--(buyerOrSeller|receivedOrPosted)%7C(\\d)--(buyerOrSeller|receivedOrPosted)%7C(\\d)\.htm",
                    //"user-myrate-(\\d+)+--isSpeculation%7Ctrue\.htm"
                    "user-myrate-(\\d+)+--(\.*)\.htm"
                ],
                "myRate": []
            },
            "tb_bought": {},
            "tb_remark": {},
            "other": {}
        },
        SITE_PARAMS: [
            {
                "site": "fanliwa.com",
                "name": "返利蛙",
                "icon": "images/icon/fanliwa.ico",
                "rate": "0.75",
                "href": "http://www.fanliwa.com/?id={{numIid}}"
            },
            {
                "site": "bbbao.com",
                "name": "比比宝",
                "icon": "images/icon/bbbao.ico",
                "rate": "0.72",
                "href": "http://www.bbbao.com/sku?url=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "57zhe.com",
                "name": "五七折",
                "icon": "images/icon/57zhe.ico",
                "rate": "0.72",
                "href": "http://www.57zhe.com/item/{{numIid}}.html"
            },
            {
                "site": "geihui.com",
                "name": "给惠网",
                "icon": "images/icon/geihui.ico",
                "rate": "0.7",
                "href": "http://www.geihui.com/t/search_goods?q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "emaiba.com.cn",
                "name": "易买吧",
                "icon": "images/icon/emaiba.com.cn.ico",
                "rate": "0.7",
                "href": "http://www.emaiba.com.cn/TaoBao/ItemSearch.aspx?id={{numIid}}"
            },
            {
                "site": "flk123.com",
                "name": "返利客123",
                "icon": "images/icon/flk123.ico",
                "rate": "0.7",
                "href": "http://www.flk123.com/index.php?c=dianpuv2&a=linkso&charset=gb2312&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&type=1&dptype=1"
            },
            {
                "site": "tbxzs.com",
                "name": "淘宝购物小助手",
                "icon": "images/icon/tbxzs.ico",
                "rate": "0.7",
                "href": "http://www.tbxzs.com/item/{{numIid}}.html"
            },
            {
                "site": "tfanli.net",
                "name": "淘返利",
                "icon": "images/icon/tfanli.net.ico",
                "rate": "0.7",
                "href": "http://www.tfanli.net/index.php?mod=tao&act=view&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&search=1"
            },
            {
                "site": "iwesale.com",
                "name": "麦小奇",
                "icon": "images/icon/iwesale.com.ico",
                "rate": "0.62",
                "href": "http://www.maixiaoqi.com/index.php?mod=tao&act=view&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "mizhe.com",
                "name": "米折网",
                "icon": "images/icon/mizhe.ico",
                "rate": "0.6",
                "href": "http://www.mizhe.com/search/item.html?q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "9imai.com",
                "name": "就爱买",
                "icon": "images/icon/9imai.com.ico",
                "rate": "0.6",
                "href": "http://fanli.9imai.com/?task=goods&num_iid={{numIid}}"
            },
            {
                "site": "fanliduo.com",
                "name": "返利多",
                "icon": "images/icon/fanliduo.com.ico",
                "rate": "0.6",
                "href": "http://www.fanliduo.com/view.php?q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&search=1"
            },
            {
                "site": "fanli.com",
                "name": "返利网",
                "icon": "images/icon/fanli.com.ico",
                "rate": "0.6",
                "href": "http://www.fanli.com/item-id-{{numIid}}.html"
            },
            {
                "site": "kxfanli.com",
                "name": "开心返利网",
                "icon": "images/icon/kxfanli.com.ico",
                "rate": "0.6",
                "href": "http://www.kxfanli.com/index.php?mod=tao&act=view&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&search=1"
            },
            {
                "site": "fanli.temi.com.cn",
                "name": "特米返利网",
                "icon": "images/icon/fanli.temi.com.cn.ico",
                "rate": "0.6",
                "href": "http://fanli.temi.com.cn/taobao_back_cash-view.html?num_iid={{numIid}}"
            },
            {
                "site": "luoboli.com",
                "name": "快乐淘",
                "icon": "images/icon/kailetao.com.ico",
                "rate": "0.6",
                "href": "http://www.luoboli.com/fanli/search.php?q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&go_type=1"
            },
            {
                "site": "51bi.com",
                "name": "51比购网",
                "icon": "images/icon/51bi.ico",
                "rate": "0.5",
                "href": "http://taobao.51bi.com/taobao/taobaoSearch.html?keyword=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&stype=0"
            },
            {
                "site": "xiudang.com",
                "name": "秀当网",
                "icon": "images/icon/xiudang.com.ico",
                "rate": "0.5",
                "href": "http://taobao.juanpi.com/fanli?t=item&k=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "800fanli.com",
                "name": "800返利网",
                "icon": "images/icon/800fanli.com.ico",
                "rate": "0.5",
                "href": "http://www.800fanli.com/index.php?mod=tao&act=view&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&search=1"
            },
            {
                "site": "fanhuan.com",
                "name": "返还网",
                "icon": "images/icon/fanhuan.ico",
                "rate": "0.5",
                "href": "http://taobao.fanhuan.com/search/item?url=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "88fanl.com",
                "name": "88返利网",
                "icon": "images/icon/88fanl.com.ico",
                "rate": "0.5",
                "href": "http://www.88fanl.com/index.php?mod=tao&act=view&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&search=1"
            },
            {
                "site": "fanlibang.com",
                "name": "返利帮",
                "icon": "images/icon/fanlibang.ico",
                "rate": "0.48",
                "href": "http://www.fanlibang.com/search/content.html/?to=1&q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}"
            },
            {
                "site": "52mai.net",
                "name": "我爱买",
                "icon": "images/icon/52mai.net.ico",
                "rate": "0.449",
                "href": "http://www.52mai.net/index.php?q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&mod=tao&act=view&search=1"
            },
            {
                "site": "265fanli.com",
                "name": "265返利网",
                "icon": "images/icon/265fanli.com.ico",
                "rate": "0.442",
                "href": "http://265fanli.com/index.php?q=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D{{numIid}}&mod=tao&act=view&search=1"
            },
            {
                "site": "51fanli.com",
                "name": "51返利网",
                "icon": "images/icon/51fanli.ico",
                "rate": "0.43",
                "href": "http://taobao.51fanli.com/search/searchTaobaoItems/keywords/http%25253A%25252F%25252Fitem.taobao.com%25252Fitem.htm%25253Fid%25253D{{numIid}}"
            },            
        ],
        SITE_GRPUP_PARAMS: ["0:2", "1:3", "2:3", "3:4", "4:4", "5:5", "6:4"],
        A: function(a, b){
            if (typeof b == "string") {
                a.innerHTML = b;
            } else {
                a.appendChild(b);
            }
            return b;
        },
        C: function(name){
            return document.createElement(name);
        },
        T: function(name, no){
            return document.getElementsByTagName(name)[no];
        },
        addScript: function(content, inline, callback){
            var head = MyRebate.T("head", 0);
            var script = MyRebate.C("script");
            script.type = "text/javascript";
            script.charset = "utf-8";
            if (inline) {
                script.text = content;
            } else {
                var d = new Date();
                script.src = content + "?t=" + d.getFullYear() + d.getMonth() + d.getDate();
                script.onload = script.onreadystatechange = function(){
                    if (script.readyState && script.readyState != "loaded" && script.readyState != "complete") {
                        return;
                    } else {
                        if (callback) {
                            callback();
                        }
                        script.onload = script.onreadystatechange = null;
                    }
                }
            }
            MyRebate.A(head, script);
            if (inline && callback) {
                callback();
            }
        },
        addCss: function(content, inline){
            var css, head = MyRebate.T("head", 0);
            if (inline) {
                css = MyRebate.C("stlye");
                css.type = "text/css";
                css.text = content;
            } else {
                var d = new Date();
                css = MyRebate.C("link");
                css.rel = "stylesheet";
                css.href = content + "?t=" + d.getFullYear() + d.getMonth() + d.getDate();
            }
            MyRebate.A(head, css);
        },        
        loadScript: function(url, stat, callback){
            if(stat) {
                callback();
            } else {
                MyRebate.$.getScript(MyRebate.server + url, function(){
                    callback();
                });
            }
        },
        base64: {
            // private property
            _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
            // public method for encoding
            encode: function (input) {
                var output = "";
                var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
                var i = 0;
                input = this._utf8_encode(input);
                while (i < input.length) {
                    chr1 = input.charCodeAt(i++);
                    chr2 = input.charCodeAt(i++);
                    chr3 = input.charCodeAt(i++);
                    enc1 = chr1 >> 2;
                    enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                    enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                    enc4 = chr3 & 63;
                    if (isNaN(chr2)) {
                        enc3 = enc4 = 64;
                    } else if (isNaN(chr3)) {
                        enc4 = 64;
                    }
                    output = output +
                    this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
                    this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
                }
                return output;
            },
            // public method for decoding
            decode: function (input) {
                var output = "";
                var chr1, chr2, chr3;
                var enc1, enc2, enc3, enc4;
                var i = 0;
                input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
                while (i < input.length) {
                    enc1 = this._keyStr.indexOf(input.charAt(i++));
                    enc2 = this._keyStr.indexOf(input.charAt(i++));
                    enc3 = this._keyStr.indexOf(input.charAt(i++));
                    enc4 = this._keyStr.indexOf(input.charAt(i++));
                    chr1 = (enc1 << 2) | (enc2 >> 4);
                    chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
                    chr3 = ((enc3 & 3) << 6) | enc4;
                    output = output + String.fromCharCode(chr1);
                    if (enc3 != 64) {
                        output = output + String.fromCharCode(chr2);
                    }
                    if (enc4 != 64) {
                        output = output + String.fromCharCode(chr3);
                    }
                }
                output = this._utf8_decode(output);
                return output;
            },
            // private method for UTF-8 encoding
            _utf8_encode: function (string) {
                string = string.replace(/\r\n/g,"\n");
                var utftext = "";
                for (var n = 0; n < string.length; n++) {
                    var c = string.charCodeAt(n);
                    if (c < 128) {
                        utftext += String.fromCharCode(c);
                    } else if((c > 127) && (c < 2048)) {
                        utftext += String.fromCharCode((c >> 6) | 192);
                        utftext += String.fromCharCode((c & 63) | 128);
                    } else {
                        utftext += String.fromCharCode((c >> 12) | 224);
                        utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                        utftext += String.fromCharCode((c & 63) | 128);
                    }
         
                }
                return utftext;
            },
            // private method for UTF-8 decoding
            _utf8_decode: function (utftext) {
                var string = "";
                var i = 0;
                var c = c1 = c2 = 0;
                while ( i < utftext.length ) {
                    c = utftext.charCodeAt(i);
                    if (c < 128) {
                        string += String.fromCharCode(c);
                        i++;
                    } else if((c > 191) && (c < 224)) {
                        c2 = utftext.charCodeAt(i+1);
                        string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                        i += 2;
                    } else {
                        c2 = utftext.charCodeAt(i+1);
                        c3 = utftext.charCodeAt(i+2);
                        string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                        i += 3;
                    }
                }
                return string;
            }
        },        
        isMobile: function(phone){
            //判断字符串是否是手机号码
            //中国移动号码段：134(0至8号段) 135 136 137 138 139 147 150 151 152 157 158 159 182 183 187 188
            //中国联通号码段：130 131 132 145 155 156 186
            //中国电信号码段：133 153 180 189
            var rt = false;
            var mbphnoM = /^(13[4-9])|^(147)|^(150)|^(151)|^(152)|^(157)|^(158)|^(159)|^(182)|^(183)|^(187)|^(188)/;
            var mbphnoU = /^(130)|^(131)|^(132)|^(145)|^(155)|^(156)|^(186)/;
            var mbphnoT = /^(133)|^(153)|^(180)|^(189)/;
            var num11 = /\d{11}/; //11位数字;
            if (null != phone && "" != phone && num11.exec(phone)) {
                if (mbphnoM.exec(phone) || mbphnoU.exec(phone) || mbphnoT.exec(phone)) {
                    rt = true;
                } else {
                    rt = false;
                }
            } else {
                rt = false;
            }
            return rt;
        },
        isMail: function(s){
            var rt = false;
            var pattern = /^([a-zA-Z0-9\._-])+@([a-zA-Z0-9_-])+(\.\S+)$/;
            if (pattern.test(s)) {
                rt = true;
            } else {
                rt = false;
            }
            return rt;
        },
        getRandomNum: function(Min, Max){
            var Range = Max - Min;
            var Rand = Math.random();
            return (Min + Math.round(Rand * Range));
        },
        api: {
            _init: function(url, data, callback) {
                MyRebate.$.ajax({
                    "url": MyRebate.server + url,
                    "data": data,
                    "dataType": "jsonp",
                    "jsonp": "callback",
                    "async": false,
                    "success": function(json){
                        if("undefined" !== typeof callback) {
                           callback(json); 
                        }
                    }
                });
            },
            taobaoke: function(numIid, callback){
                var url = "api/taobaoke/";
                var data = {"numIid": numIid, "pinKey": MyRebate.keys.userPinIndex};
                this._init(url, data, callback);
            },
            invite: function(){
                var url = "api/invite/";
                this._init(url, undefined, undefined);
            },
            setCookie: function(key, val, expire, callback){
                var url = "api/cookie/";
                var data = {"key": key, "val": val, "expire": expire};
                this._init(url, data, callback);
            },
            getCookie: function(key, callback){
                var url = "api/cookie/";
                var data = {"key": key, "op": "get"};
                this._init(url, data, callback);
            },
            removeCookie: function(key, callback){
                expire = -1;
                this.set(key, null, expire, callback);
            }
        },
        docCookies: {
            getItem: function (sKey) {
                if (!sKey || !this.hasItem(sKey)) { return null; }
                return unescape(document.cookie.replace(new RegExp("(?:^|.*;\\s*)" + escape(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*((?:[^;](?!;))*[^;]?).*"), "$1"));
            },
            setItem: function (sKey, sValue, vEnd, sPath, sDomain, bSecure) {
                if (!sKey || /^(?:expires|max\-age|path|domain|secure)$/i.test(sKey)) { return; }
                var sExpires = "";
                if (vEnd) {
                  switch (vEnd.constructor) {
                    case Number:
                      sExpires = vEnd === Infinity ? "; expires=Tue, 19 Jan 2038 03:14:07 GMT" : "; max-age=" + vEnd;
                      break;
                    case String:
                      sExpires = "; expires=" + vEnd;
                      break;
                    case Date:
                      sExpires = "; expires=" + vEnd.toGMTString();
                      break;
                  }
                }
                document.cookie = escape(sKey) + "=" + escape(sValue) + sExpires + (sDomain ? "; domain=" + sDomain : "") + (sPath ? "; path=" + sPath : "") + (bSecure ? "; secure" : "");
            },
            removeItem: function (sKey, sPath) {
                if (!sKey || !this.hasItem(sKey)) { return; }
                document.cookie = escape(sKey) + "=; expires=Thu, 01 Jan 1970 00:00:00 GMT" + (sPath ? "; path=" + sPath : "");
            },
            hasItem: function (sKey) {
                return (new RegExp("(?:^|;\\s*)" + escape(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=")).test(document.cookie);
            },
            keys: /* optional method: you can safely remove it! */ function () {
                var aKeys = document.cookie.replace(/((?:^|\s*;)[^\=]+)(?=;|$)|^\s*|\s*(?:\=[^;]*)?(?:\1|$)/g, "").split(/\s*(?:\=[^;]*)?;\s*/);
                for (var nIdx = 0; nIdx < aKeys.length; nIdx++) { aKeys[nIdx] = unescape(aKeys[nIdx]); }
                return aKeys;
            }
        },
        getRandomSites: function(){
            var pinSiteindex = MyRebate.params.pinSiteindex;            
            var temp = [], siteCount = 0, sites = MyRebate.SITE_PARAMS;
            if(false !== pinSiteindex) {
                var pinSite = sites[pinSiteindex];
                pinSite.index = pinSiteindex;
                temp.push(pinSite);
                //console.log(pinSiteindex, pinSite);
            }
            for (var i = 0, length = MyRebate.SITE_GRPUP_PARAMS.length; i < length; i++) {
                var groupParam = MyRebate.SITE_GRPUP_PARAMS[i].split(":");
                var groupIndex = parseInt(groupParam[0]);
                var groupSiteCount = parseInt(groupParam[1]);
                var start = siteCount;
                var end = start + groupSiteCount;
                siteCount = end;
                //console.log("start:" + start + "|end:" + end + "|siteCount:" + siteCount);
                var tempSites = sites.slice(start, end);
                var randomIndex = MyRebate.getRandomNum(1, groupSiteCount) - 1;
                //console.log("randomIndex:" + randomIndex + "|tempSites:" + tempSites);
                var site = tempSites[randomIndex];
                site.index = start + randomIndex;
                temp.push(site);
            }
            return temp;
        },
        parseURL: function(url){
            var a = document.createElement("a");
            a.href = url;
            return {
                source: url,
                protocol: a.protocol.replace(":", ""),
                host: a.hostname,
                port: a.port,
                query: a.search,
                params: (function(){
                    var ret = {}, seg = a.search.replace(/^\?/, "").split("&"), len = seg.length, i = 0, s;
                    for (; i < len; i++) {
                        if (!seg[i]) {
                            continue;
                        }
                        s = seg[i].split("=");
                        ret[s[0]] = s[1];
                    }
                    return ret;
                })(),
                file: (a.pathname.match(/\/([^\/?#]+)$/i) || [, ""])[1],
                hash: a.hash.replace("#", ""),
                path: a.pathname.replace(/^([^\/])/, "/$1"),
                relative: (a.href.match(/tps?:\/\/[^\/]+(.+)/) || [, ""])[1],
                segments: a.pathname.replace(/^\//, "").split("/")
            };
        },
        injectHtml: function(url, result){
            switch(result.site) {
                case "tb_item":
                    if ("ju" != result.key && "spu" != result.key && "a.m" != result.key) {
                        result.key = "item";
                    }
                    var numIid = MyRebate.getItemId(url, result.site, result.key);
                    //console.log(numIid);
                    if (numIid) {                        
                        MyRebate.api.taobaoke(numIid, MyRebate.initItemHtml);
                    }
                    break;
                case "tb_rate":
                    var isUserRatePage = false;
                    if("user-myrate" == result.key) {
                        isUserRatePage = MyRebate.isUserRatePage(url, result.site, result.key);
                    }
                    //console.log(isUserRatePage);
                    MyRebate.$.getScript(MyRebate.server + MyRebate.jQueryUi, function(){
                        MyRebate.showUploadUserRateListPageTips(isUserRatePage);
                    });
                    break;
                case "tb_bought":
                    MyRebate.appendTipsToUserBoughtListPage();
                    break;
                case "tb_remark":
                    MyRebate.appendTipsToUserRatePage(result.key);
                case "tb":
                    
                default:
                    break;
            }
        },
        initItemHtml: function(json){
            var result = json.result;
            if (!!result) {
                var item = json.item;
                //console.log(item);
                var elem = MyRebate.C("div");
                elem.id = "caigoumiLayer";
                
                try {
                    document.body.appendChild(elem);
                } catch (e) {
                    document.appendChild(elem);
                }
                
                var html = MyRebate.generateMiniBarHtml(item);
                MyRebate.$("#caigoumiLayer").html(html);
                MyRebate.bindEvents();
                MyRebate.$("#caigoumiLayer").show();
            }
        },
        generateMiniBarHtml: function(item){
            var cashbackRebate = 0;
            var html = '<div id="itemMini" class="item-mini">' +
            '<div id="itemMiniBar" class="item-mini-bar">' +
            '<div class="item-icon">采购迷</div>' +
            '<div class="price" title="">返&nbsp;<span class="price-num">' + 
            (item.commissionRate / 100 * MyRebate.SITE_RATE).toFixed(2) +
            '%</span>&nbsp;约' + (item.commission * MyRebate.SITE_RATE).toFixed(2) + '元</div>' +
            '</div>' +
            MyRebate.generateSiteHtml(item) +
            '</div>';
            return html;
        },
        generateSiteHtml: function(item){
            //console.log(item);
            var pinSiteindex = parseInt(item.pinSiteindex);
            if(pinSiteindex !== -1) {
               MyRebate.params.pinSiteindex = pinSiteindex;
            }
            
            var html = '<div id="itemWrapper" class="item-wrapper"><div class="site-list">' +
            '<div class="site">' +
            '<div class="pre-site-title">&nbsp;&nbsp;查看以下返利网站</div>' +
            '<div class="pre-site-url"><a class="btn btn-mini btn-primary invite-dialog">邀好友奖10元</a></div>' +
            '<div id="caigoumiInviteDialog" title="每好友奖现金 10 元！3258人邀请好友安装成功" class="invite-dialog-modal"></div>' +
            '</div>';

            html += '<div class="site site-header">' +
            '<div class="site-title">' +
            '<div class="site-icon">' +
            '<img src="' + MyRebate.server + 'images/extension/rate-tip-icon-80.png" />' +
            '</div>' +
            '<div class="site-name">' +
            '<span>淘宝评论奖1元/条</span>' +
            '</div>' +
            '<div class="site-commission">' +
            '<a href="' + MyRebate.server + 'activity/rate/?plugin" target="_blank">详情</a>' +
            '</div>' +
            '</div>' +
            '<div class="cashback-op"><div class="cashback-op-detail">' +
            '<a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm" target="_blank" class="rate-btn btn btn-large btn-info">' +
            '<span><span>去写</span><span class="big">评论</span></span></a>' +
            '<a href="http://rate.taobao.com/myRate.htm" target="_blank">上传评论拿奖</a>' +
            '</div></div>' +
            '</div>';
            
            var sites = MyRebate.getRandomSites();
            //console.log(sites);
            for (var i = 0, length = sites.length; i < length; i++) {
                var site = sites[i];
                var pinClass = "unlocked";
                if(parseInt(site.index) === MyRebate.params.pinSiteindex) {
                    pinClass = "";
                    if(i !== 0) {
                        continue ;
                    }
                }
                //console.log(site.index, pinClass);

                html += '<div class="site">' +
                '<div class="site-title">' +
                '<div class="site-icon">' +
                '<img src="' + MyRebate.server + (null == site.icon ? "images/icon/default.ico" : site.icon) + '" />' +
                '</div>' +
                '<div class="site-name">' +
                '<span>' + site.name + '</span>' +
                '<input type="hidden" value="' + site.index + '" class="site-index">' +
                '</div>' +
                '<div class="site-commission">' +
                '<span>返' + parseFloat(site.rate * item.commissionRate / 100).toFixed(2) + '%</span>' +
                '</div>' +
                '</div>' +
                '<div class="cashback-op"><div class="cashback-op-detail">' +
                '<div class="cashback-btn">' +
                '<a href="' + site.href.replace("{{numIid}}", item.numIid) + '" target="_blank" class="btn btn-large btn-warning"><span><span>点击</span><span class="big">去返利</span></span></a>' + 
                '</div>' +
                '<div title="每次出现此站" alt="每次出现此站" class="pin-btn' + ' ' + pinClass + '"></div>' +                
                '</div></div>' +
                '</div></a>';
            }
            html += '<div class="site">' +
            '<div class="site-title">&nbsp;&nbsp;联系我们</div>' +
            '<div class="cashback-op" style="text-align: center;">' +
            '<p>网址：<a href="http://www.caigoumi.com" target="_blank">www.caigoumi.com</a></p>' +
            '<p>邮箱：<a href="mailto:info@caigoumi.com" target="_blank">info@caigoumi.com</a></p>' +
            '</div>' +
            '</div>';
            html += '</div></div>';
            return html;
        },
        bindEvents: function(){
            MyRebate.$("#caigoumiLayer .item-mini").hover(function(){
                MyRebate.$(this).css("opacity", 1);
                MyRebate.$("#caigoumiLayer .item-wrapper").show();
            }, function(){
                MyRebate.$(this).css("opacity", 0.5);
                MyRebate.$("#caigoumiLayer .item-wrapper").hide();
            });
            
            MyRebate.$("#caigoumiLayer .site").each(function(){
                MyRebate.$(this).hover(function(){
                    MyRebate.$(this).find(".cashback-op").show();
                }, function(){
                    MyRebate.$(this).find(".cashback-op").hide();
                });
            });

            MyRebate.$.getScript(MyRebate.server + MyRebate.easyDrag, function(){
                MyRebate.$("#caigoumiLayer").easydrag().ondrag(function(){
                    MyRebate.$("#caigoumiLayer .item-wrapper").hide();
                }).mouseout(function(){
                    MyRebate.$(this).css("position", "fixed");
                });
                MyRebate.$("#caigoumiLayer").setHandler("itemMiniBar");
            });   
            
            MyRebate.$("#caigoumiLayer .invite-dialog").click(function(){
                MyRebate.inviteDialog();
            });

            MyRebate.$("#caigoumiLayer .pin-btn").each(function(objIndex){
                var obj = MyRebate.$(this);
                obj.hover(
                    function(){
                        obj.toggleClass("unlocked");
                    },
                    function(){
                        obj.toggleClass("unlocked");
                    }
                );
                obj.live("click", function(){
                    var siteIndex = -1;
                    var isLocked = MyRebate.$(this).hasClass("unlocked") ? false : true;
                    //console.log(isLocked);
                    if(isLocked) {
                        siteIndex = parseInt(obj.parents(".site").find(".site-index").val());
                    }
                    MyRebate.savePinIndex(objIndex, siteIndex);
                });
            });
        },
        /*
        generatePinHtml: function(obj, type){            
            if(0 == obj.parent().find(".pin-form").size()) {
                var html = '<div class="pin-form"><div class="pin-wrapper label label-info">';
                if("locked" == type) {
                    html += '<div class="pin-body">不要每次都出现这个网站</div>';
                    html += '<div class="pin-footer"><button class="btn btn-info close">取消</button><button class="btn btn-primary unlock">确定</button></div>';
                } else {                    
                    html += '<div class="pin-body">';
                    html += '<div><input type="text" name="alipayAccount" placeholder="填写您的支付宝"></div>';
                    html += '<div class="icon icon-remove close"></div></div>';
                    html += '<div class="pin-footer"><span>填写您的支付宝</span><button class="btn btn-success btn-mini lock">保存设置</button></div>';
                }
                html += '</div></div>';
                //console.log(obj.parent(), html);
                obj.parent().append(html);
            }
        },
        */
        savePinIndex: function(objIndex, siteIndex){
            var expire = 365 * 24 * 3600;
            if(siteIndex < 0) {
                expire = -1;
            }

            MyRebate.api.setCookie(MyRebate.keys.userPinIndex, siteIndex, expire, function(json){
                var result = json.result;
                if (!!result) {
                    if(false === MyRebate.params.pinSiteindex || siteIndex !== MyRebate.params.pinSiteindex) {
                        if(siteIndex < 0) {
                            MyRebate.params.pinSiteindex = false;
                        } else {
                            MyRebate.params.pinSiteindex = siteIndex;                                
                        }
                        MyRebate.$("#caigoumiLayer .pin-btn").each(function(i){
                            var obj = MyRebate.$(this);
                            if(i === objIndex) {
                                obj.toggleClass("unlocked");
                                MyRebate.showPinSite(obj);
                            } else {
                                if(!obj.hasClass("unlocked")) {
                                    obj.addClass("unlocked");
                                }
                            }
                        });
                    }
                } else {
                    alert("系统繁忙，请稍后重试...");
                }
            });
        },
        showPinSite: function(obj){
            obj.parent().find(".pin-tip").remove();
            var text = MyRebate.params.pinSiteindex ? "已设置" : "已取消";
            var tip = '<div class="pin-tip"><span class="label label-info">' + text + '</span></div>';
            obj.parent().append(tip);
            setTimeout(function(){
                obj.parent().find(".pin-tip").remove();
            }, 1000);
        },
        getUrlType: function(url){
            for (var pattern in MyRebate.SITE_PATTERN) {
                var matches = url.match(new RegExp(pattern, "i"));
                //console.log(pattern)
                //console.log(matches);
                if (matches) {
                    var rt = {
                        "site": MyRebate.SITE_PATTERN[pattern],
                        "key": matches[2] || []
                    };
                    return rt;
                }
            }
            return false;
        },
        getItemId: function(url, site, key){
            var patterns = MyRebate.SITE_PARAM_RULES[site][key];
            
            for (var i = 0; i < patterns.length; i++) {
                var pattern = patterns[i];
                var offset = 1;
                var delimiter = "=";
                
                if (Object == typeof(pattern)) {
                    pattern = pattern.pattern;
                    offset = pattern.offset;
                    delimiter = pattern.delimiter;
                }
                
                var matches = url.match(pattern);
                //console.log(pattern)
                //console.log(matches);
                if (matches) {
                    if ("a.m" == key) {
                        return matches[0].replace("i", "");
                    } else {
                        return matches[0].split(delimiter)[offset];
                    }
                }
            }
            return false;
        },
        loadJQuery: function(url, result, callback){
            if (typeof(jQuery) == "undefined") {
                MyRebate.addScript(MyRebate.server + MyRebate.jQuery, false, function(){
                    try {
                        jQuery.noConflict();
                        MyRebate.$ = jQuery;
                        callback(url, result);
                    } catch (e) {
                        MyRebate.addScript(MyRebate.server + MyRebate.JQUERY, false, function(){
                            jQuery.noConflict();
                            MyRebate.$ = jQuery;
                            callback(url, result);
                        });
                    }
                });
            } else {
                MyRebate.$ = jQuery;
                callback(url, result);
            }
        },
        openInviteDialog: function(){
            MyRebate.$("#caigoumiInviteDialog").dialog({
                width: 660,
                height: 570,
                show: "clip",
                hide: "clip",
                modal: true
            });
        },
        inviteDialog: function(){
            if (!MyRebate.params.isInviteIframeLoaded) {
                MyRebate.$.getScript(MyRebate.server + MyRebate.jQueryUi, function(){
                    var iframe = MyRebate.$(MyRebate.C("iframe"));
                    iframe.width(630);
                    iframe.height(510);
                    iframe.css("border", "0");
                    iframe.attr("frameborder", "0");
                    iframe.attr("src", MyRebate.server + "invite/");
                    MyRebate.$("#caigoumiInviteDialog").append(iframe);
                    MyRebate.params.isInviteIframeLoaded = true;
                    MyRebate.openInviteDialog();
                });
            } else {
                MyRebate.openInviteDialog();
            }            
        },
        isUserRatePage: function(url, site, key){
            var patterns = MyRebate.SITE_PARAM_RULES[site][key];
            for (var i = 0; i < patterns.length; i++) {
                var pattern = patterns[i];
                var offset = 1;
                var delimiter = "%7c";
                //console.log(url.indexOf("%7c"));
                if(url.indexOf("%7c") === -1) {
                    delimiter = "|";
                }
                
                var matches = url.match(pattern);
                //console.log(pattern)
                //console.log(matches);
                if (matches) {
                    //来自买家的评价   receivedOrPosted:0,buyerOrSeller:0
                    //来自卖家的评价   receivedOrPosted:0,buyerOrSeller:1
                    //给他人的评价     receivedOrPosted:1,buyerOrSeller:3
                    //需自检自查的评价 isSpeculation:true
                    var rt = new Object();                    
                    var pStr = matches[2];
                    var pArray = pStr.split("--");

                    rt["userId"] = matches[1];
                    //console.log(pArray);
                    for(var i=0,length=pArray.length; i<length; i++) {
                        var kv = pArray[i].split(delimiter);
                        //console.log(kv);
                        rt[kv[0]] = kv[1];
                    }
                    //console.log(rt);
                    if("undefined" === typeof(rt.isSpeculation)) {
                        var receivedOrPosted = parseInt(rt.receivedorposted);
                        var buyerOrSeller = parseInt(rt.buyerorseller);
                        if(1 === receivedOrPosted && 3 === buyerOrSeller) {
                            return true;
                        }
                    }
                    return false;
                }
            }
            return false;
        },
        showUploadUserRateListPageTips: function(isUserRatePage){
            var id = "caigoumiRateUpload";
            var obj = MyRebate.$("#new-rate-content").find(".rate-tab");
            var li = '<li id="' + id + '" class="caigoumi-rate-upload">';
            if(isUserRatePage) {
                li += '<a href="javascript:void(0);" onclick="MyRebate.uploadUserRateListPageInfo()"><span>' +
                    '点此上传<font style="color:#f0e22e;">采购迷</font>有奖评价，最高1元/条' +
                    '</span></a>';
            } else {
                li += '<a href="javascript:void(0);" onclick="MyRebate.quakeUploadUserRateListItemTip(\'' + id + '\')"><span>' +
                    '进入“给他人的评价”上传<font style="color:#f0e22e;">采购迷</font>有奖评价，最高1元/条' +
                    '</span></a>';
            }
            li += '</li>';
            obj.append(li);

            if("#caigoumiRateUploadSuccess" == window.location.hash) {
                alert("采购迷有奖评价已经上传成功，^_^!");
            }

            window.location.hash = "#" + id;
            MyRebate.quakeUploadUserRateListPageTips(id);
        },
        quakeUploadUserRateListPageTips: function(id){
            MyRebate.$("#" + id).effect("shake", {direction: "both", distance: 5, times: 2}, 3000);
        },
        quakeUploadUserRateListItemTip: function(id){
            MyRebate.$("#" + id).siblings().each(function(){
                var obj = MyRebate.$(this).find("a > span");
                var text = obj.text();
                //console.log(text);
                if("给他人的评价" === text) {
                    MyRebate.$(this).effect("shake", {direction: "up", distance: 5, times: 2}, 5000);
                    var t = 0;
                    while(t < 5000) {
                        obj.effect("highlight", {color: "red"}, 1000);
                        t += 1000;
                    }
                    return false;
                }
            });
        },
        getUserRateListPageInfo: function(){
            var source = MyRebate.$("html").html();
            if (source.length > 0) {
                source = '<html>' + source + '</html>';
                //return MyRebate.compress(source);
                return MyRebate.base64.encode(source);
            }
            return false;
        },
        uploadUserRateListPageInfo: function(){
            var source = MyRebate.getUserRateListPageInfo();
            //console.log(MyRebate.decompress(source));
            //console.log(MyRebate.base64.decode(source));
            if (source) {
                var key = MyRebate.keys.userAlipayAccount;
                var alipayAccountCookieValue = MyRebate.docCookies.getItem(key);

                var url = MyRebate.server + "api/upload/";
                var divElem = MyRebate.C("div");
                var formElem = MyRebate.C("form");
                var tElem = MyRebate.C("input");
                var uElem = MyRebate.C("input");
                var alipayElem = MyRebate.C("input");
                var sElem = MyRebate.C("textarea");
                var sbElem = MyRebate.C("input");
                var tipElem = MyRebate.C("div");

                tElem.type = "hidden";
                tElem.name = "title";
                tElem.value = MyRebate.base64.encode(document.title);

                uElem.type = "hidden";
                uElem.name = "url";
                uElem.value = document.location.href;

                alipayElem.name = "alipayAccount";
                alipayElem.value = alipayAccountCookieValue ? alipayAccountCookieValue : "";
                alipayElem.style.cssText = "width: 200px;height: 20px;line-height: 20px;";
                alipayElem.setAttribute("placeholder", "支付宝账号");

                sElem.name = "source";
                sElem.value = source;
                sElem.style.display = "none";

                sbElem.type = "submit";
                sbElem.value = "提交";
                sbElem.className = "btn btn-primary";
                
                formElem.action = url;
                formElem.method = "post";
                formElem.appendChild(tElem);
                formElem.appendChild(uElem);
                formElem.appendChild(alipayElem);
                formElem.appendChild(sElem);
                formElem.appendChild(sbElem);

                var tipHtml = "<ul><li>小贴士：</li>" +
                "<li>1、输入您的支付宝账号</li>" +
                "<li>2、提交您的淘宝评论到采购迷</li></ul>";
                tipElem.innerHTML = tipHtml;
                tipElem.style.cssText = "width: 340px;font-size: 20px;margin: 0 0 10px 0;";

                divElem.id = "caigoumiUserRatePageDialog";
                divElem.title = "提交您的淘宝评论到采购迷";
                divElem.style.display = "none";
                divElem.appendChild(tipElem);
                divElem.appendChild(formElem);

                try {
                    document.body.appendChild(divElem);
                } catch (e) {
                    document.appendChild(divElem);
                }

                var alipayAccountObj = MyRebate.$("#caigoumiUserRatePageDialog").find("input[name='alipayAccount']");
                MyRebate.$("#caigoumiUserRatePageDialog").find("form").submit(function(){
                    var alipayAccount = MyRebate.$.trim(alipayAccountObj.val());
                    if(null == alipayAccount || "" == alipayAccount) {
                        alipayAccountObj.focus();
                        alert("请输入您的支付宝账号");
                        return false;
                    } else {
                        if(MyRebate.isMobile(alipayAccount) || MyRebate.isMail(alipayAccount)) {
                            alipayAccountObj.val(alipayAccount);
                            //设置cookie
                            MyRebate.docCookies.setItem(key, alipayAccount, null, "/", ".taobao.com", false);
                            return true;
                        } else {
                            alert("您输入的支付宝账号格式错误");
                            alipayAccountObj.select();
                            alipayAccountObj.focus();
                            return false;
                        }
                    }
                });

                MyRebate.$("#caigoumiUserRatePageDialog").dialog({
                    width: 400,
                    height: 200,
                    show: "clip",
                    hide: "clip",
                    modal: true,
                    open: function(){
                        alipayAccountObj.focus();
                        //setTimeout(function(){
                            //formElem.submit();
                        //}, 3000);
                    }
                });
            }
        },
        appendTipsToUserBoughtListPage: function(){
            MyRebate.$("#J_BoughtTable").find(".operate .J_MakePoint").each(function(){
                var obj = MyRebate.$(this);
                var text = MyRebate.$.trim(obj.text());
                var rt = false;
                if("评价" == text) {
                    rt = MyRebate.userBoughtListPageRemarkSellerTip(obj);
                } else if("追加评论" == text) {
                    rt = MyRebate.userBoughtListPageAppendRateTip(obj);
                }
                if(rt) {
                    var tradeId = rt.tradeId;
                    var tip = '<div class="rate-tip">' + rt.tip + '</div>';
                    MyRebate.$("#J_BoughtTable > tbody[data-orderid=" + tradeId + "]").find(".order-hd td").append(tip);
                }
            });
        },
        userBoughtListPageRemarkSellerTip: function(obj){
            var href = obj.attr("href");
            var tradeId = href.match(/\.*trade_id=(\w+)\.*/)[1];
            var tip = '<a href="' + href + '" target="_blank" class="label label-warning pull-right">写采购迷评论，立奖1元</a>';
            //console.log('remark fire', tradeId, tip);
            return {"tradeId": tradeId, "tip": tip};
        },
        userBoughtListPageAppendRateTip: function(obj){
            var href = obj.attr("href");
            var tradeId = href.match(/\.*biz_order_id=(\w+)\.*/)[1];
            var tip = '<a href="' + href + '" target="_blank" class="label label-warning pull-right">写采购迷评论，立奖0.5元</a>';
            //console.log('append fire', tradeId, tip);
            return {"tradeId": tradeId, "tip": tip};
        },
        appendTipsToUserRatePage: function(type){
            var rt = false;
            var tipRt = MyRebate.generateRateTip(0);
            var exampleTip = "【" + tipRt.tip + "】";
            var exampleIndex = tipRt.index;
            if("remark_seller" == type) {
                rt = MyRebate.userRatePageRemarkSellerTip(exampleTip);
            } else {
                rt = MyRebate.userRatePageAppendRateTip(exampleTip);
            }
            if(rt) {
                MyRebate.$(".item-detail").each(function(){
                    var tip = '<div id="caigoumiRateLayer">' + rt.tip + '</div>';
                    MyRebate.$(this).parent().append(tip);
                });
            }
        },
        userRatePageRemarkSellerTip: function(exampleTip){
            var tip = '<div class="alert alert-block alert-info">' +
            '<p>立奖1元/条，淘宝评价时添加' + exampleTip + '然后在采购迷软件中上传评价！已有6239人发布</p>' +             
            '</div>' + 
            '<button class="btn btn-large btn-block btn-primary copy-rate-btn" type="button" onclick="MyRebate.userRatePateCopyRateTip(1);">单击这里填入采购迷的有奖评论</button>';
            return {"tip": tip};
        },
        userRatePageAppendRateTip: function(exampleTip){
            var tip = '<div class="alert alert-block alert-info">' +
            '<p>立奖0.5元/条，淘宝评价时添加' + exampleTip + '然后在采购迷软件中上传评价！已有6239人发布</p>' +             
            '</div>' + 
            '<button class="btn btn-large btn-block btn-primary copy-rate-btn" type="button" onclick="MyRebate.userRatePateCopyRateTip(1);">单击这里填入采购迷的有奖评论</button>';
            return {"tip": tip};
        },
        generateRateTip: function(isRandom){
            var date = new Date();
            var timestamp = date.getFullYear() + "." + (date.getMonth() + 1) + "." + date.getDate();
            var tip = "我安装了{ 采购迷 caigoumi.com } 浏览淘宝商品直接提示返现，省钱又方便，淘宝评论还立奖现金！";
            var tips = [
                "宝贝很棒，卖家服务也不错，发货迅速！而且，" + tip,
                "东西不错，跟卖家的描述一致，质量和做工都挺好的，性价比很高的一款宝贝，物超所值了！是我想要的！另外，" + tip,
                "质量非常好，与卖家描述的完全一致，非常满意\r\n卖家的服务太棒了，考虑非常周到，完全超出期望值\r\n卖家发货速度非常快，包装非常仔细、严实\r\n物流公司服务态度很好，运送速度很快\r\n再推荐个好用的工具：" + tip
            ];
            var max = tips.length;
            if(!!isRandom) {
                var index = MyRebate.getRandomNum(1, max) - 1;
                tip = tips[index] + timestamp;
            } else {
                var index = -1;
            }
            //console.log(index);
            return {"tip": tip, "index": index};
        },
        userRatePateCopyRateTip: function(exampleIndex){
            var tipRt = MyRebate.generateRateTip(exampleIndex);
            var tip = tipRt.tip;
            MyRebate.$(".rate-msg-box .rate-msg").each(function(){
                var text = MyRebate.$(this).val();
                var canAppend = false;
                if("" == text || null === text) {
                    canAppend = true;
                } else {
                    var rt = text.match(/caigoumi.com/);
                    if(!rt) {
                        canAppend = true;
                    }
                }
                //console.log(text, canAppend);
                if(canAppend) {
                    MyRebate.$(this).val(text + tip);
                }
            });
        },        
        afterJQueryLoaded: function(url, result){
            MyRebate.injectHtml(url, result);
            MyRebate.api.invite();
        },
        init: function(url){
            url = url.toLowerCase();
            var result = MyRebate.getUrlType(url);
            //console.log(result);
            if(result && "other" !== result.site) {
                MyRebate.addCss(MyRebate.server + MyRebate.css);
                MyRebate.loadJQuery(url, result, MyRebate.afterJQueryLoaded);
            }
        }
    };
    MyRebate.init(document.location.href);
})();
