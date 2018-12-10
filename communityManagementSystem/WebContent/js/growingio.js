
// growingio埋点 2016.6.22
var _vds = _vds || [];
window._vds = _vds;
(function() {
    _vds.push(['setAccountId', 'aacd01fff9535e79']);

    var jkuid = new RegExp("(^| )uid=([^;]*)(;|$)");
    var uidVal = 0;
    if (document.cookie.match(jkuid) && document.cookie.match(jkuid)[2]) {
        uidVal = document.cookie.match(jkuid)[2];
        _vds.push(['setCS1', 'uid', uidVal]);
    }

    // growingio埋点
    (function() {
        var vds = document.createElement('script');
        vds.type = 'text/javascript';
        vds.async = true;
        vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(vds, s);
    })();

    // GA埋点
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-50413628-1', 'auto');
    ga('send', 'pageview');
    ga('set', 'userId', uidVal);

/*
    // 友盟统计代码
    (function() {
        var um = document.createElement('script');
        um.type = 'text/javascript';
        // um.async = true;
        um.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 's19.cnzz.com/z_stat.php?id=1271212392&web_id=1271212392';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(um, s);
    })();
*/
})();


