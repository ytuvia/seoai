<!DOCTYPE html>
<!--[if lt IE 9]>
    <html xml:lang="en" lang="en"
        xmlns:fb="http://ogp.me/ns/fb#" class="no-js lt-ie9" lang="en">
<![endif]-->
<!--[if lt IE 10]>
    <html xml:lang="en" lang="en"
        xmlns:fb="http://ogp.me/ns/fb#" class="no-js lt-ie10" lang="en">
<![endif]-->
<!--[if (gte IE 9)]><!-->
    <html xml:lang="en" lang="en"
        xmlns:fb="http://ogp.me/ns/fb#" class="no-js" lang="en">
<!--<![endif]-->
    <head>
                        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VQUOUVdQGwUAVVdbBgk="};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(15),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,o){try{d?d-=1:i("err",[o||new UncaughtException(t,n,e)])}catch(s){try{i("ierr",[s,c.now(),!0])}catch(u){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t){i("err",[t,c.now()])}var i=t("handle"),a=t(16),s=t("ee"),c=t("loader"),f=window.onerror,u=!1,d=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(l){"stack"in l&&(t(8),t(7),"addEventListener"in window&&t(5),c.xhrWrappable&&t(9),u=!0)}s.on("fn-start",function(t,n,e){u&&(d+=1)}),s.on("fn-err",function(t,n,e){u&&(this.thrown=!0,o(e))}),s.on("fn-end",function(){u&&!this.thrown&&d>0&&(d-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(8),s=t(7),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",y="pushState",g=t("loader");g.features.stn=!0,t(6);var b=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof b&&(this.bstStart=g.now())}),o.on(w,function(t,n){var e=t[0];e instanceof b&&i("bst",[e,n,this.bstStart,g.now()])}),a.on(m,function(t,n,e){this.bstStart=g.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),this.bstType])}),s.on(m,function(){this.bstStart=g.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=g.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t(18)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){var r=t("ee").get("history"),o=t(18)(r);n.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],7:[function(t,n,e){var r=t("ee").get("raf"),o=t(18)(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],8:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration="number"==typeof t[1]?t[1]:0,t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t(18)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],9:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,w,"fn-",s)}function i(t){v.push(t),h&&(g=-g,b.data=g)}function a(){for(var t=0;t<v.length;t++)r([],v[t]);v.length&&(v=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t(18)(u),l=NREUM.o,p=l.XHR,h=l.MO,m="readystatechange",w=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],v=[];n.exports=u;var y=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(m,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,y),y.prototype=p.prototype,d.inPlace(y.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var g=1,b=document.createTextNode(g);new h(a).observe(b,{characterData:!0})}else f.on("fn-end",function(t){t[0]&&t[0].type===m||a()})},{}],10:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<d;r++)t.removeEventListener(u[r],this.listener,!1);if(!n.aborted){if(e.duration=a.now()-this.startTime,4===t.readyState){n.status=t.status;var i=o(t,this.lastSize);if(i&&(e.rxSize=i),this.sameOrigin){var c=t.getResponseHeader("X-NewRelic-App-Data");c&&(n.cat=c.split(", ").pop())}}else n.status=0;e.cbTime=this.cbTime,f.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime])}}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return h(r)}function i(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.sameOrigin=e.sameOrigin}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(11),f=t("ee"),u=["load","error","abort","timeout"],d=u.length,l=t("id"),p=t(14),h=t(13),m=window.XMLHttpRequest;a.features.xhr=!0,t(9),f.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,p&&(p>34||p<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=h(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{f.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<d;s++)n.addEventListener(u[s],this.listener,!1)}),f.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),f.on("xhr-load-added",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],n)}),f.on("removeEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],n)}),f.on("fn-start",function(t,n,e){n instanceof m&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),f.on("fn-end",function(t,n){this.xhrCbStart&&f.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)})}},{}],11:[function(t,n,e){n.exports=function(t){var n=document.createElement("a"),e=window.location,r={};n.href=t,r.port=n.port;var o=n.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=n.hostname||e.hostname,r.pathname=n.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!n.protocol||":"===n.protocol||n.protocol===e.protocol,a=n.hostname===document.domain&&n.port===e.port;return r.sameOrigin=i&&(!n.hostname||a),r}},{}],12:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(15),s=t(16),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}finally{c.emit("fn-end",[f.now()],e)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now()])}},{}],13:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],14:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],15:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],16:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],17:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],18:[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(16),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=h(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([g,e,r,a]),a}}function p(t,n){v[t]=h(t).concat(n)}function h(t){return v[t]||[]}function m(t){return d[t]=d[t]||o(e)}function w(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var v={},y={},g={on:p,emit:e,get:m,listeners:h,context:n,buffer:w,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(15),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!x++){var t=b.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=l.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===l.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(15),u=t("ee"),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1026.min.js"},g=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:v,features:{},xhrWrappable:g};t(12),l[p]?(l[p]("DOMContentLoaded",i,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",s],null,"api");var x=0,E=t(17)},{}]},{},["loader",2,10,4,3]);</script>

        
        <title>virtualization.com | Website Review for virtualization.com | WooRank.com</title>
        <meta property="og:title" content="virtualization.com | Website Review for virtualization.com | WooRank.com" />
        <meta name="twitter:title" content="virtualization.com | Website Review for virtualization.com | WooRank.com" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />

        <meta name="twitter:card" content="summary" />
        <meta name="twitter:site" content="@woorank" />
        <meta name="twitter:domain" content="woorank.com" />
        <meta name="twitter:creator" content="@woorank" />

                    <meta property="og:image" content="https://s3.amazonaws.com/woothumbs/virtualization.com.png" />
            <meta name="twitter:image" content="https://s3.amazonaws.com/woothumbs/virtualization.com.png" />
        
                    <meta name="description" content="Website Review of virtualization.com: SEO, traffic, visitors and competitors of www.virtualization.com" />
            <meta property="og:description" content="Website Review of virtualization.com: SEO, traffic, visitors and competitors of www.virtualization.com" />
        
        
                    <link rel="canonical" href="https://www.woorank.com/en/www/virtualization.com" />

                                                <link rel="alternate" hreflang="en" href="https://www.woorank.com/en/www/virtualization.com" />
                                    <link rel="alternate" hreflang="es" href="https://www.woorank.com/es/www/virtualization.com" />
                                    <link rel="alternate" hreflang="fr" href="https://www.woorank.com/fr/www/virtualization.com" />
                                    <link rel="alternate" hreflang="de" href="https://www.woorank.com/de/www/virtualization.com" />
                                    <link rel="alternate" hreflang="pt" href="https://www.woorank.com/pt/www/virtualization.com" />
                                    <link rel="alternate" hreflang="nl" href="https://www.woorank.com/nl/www/virtualization.com" />
                                    
        
        
        <link href="//dz17jvmxa7kn9.cloudfront.net/assets/style/review-f31b93f33462.css" rel="stylesheet" type="text/css"  />
<link href="https://dz17jvmxa7kn9.cloudfront.net/woorank-theme/8.8.2/woorank-theme.min.css" rel="stylesheet" type="text/css"  />
<link href="//dz17jvmxa7kn9.cloudfront.net/assets/style/woorank-theme-front-c5d0f604d37e.css" rel="stylesheet" type="text/css"  />        <link rel="apple-touch-icon-precomposed"
            size="152x152"
            href="//dz17jvmxa7kn9.cloudfront.net/assets/img/apple-touch-icon-precomposed-152.png?v=5" />
        <link rel="apple-touch-icon-precomposed"
            size="120x120"
            href="//dz17jvmxa7kn9.cloudfront.net/assets/img/apple-touch-icon-precomposed-120.png?v=5" />
        <link rel="apple-touch-icon-precomposed"
            size="76x76"
            href="//dz17jvmxa7kn9.cloudfront.net/assets/img/apple-touch-icon-precomposed-76.png?v=5" />
        <link rel="apple-touch-icon-precomposed"
            href="//dz17jvmxa7kn9.cloudfront.net/assets/img/apple-touch-icon-precomposed.png?v=5" />
        <link rel="shortcut icon"
            href="//dz17jvmxa7kn9.cloudfront.net/assets/img/favicon.png?v=5" type="image/ico" />
        <link rel="shortcut icon"
            href="//dz17jvmxa7kn9.cloudfront.net/assets/img/favicon.ico?v=5" type="image/png" />

        <link rel="publisher" href="https://plus.google.com/+woorank" />

        
        <script type="text/javascript">var ac_vars = [];</script>
        <script type="text/javascript">var wooGlobal = {"language":"en","user":{"subscription":{},"intercom":{}},"cookies":{},"geoLocation":{"countryCode":"IL","cityName":"Tel Aviv","latitude":32.0667,"longitude":34.7667},"settings":{"intercom":{"enabled":true,"appId":"i6hb7isf"},"zendesk":{"appId":"woorank.zendesk.com","enabled":true},"analytics":{"account":"UA-12074781-1"},"cdn":"\/\/dz17jvmxa7kn9.cloudfront.net\/"},"screenshotBase":"https:\/\/s3.amazonaws.com\/woothumbs\/"};</script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/detectizr/1.5.0/detectizr.min.js"></script>

        
        <!-- INTERCOM -->
        <script type="text/javascript">
          (function(){var w=window;var ic=w.Intercom;if(typeof ic==="function")
          {ic('reattach_activator');ic('update',intercomSettings);}else
          {var d=document;var i=function() {i.c(arguments)};i.q=[];
          i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){
          var s=d.createElement('script');s.type = 'text/javascript';
          s.async=true;s.src='https://widget.intercom.io/widget/i6hb7isf';
          var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s, x);}
          if(w.attachEvent) {w.attachEvent('onload', l);}else
          {w.addEventListener('load', l, false);}}})()
        </script>

        <!-- HOTJAR -->
        <script>
          (function(h,o,t,j,a,r){
              h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
              h._hjSettings={hjid:392195,hjsv:5};
              a=o.getElementsByTagName('head')[0];
              r=o.createElement('script');r.async=1;
              r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
              a.appendChild(r);
          })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
        </script>

        <!-- FACEBOOK -->
        <script>
          !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
          n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
          n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
          t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
          document,'script','//connect.facebook.net/en_US/fbevents.js');
        </script>
            </head>

    
    
    <body lang="en"
        class="review  lang-en "
        data-page-name="review"
        >
                            <script>
                eval(function(p,a,c,k,e,d){e=function(c){return c.toString(36)};if(!''.replace(/^/,String)){while(c--){d[c.toString(a)]=k[c]||c.toString(a)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('4 1=/\\.5\\.3$/.2(0.6.c);7(!1)0.a.9.8=\'b\';',13,13,'document|bashjgasbfahjfabjk|test|com|var|woorank|location|if|display|style|body|none|host'.split('|'),0,{}))
            </script>
                        <script type="application/ld+json">
          {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "WooRank",
            "url": "https://www.woorank.com",
            "sameAs": [
              "https://twitter.com/woorank",
              "https://plus.google.com/+woorank",
              "https://www.facebook.com/woorank"
            ],
            "address": {
                "@type": "PostalAddress",
                "streetAddress": "Boulevard Louis Schmidt",
                "addressRegion": "Etterbeek",
                "postalCode": "1040",
                "addressCountry": "BE"
            }
          }
        </script>

        <svg width="0" height="0" style="position:absolute" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><symbol viewBox="0 0 24 24" xml:space="preserve" id="add-file"><g id="aaOutline_Icons"><path d="M17.5 11a6.508 6.508 0 0 0-6.5 6.5c0 3.584 2.916 6.5 6.5 6.5s6.5-2.916 6.5-6.5-2.916-6.5-6.5-6.5zm0 12c-3.033 0-5.5-2.467-5.5-5.5s2.467-5.5 5.5-5.5 5.5 2.467 5.5 5.5-2.467 5.5-5.5 5.5z"/><path d="M20 17h-2v-2a.5.5 0 0 0-1 0v2h-2a.5.5 0 0 0 0 1h2v2a.5.5 0 0 0 1 0v-2h2a.5.5 0 0 0 0-1zM10.5 21H1V1h10v4.5a.5.5 0 0 0 .5.5H16v3.5a.5.5 0 0 0 1 0v-4a.499.499 0 0 0-.147-.354L11.854.147a.492.492 0 0 0-.162-.107A.482.482 0 0 0 11.5 0H.5a.5.5 0 0 0-.5.5v21a.5.5 0 0 0 .5.5h10a.5.5 0 0 0 0-1zM12 1.707L15.293 5H12V1.707z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="add-user"><g id="abOutline_Icons_1_"><path d="M22.947 19.22c-.735-1.469-3.241-2.391-6.71-3.667-.402-.147-.815-.3-1.237-.457v-2.409c.439-.373 1.378-1.346 1.489-2.934.227-.192.405-.523.509-.962.167-.706.083-1.542-.416-2.039l.093-.233c.383-.966 1.097-2.764.815-4.175C17.159.688 14.823.048 12.922.002c-1.654-.039-3.652.331-4.266 1.46-.597.067-1.058.314-1.372.737-.868 1.172-.238 3.252.101 4.369l.051.167c-.515.494-.603 1.343-.434 2.057.104.438.282.77.509.962.111 1.588 1.05 2.561 1.489 2.934v2.409c-.423.158-.836.31-1.239.458-3.468 1.275-5.975 2.196-6.708 3.666C.012 21.301 0 23.411 0 23.5a.5.5 0 0 0 .5.5h23a.5.5 0 0 0 .5-.5c0-.089-.012-2.199-1.053-4.28zM1.03 23c.065-.702.271-2.039.917-3.333.557-1.114 3.153-2.069 6.159-3.173.507-.187 1.032-.38 1.57-.582a.501.501 0 0 0 .324-.469v-3a.499.499 0 0 0-.223-.416A3.241 3.241 0 0 1 8.5 9.443a.5.5 0 0 0-.369-.483c-.104-.145-.258-.614-.193-1.064.037-.259.133-.429.286-.505a.501.501 0 0 0 .276-.448c0-.136-.041-.277-.158-.665-.247-.812-.823-2.716-.255-3.483.176-.236.475-.352.913-.352a.5.5 0 0 0 .485-.379c.137-.546 1.478-1.09 3.414-1.062 1.955.047 3.439.679 3.611 1.539.224 1.12-.418 2.74-.764 3.61-.174.44-.246.621-.246.792a.5.5 0 0 0 .276.447c.152.076.249.246.286.505.065.45-.089.919-.193 1.065a.5.5 0 0 0-.369.483 3.228 3.228 0 0 1-1.277 2.584.499.499 0 0 0-.223.416v3c0 .209.129.395.324.468.538.202 1.062.394 1.568.581 3.006 1.105 5.603 2.06 6.16 3.175.648 1.294.853 2.631.918 3.333H1.03z" id="abOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-diag-inside"><g id="acOutline_Icons_1_"><path d="M23.854.146a.5.5 0 0 0-.707 0L14 9.293V3.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 0-1h-5.793L23.853.854a.5.5 0 0 0 .001-.708zM10.5 13h-7a.5.5 0 0 0 0 1h5.793L.147 23.146a.5.5 0 0 0 .707.707L10 14.707V20.5a.5.5 0 0 0 1 0v-7a.5.5 0 0 0-.5-.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-diag-outside"><g id="adOutline_Icons_1_"><path d="M9.646 13.646L1 22.293V17a.5.5 0 0 0-1 0v6.5a.5.5 0 0 0 .5.5H7a.5.5 0 0 0 0-1H1.707l8.646-8.646a.5.5 0 0 0-.707-.708zM23.5 0H17a.5.5 0 0 0 0 1h5.293l-8.646 8.646a.5.5 0 0 0 .707.707L23 1.707V7a.5.5 0 0 0 1 0V.5a.5.5 0 0 0-.5-.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-down"><path d="M23.83 10.629a.5.5 0 0 0-.706.045L13 22.179V.504a.5.5 0 0 0-1 0v21.675L1.875 10.674a.5.5 0 0 0-.751.66l11 12.5c.003.004.008.006.012.009a.48.48 0 0 0 .12.089c.015.01.027.022.043.029a.498.498 0 0 0 .4 0c.016-.007.028-.02.043-.029a.457.457 0 0 0 .12-.089c.004-.003.009-.005.012-.009l11-12.5a.497.497 0 0 0-.044-.705z" id="aeOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-left"><path d="M23.5 12.004H1.825L13.33 1.879a.5.5 0 1 0-.661-.75l-12.5 11-.008.012a.474.474 0 0 0-.093.124c-.008.014-.02.024-.026.038a.496.496 0 0 0 .001.402c.006.014.018.024.026.038a.474.474 0 0 0 .093.125c.003.003.004.008.008.011l12.5 11a.495.495 0 0 0 .705-.045.5.5 0 0 0-.045-.705L1.825 13.004H23.5a.5.5 0 0 0 0-1z" id="afOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-left-right"><g id="agOutline_Icons_1_"><g id="agOutline_Icons"><path d="M23.854 11.646l-5.5-5.5a.5.5 0 0 0-.707.707L22.793 12l-5.146 5.146a.5.5 0 0 0 .707.708l5.5-5.5a.502.502 0 0 0 0-.708zM6.354 6.146a.5.5 0 0 0-.707 0l-5.5 5.5a.5.5 0 0 0 0 .707l5.5 5.5a.502.502 0 0 0 .707.001.5.5 0 0 0 0-.707L1.207 12l5.146-5.146a.5.5 0 0 0 .001-.708z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-right"><path d="M23.931 12.743c.008-.014.02-.024.026-.038a.496.496 0 0 0 0-.402c-.006-.014-.018-.024-.026-.038a.453.453 0 0 0-.093-.124c-.003-.004-.004-.009-.008-.012l-12.5-11a.5.5 0 1 0-.661.75l11.505 10.125H.5a.5.5 0 0 0 0 1h21.675L10.67 23.129a.498.498 0 0 0 .33.875.495.495 0 0 0 .33-.125l12.5-11 .008-.011a.522.522 0 0 0 .093-.125z" id="ahOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-up"><path d="M22.875 12.674l-11-12.5c-.003-.004-.008-.005-.012-.008a.492.492 0 0 0-.728 0c-.003.003-.008.004-.011.008l-11 12.5a.5.5 0 1 0 .751.66L11 1.829v21.675a.5.5 0 0 0 1 0V1.829l10.125 11.505a.5.5 0 1 0 .75-.66z" id="aiOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="arrow-up-down"><g id="ajOutline_Icons_1_"><g id="ajOutline_Icons"><path d="M6.854 6.354L12 1.207l5.146 5.147a.502.502 0 0 0 .708 0 .5.5 0 0 0 0-.707l-5.5-5.5a.5.5 0 0 0-.707 0l-5.5 5.5a.5.5 0 0 0 .707.707zM17.146 17.646L12 22.793l-5.146-5.146a.5.5 0 0 0-.707.707l5.5 5.5a.498.498 0 0 0 .707 0l5.5-5.5a.5.5 0 0 0-.708-.708z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="asset-css"><g id="akOutline_Icons"><path d="M9.642 15.521a1.964 1.964 0 0 0-.172-.038c-.482-.09-.712-.211-.712-.657 0-.456.333-.826.742-.826.389 0 .714.338.739.77.017.275.27.491.528.47a.5.5 0 0 0 .47-.528C11.181 13.751 10.417 13 9.5 13c-.961 0-1.742.818-1.742 1.825 0 .898.515 1.451 1.604 1.656.038.011.094.021.163.034.484.088.715.209.715.658 0 .456-.332.827-.74.827-.39 0-.716-.339-.741-.771-.017-.275-.267-.497-.528-.47a.5.5 0 0 0-.47.528C7.817 18.248 8.581 19 9.5 19c.96 0 1.74-.819 1.74-1.826 0-.904-.516-1.456-1.598-1.653zM14.642 15.521a1.964 1.964 0 0 0-.172-.038c-.482-.09-.712-.211-.712-.657 0-.456.333-.826.742-.826.389 0 .714.338.739.77a.5.5 0 0 0 .998-.058C16.181 13.751 15.417 13 14.5 13c-.961 0-1.742.818-1.742 1.825 0 .898.515 1.451 1.604 1.656.038.011.094.021.163.034.484.088.715.209.715.658 0 .455-.332.826-.74.826-.39 0-.716-.339-.741-.771a.493.493 0 0 0-.528-.47.5.5 0 0 0-.47.528c.056.962.82 1.714 1.739 1.714.96 0 1.74-.819 1.74-1.826 0-.904-.516-1.456-1.598-1.653zM4.91 13.999c.303 0 .641.065.808.846a.504.504 0 0 0 .595.384.502.502 0 0 0 .384-.595c-.291-1.352-1.132-1.635-1.786-1.635C3 12.999 3 15.026 3 16s0 3 1.91 3c.654 0 1.495-.283 1.786-1.635a.501.501 0 0 0-.384-.595.506.506 0 0 0-.595.384c-.166.781-.504.846-.807.846-.515 0-.91-.147-.91-2 0-1.854.395-2.001.91-2.001z"/><path d="M19.961 6.308a.495.495 0 0 0-.108-.162L13.855.147A.508.508 0 0 0 13.5 0H.5a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5v-17a.503.503 0 0 0-.039-.192zM14 1.707L18.293 6H14V1.707zM1 23V1h12v5.5a.5.5 0 0 0 .5.5H19v16H1z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="asset-img"><g id="alOutline_Icons"><path d="M19.961 6.308a.495.495 0 0 0-.108-.162L13.855.147a.492.492 0 0 0-.162-.107A.494.494 0 0 0 13.5 0H.5a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5v-17a.499.499 0 0 0-.039-.192zM14 1.707L18.293 6H14V1.707zM1 23V1h12v5.5a.5.5 0 0 0 .5.5H19v16H1z"/><path d="M13.479 10.859a.501.501 0 0 0-.918-.098L9.88 15.674l-1.527-1.527a.5.5 0 0 0-.801.13l-2.5 5a.503.503 0 0 0 .021.486A.504.504 0 0 0 5.5 20h10a.498.498 0 0 0 .479-.641l-2.5-8.5zM6.309 19l1.828-3.656 1.51 1.509a.501.501 0 0 0 .792-.114l2.423-4.44L14.832 19H6.309zM7 11c1.103 0 2-.897 2-2s-.897-2-2-2-2 .897-2 2 .897 2 2 2zm0-3a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="asset-js"><g id="amOutline_Icons"><path d="M12.642 15.521a1.964 1.964 0 0 0-.172-.038c-.482-.09-.712-.211-.712-.657 0-.456.333-.826.742-.826.389 0 .714.338.739.77a.5.5 0 0 0 .998-.058C14.181 13.751 13.417 13 12.5 13c-.961 0-1.742.818-1.742 1.825 0 .898.515 1.451 1.604 1.656.038.011.094.021.163.034.484.088.715.209.715.658 0 .455-.332.826-.74.826-.39 0-.716-.339-.741-.771-.017-.275-.262-.497-.528-.47a.5.5 0 0 0-.47.528c.056.962.82 1.714 1.739 1.714.96 0 1.74-.819 1.74-1.826 0-.904-.516-1.456-1.598-1.653z"/><path d="M19.961 6.308a.495.495 0 0 0-.108-.162L13.855.147A.508.508 0 0 0 13.5 0H.5a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5v-17a.503.503 0 0 0-.039-.192zM14 1.707L18.293 6H14V1.707zM1 23V1h12v5.5a.5.5 0 0 0 .5.5H19v16H1z"/><path d="M8.5 13a.5.5 0 0 0-.5.5V17a1 1 0 0 1-2 0 .5.5 0 0 0-1 0c0 1.103.897 2 2 2s2-.897 2-2v-3.5a.5.5 0 0 0-.5-.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="asset-misc"><g id="anOutline_Icons"><path d="M19.961 6.308a.495.495 0 0 0-.108-.162L13.855.147A.508.508 0 0 0 13.5 0H.5a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5v-17a.503.503 0 0 0-.039-.192zM14 1.707L18.293 6H14V1.707zM1 23V1h12v5.5a.5.5 0 0 0 .5.5H19v16H1z"/><path d="M8.576 9.595a.5.5 0 0 0 0-1c-.708 0-1.216.173-1.555.529-.519.547-.477 1.348-.437 2.123.071 1.36.038 2.214-1.456 2.587-.023.006-.041.021-.062.03-.033.013-.066.026-.095.046-.024.016-.043.037-.064.057-.024.024-.05.048-.069.078-.019.027-.028.057-.041.088-.01.022-.025.041-.031.065-.002.008.001.015-.001.022-.007.032-.004.064-.005.099.001.033-.002.066.005.099.002.008-.001.015.001.022.003.011.013.015.016.024.03.096.081.182.16.244l.006.007a.504.504 0 0 0 .183.089c1.494.373 1.527 1.227 1.456 2.587-.04.775-.082 1.576.437 2.123.339.356.847.529 1.555.529a.5.5 0 0 0 0-1c-.413 0-.691-.073-.829-.218-.223-.235-.194-.792-.163-1.383.05-.963.117-2.317-1.076-3.124 1.193-.806 1.126-2.161 1.076-3.124-.031-.591-.06-1.147.163-1.383.135-.143.413-.216.826-.216zM15.236 14.221c-.002-.008.001-.015-.001-.022-.006-.022-.021-.04-.029-.062-.014-.033-.025-.066-.046-.096-.017-.024-.037-.043-.058-.063-.025-.026-.049-.051-.079-.071-.025-.016-.052-.025-.079-.037-.025-.011-.046-.028-.073-.035-1.493-.373-1.526-1.227-1.455-2.587.04-.775.082-1.577-.437-2.123-.338-.356-.847-.529-1.554-.529a.5.5 0 0 0 0 1c.412 0 .691.073.828.218.223.234.194.792.163 1.383-.05.963-.117 2.318 1.075 3.124-1.192.807-1.125 2.161-1.075 3.124.031.591.06 1.148-.163 1.383-.137.145-.416.218-.828.218a.5.5 0 0 0 0 1c.707 0 1.216-.173 1.554-.529.519-.546.477-1.348.437-2.123-.071-1.36-.038-2.214 1.455-2.587a.512.512 0 0 0 .183-.089l.006-.007a.487.487 0 0 0 .16-.244c.003-.01.013-.014.016-.024.002-.008-.001-.015.001-.022.007-.032.004-.065.005-.099-.002-.037.001-.069-.006-.101z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="asset-pdf"><g id="aoOutline_Icons"><path d="M21.961 6.308a.47.47 0 0 0-.108-.161l-5.999-6A.508.508 0 0 0 15.5 0h-13a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5v-17a.503.503 0 0 0-.039-.192zM16 1.707L20.293 6H16V1.707zM3 23V1h12v5.5a.5.5 0 0 0 .5.5H21v16H3z"/><path d="M12.5 13h-1a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 .5.5h1c1.425 0 2.5-1.29 2.5-3s-1.075-3-2.5-3zm0 5H12v-4h.5c.869 0 1.5.841 1.5 2s-.631 2-1.5 2zM19 13h-2.5a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 1 0V16h1a.5.5 0 0 0 0-1h-1v-1h2a.5.5 0 0 0 0-1zM7.75 13H6.5a.5.5 0 0 0-.5.5v4.999a.5.5 0 0 0 1 0V16.5h.75c.965 0 1.75-.785 1.75-1.75S8.715 13 7.75 13zm0 2.5H7V14h.75a.75.75 0 0 1 0 1.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="asset-php"><g id="apOutline_Icons"><path d="M19.961 6.308a.495.495 0 0 0-.108-.162L13.855.147A.508.508 0 0 0 13.5 0H.5a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5v-17a.503.503 0 0 0-.039-.192zM14 1.707L18.293 6H14V1.707zM1 23V1h12v5.5a.5.5 0 0 0 .5.5H19v16H1z"/><path d="M11.5 13a.5.5 0 0 0-.5.5V16H9v-2.5a.5.5 0 0 0-1 0v5a.5.5 0 0 0 1 0V17h2v1.5a.5.5 0 0 0 1 0v-5a.5.5 0 0 0-.5-.5zM4.75 13H3.5a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 1 0v-2h.75c.965 0 1.75-.785 1.75-1.75S5.715 13 4.75 13zm0 2.5H4V14h.75c.413 0 .75.337.75.75s-.337.75-.75.75zM14.75 13H13.5a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 1 0v-2h.75c.965 0 1.75-.785 1.75-1.75S15.715 13 14.75 13zm0 2.5H14V14h.75c.413 0 .75.337.75.75s-.337.75-.75.75z"/></g></symbol><symbol viewBox="0 0 24 24" id="asset-settings"><g id="aqWoorank-Icon" stroke="none" fill-rule="evenodd"><path d="M12 17.5a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-1a2 2 0 1 1 0-4 2 2 0 0 1 0 4z" id="aqOval"/><path d="M19.62 12.698l-2.25-3.896-1.682.97a5.973 5.973 0 0 0-1.439-.835V7h-4.5v1.946c-.519.209-1 .487-1.437.827l-1.681-.972-2.25 3.895 1.679.972a5.946 5.946 0 0 0 .002 1.661l-1.682.972 2.25 3.896 1.682-.97c.439.343.922.623 1.436.832V22h4.5v-1.945a5.966 5.966 0 0 0 1.437-.827l1.681.973 2.25-3.895-1.679-.972a5.936 5.936 0 0 0 0-1.664l1.683-.972zm-1.745.615l-.49.099.448.224-.447-.226.25.433.3-.173a6.068 6.068 0 0 0-.06-.357zm-.874 5.522l-1.429-.827-.27.238a4.97 4.97 0 0 1-1.713.987l-.34.115V21h-2.5v-1.647l-.34-.115a5.028 5.028 0 0 1-1.715-.993l-.27-.238-1.428.824-1.25-2.164 1.43-.826-.073-.353a4.951 4.951 0 0 1-.002-1.978l.072-.353-1.427-.825 1.25-2.165 1.429.826.27-.238a4.965 4.965 0 0 1 1.713-.987l.341-.114V8h2.5v1.645l.341.114c.63.212 1.213.55 1.715.994l.27.239 1.428-.824 1.25 2.164-1.247.72-.145.29.034.17a4.942 4.942 0 0 1 0 1.98l-.072.352 1.428.826L17 18.835z" id="aqShape"/><path d="M3 23V1h12.293L21 6.707V23H3zm-1 1h20V6.293L15.707 0H2v24z" id="aqShape"/><path id="aqShape" d="M16 .5h-1V7h6.5V6H16z"/></g></symbol><symbol viewBox="0 0 24 24" id="asset-slides"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M22.961 8.308a.47.47 0 0 0-.108-.161l-5.999-6A.508.508 0 0 0 16.5 2h-15a.5.5 0 0 0-.5.5v18a.5.5 0 0 0 .5.5h21a.5.5 0 0 0 .5-.5v-12a.503.503 0 0 0-.039-.192zM17 3.707L21.293 8H17V3.707zM2 20V3h14v5.5a.5.5 0 0 0 .5.5H22v11H2z"/><path d="M14.937 11.505L9 14.935V8.602l5.937 2.903zm2.126-.074L8 7v9.667l9.063-5.236z"/></g></symbol><symbol viewBox="0 0 24 24" id="backlinks"><g id="asWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><g id="as04-Backlinks"><path d="M17.346 18.054l3.6 3.6a.5.5 0 0 0 .708-.708l-3.6-3.6a.5.5 0 0 0-.708.708zM16.583 23.27l-1.1-4.1a.5.5 0 1 0-.966.26l1.1 4.1a.5.5 0 1 0 .966-.26zM23.637 15.72l-4.2-1.2a.5.5 0 0 0-.274.96l4.2 1.2a.5.5 0 0 0 .274-.96zM2.342 3.049l3.5 3.6a.5.5 0 0 0 .716-.698l-3.5-3.6a.5.5 0 0 0-.716.698zM.363 8.28l4.2 1.2a.5.5 0 1 0 .274-.96l-4.2-1.2a.5.5 0 1 0-.274.96zM9.384 4.573l-1.1-4.2a.5.5 0 1 0-.968.254l1.1 4.2a.5.5 0 1 0 .968-.254zM18.554 12.254l3.1-3.1C22.56 8.247 23.1 7.017 23.1 5.8c0-1.306-.501-2.515-1.468-3.374-1.874-1.875-4.89-1.875-6.786.02l-5.1 5.1C8.84 8.453 8.3 9.683 8.3 10.9c0 1.306.501 2.515 1.468 3.374.258.26.479.425.955.742a.5.5 0 1 0 .554-.832c-.424-.283-.603-.418-.823-.638C9.688 12.864 9.3 11.93 9.3 10.9c0-.944.43-1.922 1.154-2.646l5.1-5.1a3.786 3.786 0 0 1 5.392 0C21.712 3.836 22.1 4.77 22.1 5.8c0 .944-.43 1.922-1.154 2.646l-3.1 3.1a.5.5 0 0 0 .708.708z" id="asShape"/><path d="M5.446 11.746l-3.1 3.1C1.44 15.753.9 16.983.9 18.2c0 1.369.478 2.494 1.468 3.374C3.41 22.5 4.52 23 5.7 23c1.306 0 2.515-.501 3.374-1.468l5.08-5.078c.906-.907 1.446-2.137 1.446-3.354 0-1.306-.501-2.515-1.468-3.374-.258-.26-.479-.425-.955-.742a.5.5 0 1 0-.554.832c.424.283.603.418.823.638.766.682 1.154 1.616 1.154 2.646 0 .944-.43 1.922-1.154 2.646l-5.1 5.1C7.664 21.612 6.73 22 5.7 22c-.91 0-1.796-.399-2.668-1.174C2.262 20.142 1.9 19.29 1.9 18.2c0-.944.43-1.922 1.154-2.646l3.1-3.1a.5.5 0 0 0-.708-.708zM18.554 9.154l1.5-1.5c.495-.496.746-1.124.746-1.854s-.251-1.358-.746-1.854C19.558 3.451 18.93 3.2 18.2 3.2c-.697 0-1.317.31-1.854.846l-2.4 2.4a.5.5 0 0 0 .708.708l2.4-2.4c.363-.364.743-.554 1.146-.554.47 0 .842.149 1.146.454.305.304.454.676.454 1.146 0 .47-.149.842-.454 1.146l-1.5 1.5a.5.5 0 0 0 .708.708z" id="asShape"/><path d="M5.446 14.846l-1.5 1.5c-.495.496-.746 1.124-.746 1.854s.251 1.358.746 1.854c.496.495 1.124.746 1.854.746s1.358-.251 1.854-.746l2.4-2.4a.5.5 0 0 0-.708-.708l-2.4 2.4c-.304.305-.676.454-1.146.454-.47 0-.842-.149-1.146-.454-.305-.304-.454-.676-.454-1.146 0-.47.149-.842.454-1.146l1.5-1.5a.5.5 0 0 0-.708-.708z" id="asShape"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="bell"><g id="atOutline_Icons_1_"><path d="M23.5 19a2.503 2.503 0 0 1-2.5-2.5V11c0-3.641-2.24-6.951-5.603-8.325A3.475 3.475 0 0 0 12 0a3.523 3.523 0 0 0-3.399 2.675C5.239 4.048 3 7.358 3 11v5.5C3 17.878 1.878 19 .5 19a.5.5 0 0 0 0 1h8.051c.245 1.691 1.69 3 3.449 3s3.204-1.309 3.449-3H23.5a.5.5 0 0 0 0-1zM12 22a2.503 2.503 0 0 1-2.449-2h4.898A2.503 2.503 0 0 1 12 22zm-9.053-3A3.485 3.485 0 0 0 4 16.5V11c0-3.32 2.094-6.33 5.211-7.49a.501.501 0 0 0 .32-.393A2.515 2.515 0 0 1 12 1c1.239 0 2.276.891 2.465 2.117.027.179.15.329.32.393C17.904 4.671 20 7.681 20 11v5.5c0 .979.403 1.865 1.053 2.5H2.947z" id="atOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="blank"><g id="auOutline_Icons_1_"><circle stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" cx="12" cy="12" r="2" id="auOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="blank-empty"><g id="avOutline_Icons_1_"><path d="M12 9c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3zm0 5c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z" id="avOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="box"><path d="M19.499 0h-15a4.505 4.505 0 0 0-4.5 4.5v15c0 2.481 2.019 4.5 4.5 4.5h15c2.481 0 4.5-2.019 4.5-4.5v-15c0-2.481-2.019-4.5-4.5-4.5zm3.5 19.5c0 1.93-1.57 3.5-3.5 3.5h-15c-1.93 0-3.5-1.57-3.5-3.5v-15c0-1.93 1.57-3.5 3.5-3.5h15c1.93 0 3.5 1.57 3.5 3.5v15z" id="awOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="box-check"><g id="axOutline_Icons"><path d="M19.499 0h-15a4.505 4.505 0 0 0-4.5 4.5v15c0 2.481 2.019 4.5 4.5 4.5h15c2.481 0 4.5-2.019 4.5-4.5v-15c0-2.481-2.019-4.5-4.5-4.5zm3.5 19.5c0 1.93-1.57 3.5-3.5 3.5h-15c-1.93 0-3.5-1.57-3.5-3.5v-15c0-1.93 1.57-3.5 3.5-3.5h15c1.93 0 3.5 1.57 3.5 3.5v15z"/><path fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M23.499 19.5c0 2.2-1.8 4-4 4h-15c-2.2 0-4-1.8-4-4v-15c0-2.2 1.8-4 4-4h15c2.2 0 4 1.8 4 4v15z"/><path d="M16.659 8.135l-7.146 6.67-2.159-2.158a.5.5 0 0 0-.707.707l2.5 2.5a.5.5 0 0 0 .695.012l7.5-7a.5.5 0 0 0-.683-.731z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="box-check-out"><g id="ayOutline_Icons_1_"><g id="ayOutline_Icons"><path d="M22.814 1.361a.5.5 0 0 0-.703.075L9.96 16.503l-4.606-4.606a.5.5 0 0 0-.707.707l5 5a.5.5 0 0 0 .743-.04l12.5-15.5a.501.501 0 0 0-.076-.703z"/><path d="M19.5 10.5a.5.5 0 0 0-.5.5v11H2V5h12a.5.5 0 0 0 0-1H1.5a.5.5 0 0 0-.5.5v18a.5.5 0 0 0 .5.5h18a.5.5 0 0 0 .5-.5V11a.5.5 0 0 0-.5-.5z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="box-remove"><g id="azOutline_Icons"><path d="M17.5 11h-12a.5.5 0 0 0 0 1h12a.5.5 0 0 0 0-1z"/><path d="M.5 23h22a.5.5 0 0 0 .5-.5V.5a.5.5 0 0 0-.5-.5H.5a.5.5 0 0 0-.5.5v22a.5.5 0 0 0 .5.5zM1 1h21v21H1V1z"/></g></symbol><symbol viewBox="0 0 24 24" id="broken-redirect"><g id="baWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M1.5 1a.5.5 0 0 0-1 0v17.5H14a.5.5 0 1 0 0-1H1.5V1z" id="baShape"/><path d="M12.646 22.646a.5.5 0 0 0 .708.708L18.707 18l-5.353-5.354a.5.5 0 0 0-.708.708L17.293 18l-4.647 4.646z" id="baShape"/><path d="M23.354 13.354a.5.5 0 0 0-.708-.708L17.293 18l5.353 5.354a.5.5 0 0 0 .708-.708L18.707 18l4.647-4.646z" id="baShape"/></g></symbol><symbol viewBox="0 0 20 16" id="bullet"><path d="M0 8c0 4.311 3.689 8 8 8 6.59 0 12-8 12-8S14.59 0 8 0C3.689 0 0 3.689 0 8z" stroke="none" stroke-width="1" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="bullet-arrow-down"><g id="bcOutline_Icons_1_"><g id="bcOutline_Icons"><path d="M11.5 23C17.841 23 23 17.841 23 11.5S17.841 0 11.5 0 0 5.159 0 11.5 5.159 23 11.5 23zm0-22C17.29 1 22 5.71 22 11.5S17.29 22 11.5 22 1 17.29 1 11.5 5.71 1 11.5 1z"/><path d="M11.146 18.353a.502.502 0 0 0 .709 0l5.499-5.499a.5.5 0 0 0-.707-.707L12 16.793V5a.5.5 0 0 0-1 0v11.793l-4.646-4.646a.5.5 0 0 0-.707.707l5.499 5.499z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="bullet-arrow-up"><g id="bdOutline_Icons_1_"><g id="bdOutline_Icons"><path d="M11.5 23C17.841 23 23 17.841 23 11.5S17.841 0 11.5 0 0 5.159 0 11.5 5.159 23 11.5 23zm0-22C17.29 1 22 5.71 22 11.5S17.29 22 11.5 22 1 17.29 1 11.5 5.71 1 11.5 1z"/><path d="M6.354 10.854L11 6.207V18a.5.5 0 0 0 1 0V6.207l4.646 4.646a.5.5 0 0 0 .707-.707l-5.499-5.5a.503.503 0 0 0-.709 0l-5.499 5.5a.5.5 0 0 0 .708.708z"/></g></g></symbol><symbol viewBox="0 0 20 16" id="bullet-danger"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 8c0 4.311 3.689 8 8 8 6.59 0 12-8 12-8S14.59 0 8 0C3.689 0 0 3.689 0 8z" fill="#D9534F"/><path d="M11 10.07l-.93.93L8 8.93 5.93 11 5 10.07 7.07 8 5 5.93 5.93 5 8 7.07 10.07 5l.93.93L8.93 8 11 10.07z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 20 16" id="bullet-info"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M8 0C3.689 0 0 3.689 0 8s3.689 8 8 8c6.59 0 12-8 12-8S14.59 0 8 0z" fill="#428BCA"/><path d="M8 10.5a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 20 16" id="bullet-plain"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 8c0 4.311 3.689 8 8 8 6.59 0 12-8 12-8s-1.945-2.877-4.924-5.18C13.087 1.282 10.638 0 8 0 3.689 0 0 3.689 0 8z" fill="#888"/><path d="M5.5 8a2.5 2.5 0 1 1 5 0 2.5 2.5 0 0 1-5 0z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 20 16" id="bullet-success"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 8c0 4.311 3.689 8 8 8 6.59 0 12-8 12-8S14.59 0 8 0C3.689 0 0 3.689 0 8z" fill="#5CB85C"/><path d="M4 8.167l1.038-1.015L6.9 8.972 10.962 5 12 6.015 6.9 11 4 8.167z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 20 16" id="bullet-warning"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 8c0 4.311 3.689 8 8 8 6.59 0 12-8 12-8S14.59 0 8 0C3.689 0 0 3.689 0 8z" fill="#F89D0E"/><path d="M7 10h2v2H7v-2zM7 4h2v5H7V4z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 24 24" id="canonical"><g id="bjWoorank-Icon" stroke="none" fill-rule="evenodd"><g id="bjSection-Tab---Canonical" transform="translate(2)"><g id="bjGroup"><path d="M13 5v3H1V5h12zm1-1H0v5h14V4zM13 12v3H1v-3h12zm1-1H0v5h14v-5zM13 19v3H1v-3h12zm1-1H0v5h14v-5z" id="bjRectangle-path"/><path d="M13.5 20.023c-.276 0-.5.219-.5.489s.224.488.5.488H20V.488A.494.494 0 0 0 19.5 0c-.276 0-.5.219-.5.488v19.535h-5.5z" id="bjShape"/><path id="bjShape" d="M13.5 7h6V6h-6zM13.5 14h6v-1h-6z"/></g></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="check"><g id="bkOutline_Icons_1_"><path d="M6.646 23.854l-6.5-6.5a.5.5 0 0 1 .707-.707l6.083 6.083L23.094.208a.5.5 0 0 1 .813.583l-16.5 23a.501.501 0 0 1-.761.063z" id="bkOutline_Icons"/></g></symbol><symbol viewBox="0 0 120 120" id="checklist"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle id="blbackground" fill="#E6E9ED" cx="60" cy="60" r="60"/><g id="blchecklist" transform="translate(32 28)"><path d="M52 64H4a4 4 0 0 1-4-4V4a4 4 0 0 1 4-4h34l18 18v42a4 4 0 0 1-4 4z" id="blPath" fill="#FFF"/><path d="M27 49.001A2 2 0 1 0 27 53h16a2 2 0 0 0 0-3.999H27z" id="blShape" fill="#CCD1D9"/><path d="M27 25a2 2 0 0 0 0 4h16a2 2 0 0 0 0-4H27zM39 41a2 2 0 0 0 0-4H27a2 2 0 0 0 0 4h12z" id="blPath" fill="#CCD1D9"/><path d="M18.539 22.58l-4.521 4.522-1.509-1.516a2.06 2.06 0 0 0-2.921 0 2.07 2.07 0 0 0 0 2.926l2.841 2.85c.207.209.448.36.705.462a2.015 2.015 0 0 0 2.271-.4l5.988-5.987a2.02 2.02 0 0 0 0-2.856 2.016 2.016 0 0 0-2.854 0z" id="blShape-Copy" fill="#88C057"/><path d="M18.539 34.592l-4.521 4.52-1.509-1.515a2.06 2.06 0 0 0-2.921 0 2.07 2.07 0 0 0 0 2.926l2.841 2.85c.207.209.448.36.705.462a2.015 2.015 0 0 0 2.271-.4l5.988-5.987a2.02 2.02 0 0 0 0-2.856 2.016 2.016 0 0 0-2.854 0z" id="blShape-Copy-2" fill="#88C057"/><path d="M18.539 46.58l-4.521 4.522-1.509-1.516a2.06 2.06 0 0 0-2.921 0 2.07 2.07 0 0 0 0 2.926l2.841 2.85c.207.209.448.36.705.462a2.015 2.015 0 0 0 2.271-.4l5.988-5.987a2.02 2.02 0 0 0 0-2.856 2.016 2.016 0 0 0-2.854 0z" id="blShape-Copy-3" fill="#88C057"/><path d="M42 18a4 4 0 0 1-4-4V0l18 18H42z" id="blShape" fill="#F5F7FA"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="chevron-down"><path d="M23.832 5.126a.498.498 0 0 0-.706.043L12 17.745.875 5.169a.497.497 0 0 0-.706-.043.498.498 0 0 0-.043.705l11.5 13a.5.5 0 0 0 .749 0l11.5-13a.499.499 0 0 0-.043-.705z" id="bmOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="chevron-left"><path d="M6.254 12L18.831.874a.498.498 0 0 0 .043-.705.497.497 0 0 0-.706-.043l-13 11.5a.502.502 0 0 0 .001.748l13 11.5a.5.5 0 0 0 .663-.748L6.254 12z" id="bnOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="chevron-right"><path d="M18.831 11.626l-13-11.5a.498.498 0 1 0-.662.748L17.746 12 5.169 23.126A.498.498 0 0 0 5.5 24a.493.493 0 0 0 .331-.126l13-11.5a.5.5 0 0 0 0-.748z" id="boOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="chevron-up"><path d="M23.875 18.169l-11.5-13a.516.516 0 0 0-.749 0l-11.5 13a.499.499 0 0 0 .043.705.496.496 0 0 0 .706-.043L12 6.255l11.125 12.576a.5.5 0 0 0 .75-.662z" id="bpOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="circle"><path d="M11.5 23.001c-6.341 0-11.5-5.159-11.5-11.5S5.159.001 11.5.001 23 5.16 23 11.501s-5.159 11.5-11.5 11.5zm0-22c-5.79 0-10.5 4.71-10.5 10.5s4.71 10.5 10.5 10.5 10.5-4.71 10.5-10.5-4.71-10.5-10.5-10.5z" id="bqOutline_Icons_1_"/></symbol><symbol viewBox="0 0 24 24" id="circlecheck"><g fill="none" fill-rule="evenodd"><circle stroke="#4FCEB9" cx="12" cy="12" r="10" stroke-width="2" fill="#ECFFFC"/><path fill="#4FCEB9" d="M6 12.2l1.6-1.5 2.7 2.8 6-6L18 9l-7.7 7.5"/></g></symbol><symbol viewBox="0 0 120 120" id="clipboard"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle id="bsbackground" fill="#E6E9ED" cx="60" cy="60" r="60"/><g id="bsclipboard" transform="translate(32 27)"><path d="M52 4H4a4 4 0 0 0-4 4v52a4 4 0 0 0 4 4h48a4 4 0 0 0 4-4V8a4 4 0 0 0-4-4z" id="bsShape" fill="#48A0DC"/><path d="M50 8H6a2 2 0 0 0-2 2v48a2 2 0 0 0 2 2h44a2 2 0 0 0 2-2V10a2 2 0 0 0-2-2z" id="bsShape" fill="#FFF"/><path d="M14 24h28a2 2 0 0 0 0-4H14a2 2 0 0 0 0 4zm28 12H14a2 2 0 0 0 0 4h28a2 2 0 0 0 0-4zm-28-4h16a2 2 0 0 0 0-4H14a2 2 0 0 0 0 4zm16 12H14a2 2 0 0 0 0 4h16a2 2 0 0 0 0-4z" id="bsShape" fill="#CCD1D9"/><path d="M36 4h-4a4 4 0 0 0-8 0h-4a4 4 0 0 0 0 8h16a4 4 0 0 0 0-8z" id="bsShape" fill="#666"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="clock"><g id="btOutline_Icons_1_"><g id="btOutline_Icons"><path d="M12 24C5.383 24 0 18.617 0 12S5.383 0 12 0s12 5.383 12 12-5.383 12-12 12zm0-23C5.935 1 1 5.935 1 12c0 6.066 4.935 11 11 11s11-4.934 11-11c0-6.065-4.935-11-11-11z"/><path d="M17.162 17.869l-6-5.5A.503.503 0 0 1 11 12V6.5a.5.5 0 0 1 1 0v5.28l5.838 5.351a.5.5 0 0 1-.676.738z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="competitors"><g id="buOutline_Icons_1_"><path d="M19.5 9C21.981 9 24 6.981 24 4.5S21.981 0 19.5 0c-3.114 0-5.309 3.116-4.221 6.051L8.267 9.558A4.465 4.465 0 0 0 4.5 7.5C2.019 7.5 0 9.519 0 12s2.019 4.5 4.5 4.5c1.543 0 2.942-.78 3.767-2.058l7.016 3.508C14.204 20.862 16.354 24 19.5 24c2.481 0 4.5-2.019 4.5-4.5S21.981 15 19.5 15a4.473 4.473 0 0 0-3.774 2.055l-7.005-3.503a4.456 4.456 0 0 0 .001-3.104l7.004-3.502A4.475 4.475 0 0 0 19.5 9zm0 7c1.93 0 3.5 1.57 3.5 3.5S21.43 23 19.5 23c-2.604 0-4.29-2.747-3.128-5.063A3.484 3.484 0 0 1 19.5 16zm-15-.5C2.57 15.5 1 13.93 1 12s1.57-3.5 3.5-3.5a3.48 3.48 0 0 1 3.127 1.936v.001C8.789 12.745 7.104 15.5 4.5 15.5zM19.5 1C21.43 1 23 2.57 23 4.5S21.43 8 19.5 8a3.483 3.483 0 0 1-3.128-1.938l-.001-.001C15.204 3.717 16.923 1 19.5 1z" id="buOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="conversation"><g id="bvOutline_Icons_1_"><g id="bvOutline_Icons"><path d="M23.5.982H.5a.5.5 0 0 0-.5.5v16a.5.5 0 0 0 .5.5H7v3.5a.5.5 0 0 0 .854.354l3.854-3.854H23.5a.5.5 0 0 0 .5-.5v-16a.5.5 0 0 0-.5-.5zm-.5 16H11.5a.504.504 0 0 0-.354.146L8 20.275v-2.793a.5.5 0 0 0-.5-.5H1v-15h22v15z"/><path d="M9.5 6.982h9a.5.5 0 0 0 0-1h-9a.5.5 0 0 0 0 1zM9.5 9.982h9a.5.5 0 0 0 0-1h-9a.5.5 0 0 0 0 1zM9.5 12.982h9a.5.5 0 0 0 0-1h-9a.5.5 0 0 0 0 1zM5.5 6.982h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1zM5.5 9.982h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1zM5.5 12.982h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1z"/></g></g></symbol><symbol viewBox="0 0 24 24" id="crawl_errors"><g transform="rotate(-90 8.5 8.5)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M10.625 6.25v7.054h1.25V6.25h-1.25z"/><path d="M4.375 13.75c0-2.416.709-3.125 3.125-3.125h3.75v-1.25H7.5c-3.107 0-4.375 1.269-4.375 4.375h1.25zM11.25 6.875a3.125 3.125 0 1 0 0-6.25 3.125 3.125 0 0 0 0 6.25zm0-1.25a1.875 1.875 0 1 1 0-3.75 1.875 1.875 0 0 1 0 3.75zM11.25 19.375a3.125 3.125 0 1 0 0-6.25 3.125 3.125 0 0 0 0 6.25zm0-1.25a1.875 1.875 0 1 1 0-3.75 1.875 1.875 0 0 1 0 3.75z"/><path d="M3.75 19.375a3.125 3.125 0 1 0 0-6.25 3.125 3.125 0 0 0 0 6.25zm0-1.25a1.875 1.875 0 1 1 0-3.75 1.875 1.875 0 0 1 0 3.75z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="cross"><g id="bxOutline_Icons_1_"><path d="M12.707 12L23.854.854a.5.5 0 0 0-.707-.707L12 11.293.854.146a.5.5 0 0 0-.707.707L11.293 12 .146 23.146a.5.5 0 0 0 .707.707L12 12.707l11.146 11.147a.5.5 0 0 0 .707-.707L12.707 12z" id="bxOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="edit"><g id="byOutline_Icons_1_"><path d="M23.25 2.893L21.128.771c-.943-.944-2.592-.944-3.536 0L2.248 16.118l-.004.003-.003.004-.248.248a.499.499 0 0 0-.133.239L.343 23.077a.5.5 0 0 0 .601.601l6.466-1.517a.499.499 0 0 0 .239-.133l.248-.247.004-.003.003-.004L23.25 6.428a2.505 2.505 0 0 0 0-3.535zm-2.487 4.608L16.53 3.247l.708-.709 4.244 4.243-.719.72zM7.546 20.717l-4.242-4.242L15.823 3.954l4.233 4.254-12.51 12.509zm-4.824-3.409l3.991 3.99L1.5 22.521l1.222-5.213zm19.82-11.587l-.354.354-4.244-4.244.354-.354c.566-.566 1.555-.567 2.122 0L22.542 3.6a1.503 1.503 0 0 1 0 2.121z" id="byOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="email"><g id="bzOutline_Icons_1_"><g id="bzOutline_Icons"><path d="M22 4H2C.897 4 0 4.896 0 6v12c0 1.103.897 2 2 2h20c1.103 0 2-.897 2-2V6c0-1.104-.897-2-2-2zm1 14c0 .551-.449 1-1 1H2c-.551 0-1-.449-1-1V6c0-.551.449-1 1-1h20c.551 0 1 .449 1 1v12z"/><path d="M20.92 8.229a.5.5 0 0 0-.691-.148L12 13.404 3.771 8.08a.5.5 0 0 0-.542.84l8.5 5.5a.495.495 0 0 0 .542 0l8.5-5.5a.5.5 0 0 0 .149-.691zM6.752 13.566l-3.5 2a.5.5 0 0 0 .248.934c.218 0 3.559-1.958 3.748-2.066a.5.5 0 1 0-.496-.868zM20.748 15.566l-3.5-2a.5.5 0 1 0-.496.868l3.5 2a.5.5 0 0 0 .496-.868z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="expand-square"><g id="caOutline_Icons"><path d="M20.691 3.039A.487.487 0 0 0 20.5 3h-5a.5.5 0 0 0 0 1h3.793l-7.146 7.146a.5.5 0 0 0 .707.708L20 4.707V8.5a.5.5 0 0 0 1 0v-5a.496.496 0 0 0-.309-.461zM4.5 2a.5.5 0 0 0 .5-.5V1h.5a.5.5 0 0 0 0-1h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5zM23.5 0h-1a.5.5 0 0 0 0 1h.5v.5a.5.5 0 0 0 1 0v-1a.5.5 0 0 0-.5-.5zM4.5 5a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-1 0v1a.5.5 0 0 0 .5.5zM7.5 1h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1zM10.5 1h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1zM13.5 1h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1zM16.5 1h1a.5.5 0 0 0 0-1h-1a.5.5 0 0 0 0 1zM20.5 0h-1a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1zM11.5 19H11v-5.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-1 0v.5H.5a.5.5 0 0 0-.5.5v10a.5.5 0 0 0 .5.5h10a.5.5 0 0 0 .5-.5V20h.5a.5.5 0 0 0 0-1zM10 23H1v-9h9v9zM14.5 19h-1a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1zM17.5 19h-1a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1zM20.5 19h-1a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1zM23.5 18a.5.5 0 0 0-.5.5v.5h-.5a.5.5 0 0 0 0 1h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM23.5 15a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 1 0v-1a.5.5 0 0 0-.5-.5zM23.5 12a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 1 0v-1a.5.5 0 0 0-.5-.5zM23.5 9a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 1 0v-1a.5.5 0 0 0-.5-.5zM23.5 6a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 1 0v-1a.5.5 0 0 0-.5-.5zM4.5 11a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-1 0v1a.5.5 0 0 0 .5.5zM4.5 8a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-1 0v1a.5.5 0 0 0 .5.5zM23.5 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 1 0v-1a.5.5 0 0 0-.5-.5z"/></g></symbol><symbol viewBox="0 0 20 20" id="expert-book"><g transform="translate(3)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M12.083 4.167a.417.417 0 0 1-.416-.417V2.5H2.083a.417.417 0 0 1 0-.833h10c.23 0 .417.186.417.416V3.75c0 .23-.186.417-.417.417"/><path d="M14.583 20h-12.5A2.086 2.086 0 0 1 0 17.917V2.083C0 .935.935 0 2.083 0H13.75c.23 0 .417.187.417.417v2.916h.416c.23 0 .417.187.417.417v15.833c0 .23-.186.417-.417.417zM.833 3.75v14.167c0 .689.561 1.25 1.25 1.25h12.084v-15H2.083c-.468 0-.901-.156-1.25-.418zM2.083.832c-.689 0-1.25.561-1.25 1.25 0 .69.561 1.25 1.25 1.25h11.25v-2.5H2.083z"/></g></symbol><symbol viewBox="0 0 20 20" id="expert-card"><g transform="translate(0 2.459)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M19.508 15.082H16.23a.328.328 0 0 1-.328-.328v-.984c0-.796-.515-1.311-1.312-1.311s-1.311.515-1.311 1.311v.984a.328.328 0 0 1-.328.328H7.049a.328.328 0 0 1-.328-.328v-.984c0-.796-.514-1.311-1.311-1.311-.797 0-1.312.515-1.312 1.311v.984a.328.328 0 0 1-.328.328H.492a.328.328 0 0 1-.328-.328V.328C.164.147.31 0 .492 0h19.016c.182 0 .328.147.328.328v14.426a.328.328 0 0 1-.328.328zm-2.95-.656h2.622V.656H.82v13.77h2.623v-.656c0-1.158.808-1.967 1.967-1.967 1.158 0 1.967.81 1.967 1.967v.656h5.246v-.656c0-1.158.81-1.967 1.967-1.967 1.158 0 1.967.81 1.967 1.967v.656z"/><path d="M10.827 9.18h6.386v.656h-6.386V9.18zM10.827 7.213h6.386v.656h-6.386v-.656zM10.827 5.246h6.386v.656h-6.386v-.656zM10.827 3.279h3.107v.655h-3.107V3.28zM9.016 9.836H2.46a.328.328 0 0 1-.328-.328V8.097c0-.074.025-.147.072-.205.04-.05.961-1.179 2.551-1.32v-.467c-.32-.192-.87-.673-.87-1.729 0-.836 0-1.981 1.982-1.981 1.981 0 1.981 1.145 1.981 1.981 0 1.041-.499 1.524-.798 1.72v.476c1.59.145 2.229 1.318 2.257 1.372.025.047.038.1.038.153v1.411a.328.328 0 0 1-.328.328zm-6.23-.656H8.69v-.992c-.149-.226-.733-.975-1.968-.975a.328.328 0 0 1-.328-.328v-.983c0-.139.088-.262.218-.309.019-.008.58-.243.58-1.217 0-.826 0-1.326-1.325-1.326-1.326 0-1.326.5-1.326 1.326 0 .992.638 1.212.644 1.214.135.044.226.17.226.312v.983a.328.328 0 0 1-.328.328c-1.239 0-2.057.757-2.295 1.008v.96z"/></g></symbol><symbol viewBox="0 0 20 20" id="expert-checklist"><g transform="translate(2.623)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M14.262 19.836H.492a.328.328 0 0 1-.328-.328V2.46c0-.181.147-.328.328-.328h1.197a.328.328 0 0 1 0 .656H.82V19.18h13.115V2.787h-.67a.328.328 0 1 1 0-.656h.998c.182 0 .328.147.328.328v17.05a.328.328 0 0 1-.328.327"/><path d="M11.64 4.098H3.114a.328.328 0 0 1-.328-.328V2.46c0-.181.147-.328.328-.328h2.407C5.674 1.16 6.475.164 7.477.164c1.002 0 1.803.995 1.955 1.967h2.207c.182 0 .328.147.328.328V3.77a.328.328 0 0 1-.328.328zm-8.197-.655h7.868v-.656h-2.18a.328.328 0 0 1-.328-.328c0-.738-.612-1.64-1.326-1.64-.714 0-1.326.902-1.326 1.64a.328.328 0 0 1-.328.328h-2.38v.656z"/><path d="M12.95 18.496H1.804a.328.328 0 0 1-.328-.328V3.77a.328.328 0 0 1 .656 0v14.07h10.492V3.77a.328.328 0 1 1 .656 0v14.398a.328.328 0 0 1-.328.328"/><path d="M10.698 7.377h-4.96a.328.328 0 0 1 0-.656h4.96a.328.328 0 1 1 0 .656M10.698 10h-4.96a.328.328 0 0 1 0-.656h4.96a.328.328 0 1 1 0 .656M10.698 12.623h-4.96a.328.328 0 1 1 0-.656h4.96a.328.328 0 1 1 0 .656M10.698 15.246h-4.96a.328.328 0 1 1 0-.656h4.96a.328.328 0 1 1 0 .656M4.184 7.377H3.77a.328.328 0 0 1 0-.656h.414a.328.328 0 0 1 0 .656M4.184 10H3.77a.328.328 0 0 1 0-.656h.414a.328.328 0 0 1 0 .656M4.184 12.623H3.77a.328.328 0 1 1 0-.656h.414a.328.328 0 1 1 0 .656M4.184 15.246H3.77a.328.328 0 1 1 0-.656h.414a.328.328 0 1 1 0 .656"/></g></symbol><symbol viewBox="0 0 20 20" id="expert-diploma"><g transform="translate(0 2.95)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M10 10.656a.329.329 0 0 1-.15-.037L.34 5.701a.327.327 0 0 1 0-.582L9.85.2a.325.325 0 0 1 .3 0l9.509 4.918a.328.328 0 0 1 0 .582l-9.509 4.918a.329.329 0 0 1-.15.037zM1.206 5.41L10 9.959l8.794-4.55L10 .862 1.206 5.41z"/><path d="M9.944 13.392c-.957 0-1.933-.139-2.981-.424a.328.328 0 0 1 .172-.633c.992.27 1.91.402 2.809.402 3.602 0 5.9-2.237 5.9-3.777V7.05a.328.328 0 1 1 .656 0v1.91c0 1.85-2.494 4.432-6.556 4.432M3.77 11.311a.328.328 0 0 1-.327-.327V7.049c0-.149.1-.28.244-.317l6.23-1.64a.328.328 0 0 1 .166.635L4.098 7.302v3.682a.328.328 0 0 1-.328.327"/><path d="M3.77 13.934c-.903 0-1.639-.735-1.639-1.639s.736-1.64 1.64-1.64c.903 0 1.639.736 1.639 1.64 0 .904-.736 1.64-1.64 1.64zm0-2.623a.985.985 0 0 0 0 1.968.985.985 0 0 0 0-1.968z"/></g></symbol><symbol viewBox="0 0 20 20" id="expert-money"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M10 20C4.486 20 0 15.514 0 10S4.486 0 10 0s10 4.486 10 10-4.486 10-10 10zM10 .833C4.945.833.833 4.945.833 10S4.945 19.167 10 19.167s9.167-4.112 9.167-9.167S15.055.833 10 .833z"/><path d="M10 14.583a2.503 2.503 0 0 1-2.5-2.5.417.417 0 1 1 .833 0c0 .92.748 1.667 1.667 1.667.92 0 1.667-.748 1.667-1.667s-.748-1.666-1.667-1.666a2.503 2.503 0 0 1-2.5-2.5c0-1.38 1.121-2.5 2.5-2.5s2.5 1.12 2.5 2.5a.417.417 0 1 1-.833 0c0-.92-.748-1.667-1.667-1.667-.92 0-1.667.747-1.667 1.667 0 .919.748 1.666 1.667 1.666 1.379 0 2.5 1.122 2.5 2.5 0 1.38-1.121 2.5-2.5 2.5"/><path d="M10 15.833a.417.417 0 0 1-.417-.416V4.583a.417.417 0 0 1 .834 0v10.834c0 .23-.187.416-.417.416"/></g></symbol><symbol viewBox="0 0 20 20" id="expert-trophy"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M4.738 20c-.013 0-.026 0-.039-.002a.416.416 0 0 1-.352-.272l-.995-2.732-2.866.485a.417.417 0 1 1-.43-.62l3.091-5.344.722.417L1.22 16.51l2.335-.395c.199-.032.392.079.461.268l.812 2.233 2.246-3.773.716.427-2.695 4.527a.417.417 0 0 1-.358.203M15.127 20a.418.418 0 0 1-.358-.203l-2.694-4.527.716-.427 2.245 3.773.813-2.233a.42.42 0 0 1 .461-.268l2.334.395-2.647-4.578.72-.417 3.092 5.345a.417.417 0 0 1-.43.62l-2.866-.486-.994 2.732a.416.416 0 0 1-.392.274"/><path d="M10 15.833c-4.365 0-7.917-3.55-7.917-7.916C2.083 3.55 5.635 0 10 0s7.917 3.551 7.917 7.917c0 4.365-3.552 7.916-7.917 7.916zm0-15a7.091 7.091 0 0 0-7.083 7.084A7.091 7.091 0 0 0 10 15a7.091 7.091 0 0 0 7.083-7.083A7.091 7.091 0 0 0 10 .833z"/><path d="M12.5 11.667a.418.418 0 0 1-.22-.064L10 10.178l-2.28 1.425a.417.417 0 0 1-.62-.467l.756-2.65L5.99 6.991a.417.417 0 0 1 .26-.742h2.242l1.135-2.27c.141-.282.605-.282.745 0l1.136 2.27h2.242a.416.416 0 0 1 .26.742l-1.866 1.493.757 2.65a.417.417 0 0 1-.401.532zM10 9.27c.077 0 .153.021.22.063l1.581.989-.535-1.874a.417.417 0 0 1 .14-.44l1.156-.925H11.25a.417.417 0 0 1-.373-.23L10 5.098l-.877 1.755a.416.416 0 0 1-.373.23H7.438l1.156.925a.416.416 0 0 1 .14.44l-.535 1.874 1.58-.989A.417.417 0 0 1 10 9.27z"/></g></symbol><symbol viewBox="0 0 33 33" id="extension"><g id="chPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="chextension"><path d="M30.263.001c.198.017.198.017.233.028-.038-.012-.038-.012-.239-.029H2.773c-.283.036-.283.036-.269.038.064-.02.064-.02.265-.037C1.244.005 0 1.214 0 2.719V30.275a2.775 2.775 0 0 0 2.773 2.776h27.484a2.774 2.774 0 0 0 2.774-2.775V2.719c.001-1.504-1.243-2.714-2.765-2.718h-.003z" id="chShape" fill="#FFF"/><path d="M30.263.972H2.773 2.77C1.776.975.97 1.756.97 2.72V30.275c0 .996.808 1.804 1.802 1.804h27.484c.996 0 1.802-.808 1.802-1.803V2.719c.001-.963-.803-1.744-1.796-1.747z" id="chShape" fill="#CCC"/><path d="M29.146 6.803H2.917V29.168c0 .537.434.973.972.973h25.257a.971.971 0 0 0 .971-.973V6.803h-.971z" id="chShape" fill="#FFF"/><path d="M13.814 11.667h-2.365c-.952 0-1.725.773-1.725 1.727v4.319c0 .953.773 1.727 1.725 1.727h2.365c.952 0 1.724-.774 1.724-1.727v-4.319c0-.954-.772-1.727-1.724-1.727zM21.585 11.667h-2.364c-.952 0-1.726.773-1.726 1.727v4.319c0 .953.774 1.727 1.726 1.727h2.364c.952 0 1.724-.774 1.724-1.727v-4.319c0-.954-.772-1.727-1.724-1.727z" id="chShape" fill="#E6B85C"/><path id="chRectangle-path" fill="#FC6" d="M7.774 13.601H25.26v11.666H7.774z"/><path d="M23.317 2.913c-.018 0-.033.01-.051.011H3.889a.97.97 0 1 0 0 1.943h19.428a.972.972 0 0 0 .972-.972l-.001-.003v-.005a.972.972 0 0 0-.97-.974zm2.914 0a.972.972 0 1 0 .971.973.972.972 0 0 0-.97-.973zm2.915 0a.972.972 0 1 0 .971.973.972.972 0 0 0-.971-.973z" id="chShape" fill="#FFF"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="facebook"><path d="M19.139 7.165A.5.5 0 0 0 18.768 7H15V5.595c0-.282.058-.605.512-.605H18.5a.5.5 0 0 0 .5-.5V.548a.5.5 0 0 0-.499-.5L14.17.035C9.373.035 9 4.107 9 5.355V7H6.5a.5.5 0 0 0-.5.5v4a.5.5 0 0 0 .5.5H9v11.5a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5V12h3.351a.499.499 0 0 0 .497-.448l.417-4a.5.5 0 0 0-.126-.387zM17.9 11h-3.4a.5.5 0 0 0-.5.5V23h-4V11.5a.5.5 0 0 0-.5-.5H7V8h2.5a.5.5 0 0 0 .5-.5V5.355c0-1.613.542-4.32 4.169-4.32L18 1.047V3.99h-2.488c-.698 0-1.512.421-1.512 1.605V7.5a.5.5 0 0 0 .5.5h3.713l-.313 3z" id="ciOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="file"><path d="M20.961 6.308a.495.495 0 0 0-.108-.162L14.854.147a.492.492 0 0 0-.162-.107A.482.482 0 0 0 14.5 0h-11a.5.5 0 0 0-.5.5v23a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5v-17a.499.499 0 0 0-.039-.192zM15 1.707L19.293 6H15V1.707zM4 23V1h10v5.5a.5.5 0 0 0 .5.5H20v16H4z" id="cjOutline_Icons"/></symbol><symbol viewBox="0 0 640 480" id="flag-ae"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="ckgreen" fill="#00732F" d="M0 0h640v160H0z"/><path id="ckwhite" fill="#FFF" d="M0 160h640v160H0z"/><path id="ckblack" fill="#000" d="M0 320h640v160H0z"/><path id="ckred" fill="#F00" d="M0 0h160v480H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ar"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#74ACDF" d="M0 0h640v480H0z"/><path fill="#FFF" d="M0 160.032h640v160.032H0z"/><path d="M391.086 239.173l-45.27-1.665c8.637-.416 13.84-5.62 22.062-4.891 8.742.832 13.738-4.06 17.172-5.1 3.434-1.145 5.412 1.249 5.932.208.52-1.04-2.186-3.226-7.077-2.497-4.891.728-6.244 4.37-16.963 3.538-9.783-.833-12.697 3.538-20.606 3.33l39.755-18.212s1.248-.52.936-1.353c-.312-.833-1.56-.312-1.56-.312l-42.462 15.714c7.806-3.642 10.72-10.51 18.525-12.904 8.43-2.602 11.135-8.95 13.841-11.344 2.706-2.29 5.516-.937 5.516-2.081.104-1.145-3.226-2.082-7.493.416-4.163 2.498-4.163 6.452-14.362 9.782-9.366 3.019-10.407 8.118-17.796 10.928L371 190.676s.937-.937.313-1.561c-.625-.624-1.561.312-1.561.312l-33.2 30.805c5.829-6.348 5.829-13.737 12.177-19.045 6.765-5.62 6.869-12.592 8.43-15.714 1.665-3.227 4.683-3.018 4.37-4.06-.415-1.04-3.85-.728-6.764 3.227s-1.353 7.597-9.47 14.466c-7.493 6.348-6.453 11.448-12.28 16.963l15.194-41.004s.52-1.248-.312-1.56c-.833-.313-1.353.936-1.353.936l-18.941 41.212c2.914-8.117.104-14.986 3.955-22.271 4.058-7.805 1.56-14.258 1.769-17.796.312-3.539 3.226-4.58 2.497-5.412-.728-.832-3.746.833-4.995 5.516-1.145 4.787 1.665 7.493-3.226 17.068-4.475 8.741-1.665 13.112-4.891 20.293l-1.666-43.71s0-1.352-.936-1.352c-.937 0-.937 1.353-.937 1.353l-1.665 45.27c-.416-8.637-5.62-13.841-4.891-22.063.832-8.742-4.06-13.737-5.1-17.171-1.145-3.435 1.249-5.412.208-5.932-1.04-.52-3.226 2.185-2.497 7.076.728 4.892 4.37 6.245 3.538 16.964-.833 9.783 3.538 12.697 3.33 20.606l-18.212-39.755s-.52-1.249-1.353-.937c-.833.313-.312 1.561-.312 1.561l15.714 42.461c-3.642-7.805-10.51-10.719-12.904-18.524-2.602-8.43-8.95-11.136-11.344-13.842-2.29-2.706-.937-5.515-2.081-5.515-1.145-.105-2.082 3.226.416 7.493 2.498 4.162 6.452 4.162 9.782 14.361 3.019 9.367 8.118 10.407 10.928 17.797l-32.054-29.765s-.937-.936-1.561-.312c-.624.624.312 1.561.312 1.561l30.805 33.199c-6.348-5.828-13.737-5.828-19.045-12.177-5.62-6.764-12.592-6.868-15.714-8.43-3.227-1.664-3.018-4.683-4.06-4.37-1.04.416-.728 3.85 3.227 6.764s7.597 1.353 14.466 9.47c6.348 7.494 11.448 6.453 16.963 12.281l-41.004-15.194s-1.248-.52-1.56.312c-.313.833.936 1.353.936 1.353l41.212 18.94c-8.117-2.913-14.986-.103-22.271-3.954-7.805-4.059-14.258-1.561-17.796-1.77-3.539-.311-4.58-3.225-5.412-2.497-.832.729.833 3.747 5.516 4.996 4.787 1.144 7.493-1.666 17.068 3.226 8.741 4.475 13.112 1.665 20.293 4.891l-43.71 1.665s-1.352 0-1.352.937 1.353.937 1.353.937l45.27 1.665c-8.637.416-13.841 5.62-22.063 4.891-8.742-.833-13.737 4.059-17.171 5.1-3.435 1.144-5.412-1.25-5.932-.209-.52 1.041 2.185 3.226 7.076 2.498 4.892-.728 6.245-4.371 16.964-3.538 9.783.832 12.697-3.539 20.606-3.33l-39.755 18.212s-1.249.52-.937 1.353c.313.832 1.561.312 1.561.312l42.461-15.715c-7.805 3.643-10.719 10.511-18.524 12.905-8.43 2.602-11.136 8.95-13.842 11.344-2.706 2.29-5.515.936-5.515 2.081-.105 1.145 3.226 2.081 7.493-.416 4.162-2.498 4.162-6.453 14.361-9.783 9.367-3.018 10.407-8.117 17.797-10.927l-29.765 32.054s-.936.936-.312 1.56c.624.625 1.561-.312 1.561-.312l33.199-30.805c-5.828 6.349-5.828 13.738-12.177 19.045-6.764 5.62-6.868 12.593-8.43 15.715-1.664 3.226-4.683 3.018-4.37 4.059.416 1.04 3.85.728 6.764-3.226 2.914-3.955 1.353-7.598 9.47-14.466 7.494-6.349 6.453-11.448 12.281-16.964l-15.194 41.004s-.52 1.249.312 1.561c.833.312 1.353-.936 1.353-.936l18.94-41.212c-2.913 8.117-.103 14.986-3.954 22.27-4.059 7.806-1.561 14.258-1.77 17.797-.311 3.538-3.225 4.579-2.497 5.411.729.833 3.747-.832 4.996-5.515 1.144-4.788-1.666-7.493 3.226-17.068 4.475-8.742 1.665-13.113 4.891-20.294l1.665 43.71s0 1.353.937 1.353.937-1.353.937-1.353l1.665-45.27c.416 8.637 5.62 13.84 4.891 22.062-.833 8.742 4.059 13.738 5.1 17.172 1.144 3.434-1.25 5.412-.209 5.932 1.041.52 3.226-2.186 2.498-7.077-.728-4.891-4.371-6.244-3.538-16.963.832-9.783-3.539-12.697-3.33-20.606l18.212 39.755s.52 1.248 1.353.936c.832-.312.312-1.56.312-1.56l-15.715-42.462c3.643 7.806 10.511 10.72 12.905 18.525 2.602 8.43 8.95 11.135 11.344 13.841 2.29 2.706.936 5.516 2.081 5.516 1.145.104 2.081-3.226-.416-7.493-2.498-4.163-6.453-4.163-9.783-14.362-3.018-9.366-8.117-10.407-10.927-17.796L369.752 291s.936.937 1.56.313c.625-.625-.312-1.561-.312-1.561l-30.805-33.2c6.349 5.829 13.738 5.829 19.045 12.177 5.62 6.765 12.593 6.869 15.715 8.43 3.226 1.665 3.018 4.683 4.059 4.37 1.04-.415.728-3.85-3.226-6.764-3.955-2.914-7.598-1.353-14.466-9.47-6.349-7.493-11.448-6.453-16.964-12.28l41.004 15.194s1.249.52 1.561-.312c.312-.833-.936-1.353-.936-1.353l-41.212-18.941c8.117 2.914 14.986.104 22.27 3.955 7.806 4.058 14.258 1.56 17.797 1.769 3.538.312 4.579 3.226 5.411 2.497.833-.728-.832-3.746-5.515-4.995-4.788-1.145-7.493 1.665-17.068-3.226-8.742-4.475-13.113-1.665-20.294-4.891l43.71-1.666s1.353 0 1.353-.936c-.104-.937-1.353-.937-1.353-.937z" fill="#F6B40E"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-at"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cmred" fill="#ED2939" d="M0 0h640v480H0z"/><path id="cmwhite" fill="#FFF" d="M0 160h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-au"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 0h640v480H0V0z" id="cnShape" fill="#00008B"/><g id="cnCommonwealth_Star" transform="translate(86 288)" fill="#FFF"><path d="M75 0l14.463 44.968 44.174-16.73-26.14 39.345 40.623 24.106-47.059 4.094 6.48 46.79L75 108.333l-32.541 34.24 6.48-46.79L1.88 91.689l40.622-24.106-26.14-39.345 44.175 16.73L75 0z" id="cnStar7"/></g><g id="cnStar_Alpha_Crucis" transform="translate(449.571 365.714)" fill="#FFF"><path d="M33 0l6.364 19.786L58.8 12.425 47.3 29.736l17.874 10.607-20.706 1.802 2.851 20.587L33 47.667 18.682 62.732l2.851-20.587L.827 40.343l17.874-10.607L7.2 12.425l19.436 7.36L33 0z" id="cnStar7"/></g><g id="cnStar_Beta_Crucis" transform="translate(368.571 175.714)" fill="#FFF"><path d="M33 0l6.364 19.786L58.8 12.425 47.3 29.736l17.874 10.607-20.706 1.802 2.851 20.587L33 47.667 18.682 62.732l2.851-20.587L.827 40.343l17.874-10.607L7.2 12.425l19.436 7.36L33 0z" id="cnStar7"/></g><g id="cnStar_Gamma_Crucis" transform="translate(447.286 45.714)" fill="#FFF"><path d="M33 0l6.364 19.786L58.8 12.425 47.3 29.736l17.874 10.607-20.706 1.802 2.851 20.587L33 47.667 18.682 62.732l2.851-20.587L.827 40.343l17.874-10.607L7.2 12.425l19.436 7.36L33 0z" id="cnStar7"/></g><g id="cnStar_Delta_Crucis" transform="translate(519.73 143.714)" fill="#FFF"><path d="M33 0l6.364 19.786L58.8 12.425 47.3 29.736l17.874 10.607-20.706 1.802 2.851 20.587L33 47.667 18.682 62.732l2.851-20.587L.827 40.343l17.874-10.607L7.2 12.425l19.436 7.36L33 0z" id="cnStar7"/></g><g id="cnStar_Epsilon_Crucis" transform="translate(492.5 240)" fill="#FFF"><path d="M19.753 0l5.16 13.847L38.54 14.94l-10.436 9.651 3.26 14.523-11.61-7.883-11.61 7.883 3.26-14.523-10.436-9.65 13.626-1.094L19.753 0z" id="cnStar5"/></g><path d="M133.333 0h53.334v80H320v80H186.667v80h-53.334v-80H0V80h133.333V0z" id="cnWhite_Cross" fill="#FFF"/><path d="M0 0h35.777L320 213.167V240h-35.777L0 26.833V0z" id="cnWhite_Diagonal" fill="#FFF"/><g id="cnWhite_Diagonal_Flipped" transform="matrix(-1 0 0 1 320 0)" fill="#FFF"><path d="M0 0h35.777L320 213.167V240h-35.777L0 26.833V0z" id="cnWhite_Diagonal"/></g><path d="M144 0h32v96h144v48H176v96h-32v-96H0V96h144V0z" id="cnRed_Cross" fill="#F00"/><path d="M0 0l106.667 80H82.815L0 17.889V0zm320 0h-23.851L189.482 80h23.851L320 0z" id="cnRed_Diagonals" fill="#F00"/><g id="cnRed_Diagonals_Rotated" transform="rotate(180 160 120)" fill="#F00"><path d="M0 0l106.667 80H82.815L0 17.889V0zm320 0h-23.851L189.482 80h23.851L320 0z" id="cnRed_Diagonals"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-be"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cored" fill="#ED2939" d="M0 0h640v480H0z"/><path id="coyellow" fill="#FAE042" d="M0 0h426.667v480H0z"/><path id="coblack" fill="#000" d="M0 0h213.333v480H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-bg"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cpwhite" fill="#FFF" d="M0 0h640v480H0z"/><path id="cpgreen" fill="#00966E" d="M0 160h640v320H0z"/><path id="cpred" fill="#D62612" d="M0 320h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-br"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 480h640V0H0v480z" fill="#00923F"/><path d="M319.242 60.326l282.815 180.017-281.739 178.884L37.501 240.343l281.74-180.017z" fill="#F9C300"/><path d="M319.78 121.479c65.614 0 118.806 53.224 118.806 118.878 0 65.655-53.192 118.878-118.807 118.878-65.615 0-118.806-53.223-118.806-118.878 0-65.654 53.191-118.878 118.806-118.878" fill="#28166F"/><path d="M431.462 281.01c-59.744-57.493-141.288-85.874-224.715-77.4 1.844-5.761 4.52-12.133 7.514-17.91 79.12-8.204 165.297 24.823 222.217 77.059a118.034 118.034 0 0 1-5.016 18.251" fill="#FFF"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ca"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="crRectangle-path-+-Rectangle-path"><path id="crRectangle-path" fill="#F00" d="M0 0h640v480H0z"/><path id="crRectangle-path" fill="#FFF" d="M160 0h320v480H160z"/></g><path d="M319.994 84.25l-25.107 46.828c-2.849 5.09-7.953 4.618-13.058 1.775l-18.177-9.412 13.548 71.927c2.849 13.14-6.292 13.14-10.803 7.459l-31.722-35.513-5.15 18.034c-.594 2.368-3.206 4.856-7.123 4.263l-40.113-8.433 10.536 38.304c2.255 8.524 4.014 12.053-2.277 14.3l-14.298 6.72 69.052 56.09c2.734 2.12 4.114 5.937 3.141 9.393l-6.043 19.833c23.776-2.74 45.08-6.864 68.867-9.403 2.1-.225 5.616 3.241 5.601 5.675l-3.15 72.66h11.56l-1.82-72.505c-.014-2.433 3.175-6.055 5.275-5.83 23.788 2.539 45.091 6.662 68.867 9.403l-6.043-19.833c-.973-3.456.407-7.272 3.14-9.393l69.053-56.09-14.298-6.72c-6.291-2.247-4.532-5.776-2.277-14.3l10.536-38.304-40.113 8.433c-3.917.593-6.529-1.895-7.123-4.263l-5.15-18.034-31.722 35.513c-4.511 5.681-13.652 5.681-10.803-7.46l13.548-71.926-18.177 9.412c-5.105 2.843-10.21 3.315-13.058-1.775L319.994 84.25z" id="crShape" fill="#F00"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ch"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="csRectangle-path" fill="#D52B1E" d="M0 0h640v480H0z"/><path d="M275 195H170v90h105v105h90V285h105v-90H365V90h-90v105z" id="csRectangle-path" fill="#FFF"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-cl"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M213.333 0H0v480h640V0H213.333z" id="ctShape" fill="#D52B1E"/><path id="ctRectangle-path" fill="#FFF" d="M0 0h640v240H0z"/><path d="M240 240H0V0h240v240z" id="ctShape" fill="#0039A6"/><path d="M141.678 127.002l35.25-25.611h-43.547l-13.477-41.438-13.477 41.438H62.879l35.25 25.61-13.476 41.39 35.25-25.61 35.252 25.61-13.477-41.39z" id="ctShape" fill="#FFF"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-co"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cured" fill="#CE1126" d="M0 0h640v480H0z"/><path id="cublue" fill="#003893" d="M0 0h640v360H0z"/><path id="cuyellow" fill="#FCD116" d="M0 0h640v240H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-cy"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FFF" d="M0 0h640v480H0z"/><path d="M305.84 401.56c-.16-.08-.16-.08-.24-.16l-.08-.08c-.24-.24-.72-.64-1.28-1.28-1.04-1.2-2.48-2.96-3.76-4.56-2.48-3.12-4.56-5.76-4.96-6.32l-.64-.8-6.24-1.92-4.56-2.08 2.4-2.72 8.32 3.6 6.24 1.28 11.52 8.48s-1.68 1.36-3.28 2.88c-.72.64-1.68 1.52-2.32 2.24-.32.32-.56.64-.72.88-.08.16-.16.32-.24.4l.72-.48.8.64-1.6.16-.08-.16zm-42.64-12.8c-5.44 0-10.8-1.52-15.92-4.48 0 0 .64-1.28 2.32-2.48 1.52-1.12 4.32-2.48 8.88-2.48h.08c5.36 0 11.92 1.84 19.52 5.44-.32.16-6.24 4-14.88 4zm-23.52-5.2c-1.04 0-1.92-.4-2.56-1.04-.48-.56-.88-1.28-1.12-2.32-.4-1.6-.32-3.2-.32-3.36.4-.16.88-.24 1.28-.32h.08c2 0 3.6 1.76 4.24 3.44.4.96.48 1.84.24 2.48-.24.64-.96 1.12-1.84 1.12zm41.36-4.8c-13.92-2-19.76-7.04-22.24-10.88-2.64-4.08-2.08-7.92-2.08-8 0 0 .88-.24 2.16-.24 3.6.08 13.04 1.92 22.16 19.12zm-28.48-2.72c-5.92 0-10.48-1.04-13.44-3.04-1.68-1.2-2.56-2.4-2.96-3.28-.4-.8-.48-1.52-.48-1.6.16-.08 2.56-1.12 6.24-1.28h.96c4.56 0 11.52 1.52 18.88 8.64-3.36.32-6.48.56-9.2.56zm-28.72-1.12c-6.24 0-14.88-1.92-20.24-7.28.08 0 5.84-1.52 12.4-1.68h1.2c5.84 0 10.32 1.12 13.36 3.36 1.04.8 1.6 1.52 1.76 2.24.08.56-.24 1.2-.88 1.68-1.36 1.04-3.76 1.52-7.12 1.6l-.48.08zm-20.32-10.4c-.8 0-1.52-.32-2-.96-.4-.48-.72-1.12-.88-2-.32-1.44-.24-2.96-.24-2.96.32-.16.64-.24.96-.24.96 0 1.6.48 2.08.96.56.56 1.04 1.28 1.36 2.08.32.8.32 1.52.16 2.08s-.64 1.04-1.44 1.04zm46.88-1.04c-1.04 0-1.92-.4-2.56-1.04-.48-.56-.88-1.28-1.12-2.32-.4-1.6-.32-3.2-.32-3.36.4-.16.88-.24 1.28-.32h.08c2 0 3.6 1.76 4.24 3.44.4.96.48 1.84.24 2.48-.24.64-.96 1.12-1.84 1.12zm-22.8-.96c-12.56-.48-19.12-4-22.4-6.96-1.84-1.68-2.88-3.28-3.36-4.32-.48-1.04-.72-1.76-.72-1.92 0 0 1.2-.4 3.12-.48h.32c4.16-.08 12.8 1.76 23.04 13.68zm13.6-1.28c-10.16-1.52-15.84-5.92-18.88-9.28-3.2-3.52-4.16-6.8-4.16-6.96 0 0 1.28-.32 3.12-.4h.88c5.12.16 14.32 2.48 19.04 16.64zm-52-4.88c-3.28 0-6.56-.4-9.6-1.12-5.28-1.36-7.6-3.36-8.56-4.8-.56-.8-.72-1.6-.8-2-.08-.48 0-.8 0-.88 0 0 3.52-.96 8.4-1.04h.56c2.32 0 4.64.24 6.88.64 8.4 1.68 12.8 8.08 12.88 8.08-.08 0-4.08 1.12-9.76 1.12zm23.52-8.48c-1.04 0-1.92-.4-2.56-1.04-.48-.56-.88-1.28-1.12-2.32-.4-1.6-.32-3.2-.32-3.36.4-.16.88-.24 1.28-.32h.08c2 0 3.6 1.76 4.24 3.44.4.96.4 1.76.16 2.4-.16.72-.88 1.2-1.76 1.2zm-17.68-2.48c-.08 0-4.8-1.2-9.6-4.16-4.4-2.72-9.84-7.6-10.56-15.04 0 0 .4-.08 1.04-.16h.24c1.36 0 4 .4 7.28 2.88 4.32 3.2 8.16 8.72 11.6 16.48zm11.6-.4s-3.36-1.36-7.6-4.88c-3.92-3.28-9.36-9.2-13.36-18.64 0 0 .88-.48 2.32-.56h.64c1.92.08 4.88.88 8.16 4.4 3.68 4 6.96 10.64 9.84 19.68zm-29.92-.88c-3.84 0-5.2-2.08-5.6-2.96-.64-1.44-.48-2.96-.48-2.96a7.89 7.89 0 0 1 1.92-.24h.16c3.04 0 5.44 1.52 6.48 3.04.24.32.8 1.36.32 2.16-.4.64-1.36.96-2.8.96zm-8.56-10.8c-2.16 0-5.44-.16-8.88-.8-3.44-.64-5.36-3.52-6.4-5.92-1.12-2.56-1.44-4.96-1.44-5.04 10.64.32 15.68 3.44 18 6 2.4 2.64 2.56 5.36 2.56 5.52-.08.16-1.6.24-3.84.24zm11.04-11.04s-1.2-1.52-2.4-3.36c-1.28-1.92-2.4-4-2.4-5.68 0-1.6-.4-5.04-.64-6.88-.32-2.4-.56-4.4-.64-4.64.24.08 6.64 2.48 6.64 8.48.08 6-.56 12-.56 12.08zm-8.24-.56h-.16c-1.92-.32-5.2-1.76-8.88-3.84-4.08-2.32-7.36-4.8-9.28-7.04-1.76-2-2.8-5.2-3.12-9.36-.24-2.96.08-5.52.08-5.76.32-.08.72-.16 1.04-.16 1.44 0 2.88.64 4.96 2.08 1.6 1.12 3.36 2.56 5.2 4.4 3.2 3.2 5.76 6.32 5.76 6.4.24.4 2 3.68 3.44 6.88.88 2 1.44 3.52 1.6 4.56.08.64.16 1.04 0 1.44-.08.16-.16.32-.32.32-.08.08-.16.08-.32.08z" fill="#435125"/><path d="M285.662 401.56c.16-.08.16-.08.24-.16l.08-.08c.24-.24.72-.64 1.28-1.28 1.04-1.2 2.48-2.96 3.76-4.56 2.48-3.12 4.56-5.76 4.96-6.32l.64-.8 6.24-1.92 4.56-2.08-2.4-2.72-8.32 3.6-6.24 1.28-11.52 8.32s1.68 1.36 3.28 2.88c.72.64 1.68 1.52 2.32 2.24.32.32.56.64.72.88.08.16.16.32.24.4l-.72-.48-.8.64 1.6.16h.08zm42.64-12.8c5.44 0 10.8-1.52 15.92-4.48 0 0-.64-1.28-2.32-2.48-1.52-1.12-4.32-2.48-8.88-2.48h-.08c-5.36 0-11.92 1.84-19.52 5.44.32.16 6.24 4 14.88 4zm23.52-5.2c1.04 0 1.92-.4 2.56-1.04.48-.56.88-1.28 1.12-2.32.4-1.6.32-3.2.32-3.36-.4-.16-.88-.24-1.28-.32h-.08c-2 0-3.6 1.76-4.24 3.44-.4.96-.48 1.84-.24 2.48.16.64.96 1.12 1.84 1.12zm-41.36-4.8c13.92-2 19.76-7.04 22.24-10.88 2.64-4.08 2.08-7.92 2.08-8 0 0-.88-.24-2.16-.24-3.6.08-13.04 1.92-22.16 19.12zm28.48-2.72c5.92 0 10.48-1.04 13.44-3.04 1.68-1.2 2.56-2.4 2.96-3.28.4-.8.48-1.52.48-1.6-.16-.08-2.56-1.12-6.24-1.28h-.96c-4.56 0-11.52 1.52-18.88 8.64 3.36.32 6.4.56 9.2.56zm28.72-1.12c6.24 0 14.88-1.92 20.24-7.28-.08 0-5.84-1.52-12.4-1.68h-1.2c-5.84 0-10.32 1.12-13.36 3.36-1.04.8-1.6 1.52-1.76 2.24-.08.56.24 1.2.88 1.68 1.36 1.04 3.76 1.52 7.12 1.6l.48.08zm20.24-10.4c.8 0 1.52-.32 2-.96.4-.48.72-1.12.88-2 .32-1.44.24-2.96.24-2.96a2.13 2.13 0 0 0-.96-.24c-.96 0-1.6.48-2.08.96-.56.56-1.04 1.28-1.36 2.08-.32.8-.32 1.52-.16 2.08s.72 1.04 1.44 1.04zm-46.8-1.04c1.04 0 1.92-.4 2.56-1.04.48-.56.88-1.28 1.12-2.32.4-1.6.32-3.2.32-3.36-.4-.16-.88-.24-1.28-.32h-.08c-2 0-3.6 1.76-4.24 3.44-.4.96-.48 1.84-.24 2.48.24.64.96 1.12 1.84 1.12zm22.8-.96c12.56-.48 19.12-4 22.4-6.96 1.84-1.68 2.88-3.28 3.36-4.32.48-1.04.72-1.76.72-1.92 0 0-1.2-.4-3.12-.48h-.32c-4.16-.08-12.8 1.76-23.04 13.68zm-13.68-1.28c10.16-1.52 15.84-5.92 18.88-9.28 3.2-3.52 4.16-6.8 4.16-6.96 0 0-1.28-.32-3.12-.4h-.88c-5.04.16-14.24 2.48-19.04 16.64zm52-4.88c3.28 0 6.56-.4 9.6-1.12 5.28-1.36 7.6-3.36 8.56-4.8.56-.8.72-1.6.8-2 .08-.48 0-.8 0-.88 0 0-3.52-.96-8.4-1.04h-.56c-2.32 0-4.64.24-6.88.64-8.4 1.68-12.8 8.08-12.88 8.08.16 0 4.16 1.12 9.76 1.12zm-23.52-8.48c1.04 0 1.92-.4 2.56-1.04.48-.56.88-1.28 1.12-2.32.4-1.6.32-3.2.32-3.36-.4-.16-.88-.24-1.28-.32h-.08c-2 0-3.6 1.76-4.24 3.44-.4.96-.4 1.76-.16 2.4.16.72.88 1.2 1.76 1.2zm17.68-2.48c.08 0 4.8-1.2 9.6-4.16 4.4-2.72 9.84-7.6 10.56-15.04 0 0-.4-.08-1.04-.16h-.24c-1.36 0-4 .4-7.28 2.88-4.24 3.2-8.16 8.72-11.6 16.48zm-11.52-.4s3.36-1.36 7.6-4.88c3.92-3.28 9.36-9.2 13.36-18.64 0 0-.88-.48-2.32-.56h-.64c-1.92.08-4.88.88-8.16 4.4-3.68 4-7.04 10.64-9.84 19.68zm29.92-.88c3.84 0 5.2-2.08 5.6-2.96.64-1.44.48-2.96.48-2.96a7.89 7.89 0 0 0-1.92-.24h-.16c-3.04 0-5.44 1.52-6.48 3.04-.24.32-.8 1.36-.32 2.16.4.64 1.36.96 2.8.96zm8.56-10.8c2.16 0 5.44-.16 8.88-.8 3.44-.64 5.36-3.52 6.4-5.92 1.12-2.56 1.44-4.96 1.44-5.04-10.64.32-15.68 3.44-18 6-2.4 2.64-2.56 5.36-2.56 5.52.08.16 1.52.24 3.84.24zm-11.12-11.04s1.2-1.52 2.4-3.36c1.28-1.92 2.4-4 2.4-5.68 0-1.6.4-5.04.64-6.88.32-2.4.56-4.4.64-4.64-.24.08-6.64 2.48-6.64 8.48s.56 12 .56 12.08zm8.32-.56h.16c1.92-.32 5.2-1.76 8.88-3.84 4.08-2.32 7.36-4.8 9.28-7.04 1.76-2 2.8-5.2 3.12-9.36.24-2.96-.08-5.52-.08-5.76-.32-.08-.72-.16-1.04-.16-1.44 0-2.88.64-4.96 2.08-1.6 1.12-3.36 2.56-5.2 4.4-3.2 3.2-5.76 6.32-5.76 6.4-.24.4-2 3.68-3.44 6.88-.88 2-1.44 3.52-1.6 4.56-.08.64-.16 1.04 0 1.44.08.16.16.32.32.32.08.08.16.08.32.08z" fill="#435125"/><path d="M515.92 79.172c-67.812 25.888-133.888 75.565-217.08 68.64-20.465-1.704-47.224.98-65.64-12 4.003 14.486 7.336 41.16-8.88 49.92-12.694 6.857-27.42-9.79-41.84-6.6-20.672 4.574-32.088 48.155-58.48 17.48 4.899 45.665 19.127 67.95 62.72 85.6 18.401 4.854 49.996-11.766 49.2 18.4 2.521.458 14.381.543 16.64.08-18.348-27.706 81.83-37.692 98.48-53.04 9.548-8.802.75-19.71 14.72-26.32 11.644-5.509 19.406 6.604 28.24 6.72 13.69.18 23.15-9.896 38.16-4.08-6.615-12.548-21.864-28.624-33.28-40.08-1.968-24.064 25.851-37.935 43.88-51 18.92-13.71 67.188-32.968 73.16-53.72" fill="#D27727"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-cz"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cwred" fill="#D7141A" d="M0 0h640v480H0z"/><path id="cwwhite" fill="#FFF" d="M0 0h640v240H0z"/><path d="M320 240L0 0v480l320-240z" id="cwblue" fill="#11457E"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-de"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cxblack_stripe" fill="#000" d="M0 0h640v480H0z"/><path id="cxred_stripe" fill="#D00" d="M0 160h640v320H0z"/><path id="cxgold_stripe" fill="#FFCE00" d="M0 320h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-dk"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="cyred" fill="#C60C30" d="M0 0h640v480H0z"/><path id="cywhite" fill="#FFF" d="M207.568 0h69.189v480h-69.189z"/><path id="cywhite" fill="#FFF" d="M0 205.714h640v68.571H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ec"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#ED1C24" d="M0 0h640v480H0z"/><path fill="#034EA2" d="M0 0h640v360H0z"/><path fill="#FD0" d="M0 0h640v240H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ee"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="daRectangle-path" fill="#FFF" d="M0 0h640v480H0z"/><path id="daRectangle-path" fill="#000" d="M0 0h640v320H0z"/><path id="daRectangle-path" fill="#4891D9" d="M0 0h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-eg"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#000" d="M0 0h640v480H0z"/><path fill="#FFF" d="M0 0h640v320H0z"/><path fill="#CE1126" d="M0 0h640v160H0z"/><path d="M320.14 316c-16.75 0-31.768-1.414-40.172-3.783-4.136-.757-4.37-2.966-4.382-5.378-1.965-.869-2.39-2.606-2.705-3.896-.246-1.004-.402-1.439-.743-1.592a2.64 2.64 0 0 1-.565-.093l-4.578-1.247h4.745c.21 0 .4.021.57.06.615-.056 1.117-.66 1.813-1.559.816-1.053 1.806-2.332 3.413-2.332h.005c.027-.256.069-.502.126-.74l-.095-.19c-.75-1.501-.591-3.565.396-5.138.839-1.337 2.163-2.12 3.66-2.176.868-.655 1.93-.921 2.888-.71 1.079.365 2.18.709 3.294 1.028l4.67-16.555-.01-.036.029-.029 1.015-3.596-2.03 1.644-17.115 15.529-2.063 2.116.012-.256-.51.462-.005.126-7.715 6.945.002-.056-.09.082 3.985-93.931c.192-4.78 1.733-8.003 4.582-9.579 5.608-3.104 14.434 1.27 17.969 3.294 4.547 2.909 9.639 4.387 15.229 4.436 1.87-2.678 4.49-6.902 5.767-11.109 2.092-7.028 1.992-12.366.813-14.004-.942-1.365-1.875-2.241-2.781-2.616-.925-.35-1.844-.162-2.791.584l-1.611 1.27.376-1.204c-.431-.321-.496-.971-.518-1.202-.13-1.306.309-4.096 1.64-5.008 1.274-.891 3.623-1.034 6.973-.424.496.086 1.009.188 1.532.303a1.68 1.68 0 0 1 .336-.62c.38-.442.968-.654 1.744-.653.054 0 .128 0 .204.004 3.566.17 8.848 1.653 10.58 3.385.46.46.894 1.149 1.329 2.107l.408.898h-.117c.81 2.483 1.136 6.038.966 10.588-.312 6.61 1.542 14.076 3.662 17.765 5.648-.011 10.809-1.507 15.439-4.483 4.448-2.526 12.658-6.287 18.019-3.309 2.834 1.575 4.368 4.797 4.559 9.578l3.987 93.945-.432-.402-.773-.645-6.6-5.94-.011-.272-.512-.477.018.414-4.116-4.219-4.696-4.359.012.275-7.79-7.495.012.259-4.626-3.745 1.042 3.624-.01.035 4.668 16.546a65.1 65.1 0 0 0 3.145-.998c1.018-.227 2.09.035 2.957.688 1.515.03 2.859.798 3.717 2.136 1.01 1.58 1.18 3.661.422 5.18l-.095.191c.057.237.099.483.126.739h.005c1.608 0 2.597 1.278 3.413 2.332.696.899 1.198 1.503 1.812 1.559.172-.039.36-.06.57-.06h4.747l-4.58 1.248a2.69 2.69 0 0 1-.564.092c-.341.153-.497.588-.743 1.592-.316 1.291-.74 3.027-2.704 3.896-.014 2.41-.242 4.618-4.276 5.39-8.506 2.357-23.582 3.771-40.28 3.771" fill="#BE932D"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-es"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#C60B1E" d="M0 0h640v480H0z"/><path fill="#FFC400" d="M0 120h640v240H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-et"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 480h640V0H0v480z" fill="#DA121A"/><path d="M0 320h640V0H0v320z" fill="#FCDD08"/><path d="M0 160h640V0H0v160z" fill="#068930"/><g transform="translate(160 80)"><path d="M160 0c88.365 0 160 71.635 160 160s-71.635 160-160 160S0 248.365 0 160 71.635 0 160 0" fill="#0F47AF"/><path d="M196.101 113.713l40.754-56.092-3.236-2.35-40.754 56.091 3.236 2.351zm19.076 66.318l65.94 21.425 1.236-3.804-65.94-21.425-1.236 3.804zM158 218.667V288h4v-69.333h-4zm-54.413-42.44l-65.94 21.425 1.236 3.805 65.94-21.426-1.236-3.804zm23.548-64.865L86.38 55.27l-3.236 2.351 40.754 56.092 3.236-2.351zm19.549 9.084l-3.466 10.667h98.883l14.681-10.667h-68.044L160 32l-5.608 17.258 23.13 71.187h-30.838zm46.82 14.667h-11.217l30.558 94.044 14.68 10.666L206.5 175.11l75.236-54.663H263.59l-60.556 43.996-9.53-29.33zm-24.43 67.186l24.949-18.126-3.467-10.667-79.998 58.123-5.607 17.258L160 208.891l75.235 54.663-5.608-17.259-60.554-43.996zm-21.55-2.472l9.073-6.592-79.999-58.122H58.452l55.05 39.996-28.738 88.445 14.681-10.667 23.13-71.186 24.949 18.126zm-29.257-39.385l9.073 6.592 30.557-94.044-5.608-17.26-21.026 64.716H38.264l14.683 10.666h74.85l-9.53 29.33z" fill="#FCDD08"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-fi"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="deRectangle-path" fill="#FFF" d="M0 0h640v480H0z"/><path id="deRectangle-path" fill="#003580" d="M0 170h640v100H0z"/><path id="deRectangle-path" fill="#003580" d="M200 0h100v480H200z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-fr"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="dfred" fill="#ED2939" d="M0 0h640v480H0z"/><path id="dfwhite" fill="#FFF" d="M0 0h426.667v480H0z"/><path id="dfblue" fill="#002395" d="M0 0h213.333v480H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ge"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="dgRectangle-path" fill="#FFF" d="M0 0h640v480H0z"/><path d="M277.333 0v192H0v96h277.333v192h85.334V288H640v-96H362.667V0h-85.334z" id="dgShape" fill="#F00"/><g id="dgGroup" transform="translate(97 55)" fill="#F00"><path d="M79.108 40c0-4.734.275-9.468.892-14.065-9.605 1.784-19.417 3.019-29.434 3.499.48-10.017 1.647-19.829 3.5-29.434C49.467.549 44.802.892 40 .892 35.197.892 30.532.617 25.935 0c1.784 9.605 3.019 19.417 3.499 29.434-10.017-.48-19.829-1.647-29.434-3.5C.549 30.533.892 35.198.892 40c0 4.803-.275 9.468-.892 14.065 9.605-1.784 19.417-3.019 29.434-3.499-.48 10.017-1.647 19.829-3.5 29.434 4.598-.549 9.263-.892 14.066-.892 4.803 0 9.468.275 14.065.892-1.784-9.605-3.019-19.417-3.499-29.434 10.017.48 19.829 1.647 29.434 3.5-.549-4.598-.892-9.263-.892-14.066zM444.193 40c0-4.734.274-9.468.891-14.065-9.605 1.784-19.416 3.019-29.434 3.499.48-10.017 1.647-19.829 3.5-29.434-4.597.549-9.263.892-14.066.892-4.802 0-9.468-.275-14.065-.892 1.784 9.605 3.02 19.417 3.5 29.434-10.018-.48-19.83-1.647-29.435-3.5.55 4.598.892 9.263.892 14.066 0 4.803-.274 9.468-.892 14.065 9.606-1.784 19.417-3.019 29.434-3.499-.48 10.017-1.646 19.829-3.499 29.434 4.597-.549 9.263-.892 14.065-.892 4.803 0 9.469.275 14.066.892-1.784-9.605-3.02-19.417-3.5-29.434 10.018.48 19.829 1.647 29.434 3.5-.617-4.598-.891-9.263-.891-14.066zM444.193 330.72c0-4.734.274-9.468.891-14.065-9.605 1.784-19.416 3.019-29.434 3.499.48-10.017 1.647-19.829 3.5-29.434-4.597.549-9.263.892-14.066.892-4.802 0-9.468-.275-14.065-.892 1.784 9.605 3.02 19.417 3.5 29.434-10.018-.48-19.83-1.647-29.435-3.5.55 4.598.892 9.263.892 14.066 0 4.803-.274 9.468-.892 14.065 9.606-1.784 19.417-3.019 29.434-3.499-.48 10.017-1.646 19.829-3.499 29.434 4.597-.549 9.263-.892 14.065-.892 4.803 0 9.469.275 14.066.892-1.784-9.605-3.02-19.417-3.5-29.434 10.018.48 19.829 1.647 29.434 3.5-.617-4.666-.891-9.332-.891-14.066zM79.18 330.72c0-4.734.274-9.468.891-14.065-9.605 1.784-19.417 3.019-29.434 3.499.48-10.017 1.647-19.829 3.5-29.434-4.598.549-9.263.892-14.066.892-4.803 0-9.468-.275-14.065-.892 1.784 9.605 3.019 19.417 3.5 29.434-10.018-.48-19.83-1.647-29.435-3.5.549 4.598.892 9.263.892 14.066 0 4.803-.274 9.468-.892 14.065 9.606-1.784 19.417-3.019 29.434-3.499-.48 10.017-1.647 19.829-3.5 29.434 4.598-.549 9.263-.892 14.066-.892 4.803 0 9.468.275 14.065.892-1.784-9.605-3.019-19.417-3.499-29.434 10.017.48 19.829 1.647 29.434 3.5-.617-4.666-.892-9.332-.892-14.066z" id="dgShape"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-gr"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="dhRectangle-path" fill="#0D5EAF" d="M0 0h640v480H0z"/><path d="M106.667 106.667V0H160v106.667h106.667V160H160v106.667h-53.333V160H0v-53.333h106.667zm532.835 0V53.333H266.667v53.334h372.835zM266.667 213.333h372.835V160H266.667v53.333zM0 320h639.502v-53.333H0V320zm0 106.667h639.502v-53.334H0v53.334z" id="dhShape" fill="#FFF"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-gt"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#4997D0" d="M0 0h640v480H0z"/><path fill="#FFF" d="M192 0h256v480H192z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-hk"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#DE2910" d="M0 0h640v480H0z"/><g transform="translate(184 103)"><g fill="#FFF"><path d="M128.8 140.72c-18.56-14.48-13.92-42.24 9.28-52.64 14.08-6.32 25.44-32.4 15.04-48.64-9.28-14.48-6.96-30.08 9.36-38.48C81.92-4.56 44.56 105.12 128.8 140.72z"/><path d="M128.88 140.72c8-22.08 35.92-26.24 52.96-7.44 10.4 11.44 38.72 14.24 50.88-.72 10.88-13.36 26.48-15.92 39.44-2.96-19.6-78.32-135.44-79.92-143.28 11.12z"/><path d="M128.88 140.8c23.52.8 36.08 26 23.44 48.08-7.68 13.44-1.52 41.2 16.4 48.16 16 6.24 23.28 20.24 15.04 36.64 68.4-42.88 34.16-153.52-54.88-132.88z"/><path d="M90.32 178c-15.12-3.12-39.68 11.28-40.72 30.48-.96 17.2-12.08 28.4-30.16 25.6C81.36 285.92 176 219.2 128.8 140.88c6.48 22.56-13.6 42.32-38.48 37.12z"/><path d="M128.72 140.8c-19.52 13.12-44.48.16-47.2-25.12-1.68-15.36-22.96-34.24-41.6-29.36-16.64 4.4-30.8-2.72-33.68-20.8-30.16 74.96 62.64 144.4 122.48 75.28z"/></g><g transform="translate(33.6 44.8)" fill="#DE2910"><path d="M84.16 15.52l1.76 8.64 4.72-7.44 8.72 1.04-5.6-6.8 3.68-8-8.16 3.2L82.8.24l.56 8.8-7.76 4.24 8.56 2.24zM178.8 62.56l3.68-8-8.24 3.28-6.48-6 .56 8.8-7.68 4.32 8.56 2.16 1.68 8.64 4.72-7.36 8.8.96-5.6-6.8zM159.68 151.36l-8.24 3.28-6.48-6 .56 8.8-7.68 4.32 8.48 2.16 1.76 8.72 4.72-7.44 8.72 1.04-5.6-6.8 3.76-8.08z"/><path d="M153.04 147.04c-1.04-16-8.88-30.88-21.44-40.88-10.72-8.56-23.44-12.64-35.12-11.28 2.16-10.88 9.84-21.44 20.64-28.64 12.96-8.48 28.96-11.2 43.84-7.44l.48-2c-15.52-3.92-32.08-1.12-45.52 7.76-11.44 7.52-19.28 18.4-21.6 29.92-9.68-5.44-17.36-16-20.8-28.48-4.08-14.96-1.76-30.96 6.48-44l-1.76-1.12c-8.48 13.52-10.96 30.16-6.72 45.68 3.6 13.2 11.52 24 21.76 29.76-8.16 7.52-20.56 11.6-33.52 10.96-15.44-.72-30-7.92-39.84-19.76l-1.6 1.36c10.24 12.32 25.36 19.76 41.36 20.48 13.68.64 26.4-3.52 35.04-11.52 4.64 10.08 4.64 23.12.08 35.28-5.44 14.48-16.8 26.08-31.12 31.84l.8 1.92c14.88-5.92 26.64-18 32.32-33.04 4.88-12.88 4.8-26.16-.16-36.88 11.04-1.28 23.44 2.72 33.6 10.8 12.08 9.68 19.6 24.08 20.64 39.44l2.16-.16zM95.12 96l.08-.08V96h-.08z"/><path d="M60.48 159.6l-8.16 3.2-6.48-6 .56 8.8-7.68 4.32 8.48 2.24 1.76 8.64 4.72-7.44 8.72 1.04-5.6-6.8 3.68-8zM18.4 75.84l3.68-8-8.16 3.28-6.48-6 .48 8.8-7.68 4.32L8.8 80.4l1.68 8.64 4.8-7.44L24 82.64l-5.6-6.8z"/></g></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-hr"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#171796" d="M0 0h640v480H0z"/><path fill="#FFF" d="M0 0h640v320H0z"/><path fill="#F00" d="M0 0h640v160H0z"/><g transform="translate(190 49)"><path d="M129.816 346c59.568 0 108.304-48.8 108.304-108.441v-128.86H21.509v128.86C21.509 297.203 70.247 346 129.813 346h.003z" id="dkShape" fill="#F00"/><path d="M129.816 344.262c58.433 0 106.238-47.869 106.238-106.373V110.787H23.574V237.89c0 58.507 47.808 106.373 106.242 106.373" id="dkShape" fill="#FFF"/><path d="M191.076 249.717v44.972H150.19v-44.974h40.885l-.002-44.975h40.85v32.857c0 4.098-.254 8.14-.727 12.117v.003h-40.121zm-81.773 44.972H68.42v-44.974h40.885v44.974h40.883v43.156a101.52 101.52 0 0 1-13.32 1.82l-.003-.002a118.8 118.8 0 0 1-14.28 0c-4.51-.314-8.947-.922-13.282-1.812V294.69zM68.417 114.786H27.532v44.977h40.885v-44.977zm0 89.951h40.885v-44.974H68.417v44.974zm-40.885 32.901c0 4.085.253 8.113.723 12.076h40.162v-44.977H27.532v32.901zm122.659-32.9h-40.888v44.977h40.888v-44.978zm40.885 114.554a103.608 103.608 0 0 0 23.344-24.6h-23.344v24.6zM45.04 294.69a103.574 103.574 0 0 0 23.381 24.63v-24.63H45.039zm105.152-89.952h40.885v-44.974H150.19v44.974zm0-89.951h-40.885v44.977h40.885v-44.977zm81.732 0h-40.847v44.977h40.847v-44.977z" fill="#F00"/><path d="M234.212 107.38l25.35-57.537-19.313-31.227-31.998 11.861-22.466-25.714L156.18 21.75 129.785.104 103.39 21.75 73.786 4.763 51.318 30.475l-32-11.862L0 49.848l25.318 57.55c31.902-14.46 67.276-22.515 104.47-22.515 37.178 0 72.535 8.05 104.43 22.497h-.006z" fill="#FFF"/><path d="M52.022 33.016l-.046.055-31.732-11.765L2.486 50.014l6.802 15.485 17.232 39.166a254.663 254.663 0 0 1 40.14-13.901L52.025 33.019l-.003-.003z" fill="#0093DD"/><path d="M103.664 24.374l-.054.044L74.254 7.576l-22.232 25.44L66.657 90.76a254.86 254.86 0 0 1 41.922-7.011l-4.917-59.375h.002z" fill="#171796"/><path d="M63.027 76.43a269.248 269.248 0 0 1 44.334-7.415l-1.243-15.009a284.79 284.79 0 0 0-46.794 7.824l3.7 14.6h.003zM55.67 47.408a298.994 298.994 0 0 1 49.218-8.23l-1.221-14.735a313.808 313.808 0 0 0-51.631 8.634l3.633 14.331z" fill="#F00"/><path d="M156.022 24.385l-.063.036-26.177-21.463-26.12 21.419 4.917 59.375a257.222 257.222 0 0 1 21.203-.887c7.173 0 14.275.311 21.3.895l4.937-59.375h.003z" fill="#0093DD"/><path d="M207.662 33.046l-.07.026-22.277-25.497-29.293 16.81-4.94 59.375a254.547 254.547 0 0 1 41.92 7.026l14.657-57.737.003-.003z" fill="#171796"/><path d="M233.01 104.646l24.072-54.63-17.757-28.707-31.666 11.74L193 90.785a254.408 254.408 0 0 1 40.006 13.864l.003-.003z" fill="#0093DD"/><path d="M202.312 54.114a291.882 291.882 0 0 1 45.946 15.923l-9.288 21.087a268.852 268.852 0 0 0-42.33-14.667l5.672-22.343z" fill="#FFF"/><path d="M240.463 87.737l6.205-14.081a288.234 288.234 0 0 0-45.324-15.708l-3.658 14.405a273.555 273.555 0 0 1 42.992 14.9l-.215.484z" fill="#F00"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-id"><g fill-rule="evenodd" stroke-width="1pt"><path fill="#e70011" d="M0 0h639.958v248.947H0z"/><path fill="#fff" d="M0 240h639.958v240H0z"/></g></symbol><symbol viewBox="0 0 640 482" id="flag-ie"><g transform="translate(0 1)" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#169B62" d="M0 0h213.333v480H0z"/><path fill="#FFF" d="M213.333 0h213.333v480H213.333z"/><path fill="#FF883E" d="M426.667 0H640v480H426.667z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-il"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FFF" d="M0 0h640v480H0z"/><path fill="#0038B8" d="M0 45h640v75H0zM0 360h640v75H0z"/><g transform="translate(230 135)" fill="#0038B8"><path d="M82.855 13.452L7.145 144.587 0 156.962H180l-7.145-12.375-75.71-131.135L90 1.077l-7.145 12.375zm14.29 8.25h-14.29l75.71 131.135 7.146-12.375H14.289l7.145 12.375 75.71-131.135z"/><path d="M82.855 196.548L7.145 65.413 0 53.038H180l-7.145 12.375-75.71 131.135L90 208.923l-7.145-12.375zm14.29-8.25h-14.29l75.71-131.135 7.146 12.375H14.289l7.145-12.375 75.71 131.135z"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-in"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#F93" d="M0 0h640v480H0z"/><path fill="#FFF" d="M0 160h640v160H0z"/><path fill="#128807" d="M0 320h640v160H0z"/><g transform="translate(256 176)" fill="#008"><path d="M100.262 106.67a2.796 2.796 0 0 0-3.876-.464 2.797 2.797 0 0 0-.553 3.867 55.94 55.94 0 0 1-7.844 4.54 2.796 2.796 0 0 0-3.63-1.463 2.797 2.797 0 0 0-1.533 3.602 55.597 55.597 0 0 1-8.755 2.343 2.796 2.796 0 0 0-3.127-2.35 2.796 2.796 0 0 0-2.412 3.072c-1.495.12-3.006.183-4.532.183-1.526 0-3.036-.064-4.531-.183a2.796 2.796 0 0 0-2.413-3.072 2.796 2.796 0 0 0-3.127 2.35 55.58 55.58 0 0 1-8.755-2.342 2.797 2.797 0 0 0-1.533-3.603 2.797 2.797 0 0 0-3.63 1.463 55.964 55.964 0 0 1-7.844-4.54 2.796 2.796 0 0 0-.553-3.867 2.795 2.795 0 0 0-3.876.464 56.28 56.28 0 0 1-3.336-3.072 56.26 56.26 0 0 1-3.072-3.336 2.796 2.796 0 0 0 .463-3.876 2.796 2.796 0 0 0-3.867-.553 55.936 55.936 0 0 1-4.539-7.844 2.796 2.796 0 0 0 1.462-3.63 2.796 2.796 0 0 0-3.602-1.532 55.596 55.596 0 0 1-2.342-8.756 2.797 2.797 0 0 0 2.35-3.127 2.796 2.796 0 0 0-3.072-2.413A56.594 56.594 0 0 1 8 64c0-1.525.063-3.036.183-4.531a2.796 2.796 0 0 0 3.072-2.413 2.797 2.797 0 0 0-2.35-3.128 55.612 55.612 0 0 1 2.342-8.755 2.796 2.796 0 0 0 3.602-1.532 2.796 2.796 0 0 0-1.462-3.63 55.997 55.997 0 0 1 4.54-7.844 2.795 2.795 0 0 0 3.866-.553 2.796 2.796 0 0 0-.463-3.876 56.104 56.104 0 0 1 3.072-3.336 56.46 56.46 0 0 1 3.336-3.073 2.795 2.795 0 0 0 3.876.464 2.796 2.796 0 0 0 .553-3.867 55.961 55.961 0 0 1 7.844-4.539 2.797 2.797 0 0 0 3.63 1.462 2.797 2.797 0 0 0 1.533-3.602 55.581 55.581 0 0 1 8.755-2.342 2.797 2.797 0 0 0 3.127 2.35 2.796 2.796 0 0 0 2.413-3.072A56.865 56.865 0 0 1 63.999 8c1.527 0 3.038.063 4.533.183a2.796 2.796 0 0 0 2.412 3.072 2.797 2.797 0 0 0 3.127-2.35 55.596 55.596 0 0 1 8.755 2.342 2.796 2.796 0 0 0 1.533 3.602 2.797 2.797 0 0 0 3.63-1.462 55.936 55.936 0 0 1 7.844 4.54 2.796 2.796 0 0 0 .553 3.866 2.796 2.796 0 0 0 3.876-.464 56.63 56.63 0 0 1 3.336 3.073 56.285 56.285 0 0 1 3.072 3.336 2.796 2.796 0 0 0-.464 3.876 2.796 2.796 0 0 0 3.867.553 55.948 55.948 0 0 1 4.54 7.844 2.797 2.797 0 0 0-1.463 3.63 2.797 2.797 0 0 0 3.603 1.532 55.553 55.553 0 0 1 2.342 8.755 2.797 2.797 0 0 0-2.35 3.128 2.796 2.796 0 0 0 3.072 2.413c.12 1.495.183 3.006.183 4.53 0 1.527-.063 3.038-.183 4.532a2.796 2.796 0 0 0-3.072 2.413 2.797 2.797 0 0 0 2.35 3.127 55.537 55.537 0 0 1-2.342 8.756 2.797 2.797 0 0 0-3.603 1.532 2.796 2.796 0 0 0 1.463 3.63 55.887 55.887 0 0 1-4.54 7.844 2.796 2.796 0 0 0-3.867.553 2.797 2.797 0 0 0 .464 3.876 56.442 56.442 0 0 1-3.072 3.336 56.447 56.447 0 0 1-3.336 3.072M64 0C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.346 0 64-28.654 64-64 0-35.346-28.654-64-64-64"/><path d="M72.305 71.495c.398-.44.764-.91 1.09-1.41l9.044 6.778L112.497 92 84.36 73.537l-10.392-4.445c.269-.526.502-1.073.686-1.643l10.487 4.203 32.952 6.842-31.959-10.551-11.182-1.603c.122-.573.19-1.165.22-1.767L86.4 65.92 120 64l-33.6-1.92-11.23 1.348a11.197 11.197 0 0 0-.22-1.768l11.182-1.603 31.959-10.551-32.952 6.842-10.487 4.203a11.082 11.082 0 0 0-.686-1.643l10.392-4.445L112.497 36 82.44 51.137l-9.045 6.777c-.325-.5-.69-.969-1.089-1.41l8.892-6.986 22.401-25.116-25.116 22.401-6.987 8.892c-.44-.398-.91-.765-1.409-1.09l6.777-9.044L92 15.503 73.537 43.64l-4.445 10.392a11.082 11.082 0 0 0-1.643-.686l4.203-10.487 6.842-32.952-10.55 31.958L66.34 53.05a11.197 11.197 0 0 0-1.768-.22L65.92 41.6 64 8l-1.92 33.6 1.347 11.23c-.602.03-1.194.098-1.767.22l-1.603-11.183-10.55-31.958 6.84 32.952 4.204 10.487c-.57.184-1.117.417-1.643.686l-4.445-10.392L36 15.503 51.137 45.56l6.777 9.045c-.5.324-.968.69-1.41 1.089l-6.985-8.892-25.117-22.401 22.401 25.116 8.892 6.987c-.398.44-.765.91-1.089 1.409l-9.045-6.777L15.503 36 43.64 54.463l10.392 4.445c-.27.526-.502 1.073-.686 1.643L42.86 56.348 9.908 49.506l31.958 10.55L53.05 61.66a11.26 11.26 0 0 0-.22 1.768L41.6 62.08 8 64l33.6 1.92 11.229-1.347c.03.602.098 1.194.22 1.767l-11.183 1.603-31.958 10.55 32.952-6.84 10.487-4.204c.184.57.417 1.117.686 1.643l-10.392 4.445L15.503 92 45.56 76.863l9.045-6.777c.324.5.69.969 1.089 1.41l-8.892 6.985-22.401 25.117 25.117-22.401 6.986-8.892c.44.398.909.765 1.41 1.089l-6.778 9.045L36 112.497 54.463 84.36l4.445-10.392c.526.27 1.073.502 1.643.686L56.348 85.14l-6.842 32.952 10.551-31.958L61.66 74.95c.573.122 1.165.19 1.767.22L62.08 86.4 64 120l1.92-33.6-1.348-11.229a11.26 11.26 0 0 0 1.768-.22l1.603 11.183 10.551 31.958-6.842-32.952-4.203-10.487c.57-.184 1.117-.417 1.643-.686l4.445 10.392L92 112.497 76.863 82.44l-6.777-9.045c.5-.324.969-.69 1.41-1.089l6.986 8.892 25.116 22.401-22.401-25.117-8.892-6.986z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="flag-int"><g fill="none" stroke="#000" stroke-linejoin="round" stroke-miterlimit="10" id="dpOutline_Icons"><path d="M23.5 11.957c0 6.375-5.163 11.544-11.532 11.544C5.599 23.5.5 18.125.5 11.75.5 5.542 5.37.758 11.505.511c.166-.007.332-.011.5-.011C18.374.5 23.5 5.582 23.5 11.957zM11.505.511c-6 6.5-6 14.98 0 22.98M12.505.511c6 6.5 6 14.977 0 22.977M2.386 5.5h19.135M.503 11.5H23.5M1.985 17.5h20.1"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-it"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#009246" d="M0 0h213.333v480H0z"/><path fill="#FFF" d="M213.333 0h213.333v480H213.333z"/><path fill="#CE2B37" d="M426.667 0H640v480H426.667z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-jp"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FFF" d="M0 0h640v480H0z"/><circle fill="#BC002D" cx="320" cy="240" r="128"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-kh"><defs><clipPath id="dsa"><path fill-opacity=".67" d="M-85.333 0h682.67v512h-682.67z"/></clipPath></defs><g fill-rule="evenodd" clip-path="url(#dsa)" transform="translate(80) scale(.9375)"><path fill="#1b0073" d="M-128 0h768v512h-768z"/><path fill="#e60006" d="M-128 128h768v256h-768z"/><g stroke="#e60000" fill="#fff"><path stroke-width="1.208" d="M93.251 248.065h325.473v52.63H93.251z"/><path d="M220 280l-5 15h320l-5-15H220z" transform="matrix(1.0514 0 0 .82556 -138.285 69.541)" stroke-width="1.25"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(1.27557 0 0 .82556 37.621 69.542)" stroke-width="1.123"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(.64243 0 0 .82556 211.19 69.542)" stroke-width="1.52"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(.4152 0 0 .82556 272.558 69.542)" stroke-width="2.024"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(1.3409 0 0 .82556 -106.058 69.541)" stroke-width="1.098"/><path stroke-width="1.306" d="M91.424 247.27h329.137v12.384H91.424z"/><path stroke-width="1.229" d="M349.646 248.179h64.506v52.422h-64.506z"/><path stroke-width=".831" d="M395.79 272.745h6.451v27.852h-6.45zm-28.382 0h6.45v27.852h-6.45z"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(.67356 0 0 .82556 73.91 69.541)" stroke-width="1.554"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(.42245 0 0 .82556 141.925 69.541)" stroke-width="1.956"/><path stroke-width="1.264" d="M221.675 248.065h67.968v52.63h-67.968z"/><path stroke-width="1.073" d="M275.83 272.74h6.45v27.853h-6.45zm-44.886-.002h6.454v27.852h-6.454z"/><path stroke-width=".98" d="M239.53 235.33h32.914v65.352h-32.913z"/><path stroke-width="1.073" d="M264.219 272.739h6.45v27.852h-6.45zm-21.664.001h6.455v27.852h-6.455z"/><path d="M358.18 217.13l13.471 22.98 14.264-22.98H358.18z" transform="matrix(1.0321 0 0 .87371 -128 56.123)" stroke-width="1pt"/><path stroke-width="1.217" d="M375.242 248.065h18.285v65.012h-18.285z"/><path stroke-width="1.216" d="M378.286 248.065h12.178v65.012h-12.178z"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(1.27568 0 0 .82556 -215.159 69.542)" stroke-width="1.123"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(.59975 0 0 .82556 -34.228 69.542)" stroke-width="1.637"/><path d="M245 280l-5 15h60l-5-15h-50z" transform="matrix(.38267 0 0 .82556 24.297 69.542)" stroke-width="2.049"/><path stroke-width="1.227" d="M96.905 248.065h63.998v52.63H96.905z"/><path stroke-width=".831" d="M109.383 272.747h6.45V300.6h-6.45zm29.673.001h6.45V300.6h-6.45z"/><path stroke-width="1.217" d="M118.847 248.065h18.286v65.012h-18.286z"/><path stroke-width="1.216" d="M121.882 248.065h12.177v65.012h-12.177z"/><path stroke-width="1.32" d="M87.77 235.68h336.445v12.383H87.77z"/><g><path stroke-width="1pt" d="M187.5 328.56h406.25v17.5H187.5z" transform="matrix(1.0802 0 0 .9098 -165.977 50.86)"/><path stroke-width="1.197" d="M226.25 284.81h327.5v17.5h-327.5z" transform="matrix(1.0802 0 0 .9098 -165.977 50.86)"/><path stroke-width="1.215" d="M221.25 288.56h337.5v17.5h-337.5z" transform="matrix(1.0802 0 0 .9098 -165.977 50.86)"/><path stroke-width="1pt" d="M187.5 328.56h406.25v17.5H187.5z" transform="matrix(1.0802 0 0 .9098 -165.977 50.86)"/><path stroke-width="1.249" d="M212.5 298.56h356.25v17.5H212.5z" transform="matrix(1.0802 0 0 .9098 -165.977 50.86)"/><path stroke-width="1.292" d="M200 311.06h381.25v17.5H200z" transform="matrix(1.0802 0 0 .9098 -165.977 50.86)"/><path stroke-width="1.373" d="M287.5 283.56h18.75v62.5H287.5z" transform="matrix(.97521 0 0 .89163 -161.523 57.156)"/><path stroke-width="1.121" d="M290.62 283.56h12.5v62.5h-12.5z" transform="matrix(.97521 0 0 .89163 -161.523 57.156)"/><g><path stroke-width="1.373" d="M287.5 283.56h18.75v62.5H287.5z" transform="matrix(.97521 0 0 .89163 94.47 57.156)"/><path stroke-width="1.121" d="M290.62 283.56h12.5v62.5h-12.5z" transform="matrix(.97521 0 0 .89163 94.47 57.156)"/></g></g><path stroke-width="1.24" d="M249.233 248.065h14.696v117.64h-14.696z"/><g><path d="M217.92 220.3l.184-36.915s3.362 7.236 29.512 8.821c24.749-.937 28.848-5.362 29.969-9.284l-1.025 37.515-58.64-.137z" transform="matrix(.97394 0 0 .87371 141.574 56.123)" stroke-width="1pt"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.428 0 0 .30959 228.657 146.27)" stroke-width="3.528"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.55638 0 0 .43342 182.114 136.848)" stroke-width="2.615"/><path d="M0 280.52c.792 0 30.112 52.301 0 53.093-30.112.793 0-51.508 0-53.093z" transform="matrix(.40719 0 0 .40808 383.966 46.902)" stroke-width="3.383"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.32914 0 0 .16252 264.684 154.57)" stroke-width="5.963"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.16902 0 0 .16252 322.73 157.278)" stroke-width="8.321"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.33803 0 0 .2167 261.461 154.105)" stroke-width="5.096"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.33803 0 0 .2167 261.461 159.523)" stroke-width="5.096"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.3291 0 0 .4334 264.684 130.58)" stroke-width="3.651"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.3291 0 0 .4334 264.684 141.415)" stroke-width="3.651"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.33803 0 0 .54176 261.461 135.069)" stroke-width="3.223"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.32914 0 0 .32505 264.684 180.265)" stroke-width="4.216"/></g><g><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.428 0 0 .30959 -26.964 143.958)" stroke-width="3.528"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.55638 0 0 .43342 -73.507 134.534)" stroke-width="2.615"/><path d="M217.92 220.3l.184-36.915s3.362 7.236 29.512 8.821c24.749-.937 28.848-5.362 29.969-9.284l-1.025 37.515-58.64-.137z" transform="matrix(.97394 0 0 .87371 -111.857 56.123)" stroke-width="1pt"/><path d="M0 280.52c.792 0 30.112 52.301 0 53.093-30.112.793 0-51.508 0-53.093z" transform="matrix(.40719 0 0 .40808 127.97 46.902)" stroke-width="3.383"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.32914 0 0 .16252 8.688 154.57)" stroke-width="5.963"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.16902 0 0 .16252 66.734 157.278)" stroke-width="8.321"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.33803 0 0 .2167 5.466 154.105)" stroke-width="5.096"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.33803 0 0 .2167 5.466 159.523)" stroke-width="5.096"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.3291 0 0 .4334 8.688 130.58)" stroke-width="3.651"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.3291 0 0 .4334 8.688 141.415)" stroke-width="3.651"/><path d="M330.92 208.56l-.878-16.666s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334l-.878 16.666H330.92z" transform="matrix(.33803 0 0 .54176 5.466 135.069)" stroke-width="3.223"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.32914 0 0 .32505 8.688 180.265)" stroke-width="4.216"/></g><g transform="translate(-128) scale(1.0321)"><rect ry="6.449" height="12.898" width="85.039" y="226.28" x="329.53" stroke-width="1.226"/><path d="M353.24-212.6l1.093-56.693s-3.28 13.906-13.123 13.906H190.29c-9.843 0-13.124-13.906-13.124-13.906l1.093 56.693h174.98z" transform="matrix(.5 0 0 .75 239.17 393.31)" stroke-width="1.579"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.4 0 0 .57434 194.88 174.23)" stroke-width="2.4"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.48 0 0 .57434 159.45 186.23)" stroke-width="2.19"/><path d="M510.49 70.219l.41-25.609s23.557-2.999 20.288-9.332c-3.27-6.333-27.29-18.36-61.81-31.08-24.29-5.905 31.26-26.346-21.07-27.709-48.02.757-5.42 23.318-21.07 28.618-38.84 11.81-69.33 23.838-72.6 30.171-3.27 6.334 20.29 9.332 20.29 9.332l.408 25.61h135.15z" transform="matrix(.12985 0 0 .26106 314.17 134.08)" stroke-width="6.247"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.28332 0 0 .46992 246.55 156.75)" stroke-width="3.152"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.34 0 0 .46992 221.46 166.57)" stroke-width="2.877"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.18333 0 0 .31908 290.85 149.49)" stroke-width="4.755"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.22 0 0 .31908 274.61 156.16)" stroke-width="4.341"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.12985 0 0 .26106 314.53 139.78)" stroke-width="6.247"/><path d="M510.49 70.219l.41-25.609s23.557-2.998 20.288-9.332c-3.27-6.333-31.604 7.986-31.604 7.986h-113.34s-28.335-14.32-31.604-7.986c-3.269 6.334 20.288 9.332 20.288 9.332l.408 25.609h135.15z" transform="matrix(.15583 0 0 .26106 303.03 145.24)" stroke-width="5.702"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.17717 0 0 .17997 307.82 126.336)" stroke-width="5.444"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.24803 0 0 .17997 282.14 132.335)" stroke-width="5.444"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.28346 0 0 .23996 269.29 130.316)" stroke-width="4.41"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.35433 0 0 .29995 243.6 130.697)" stroke-width="3.528"/><path d="M358.18 217.13l13.471 22.98 14.264-22.98H358.18z" transform="matrix(.92308 0 0 .67386 28.619 57.554)" stroke-width="1.458"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.4252 0 0 .33427 217.91 135.867)" stroke-width="3.051"/><path d="M358.18 217.13l13.471 22.98 14.264-22.98H358.18z" transform="matrix(1 0 0 .84654 0 37.089)" stroke-width="1.25"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.46063 0 0 .41993 205.07 135.488)" stroke-width="2.615"/><path d="M330.92 208.56l-18.42-20.45c6.141-5.303 17.543 3.789 17.543 3.789s6.14-23.485 32.457-33.334c26.316 9.849 32.456 33.334 32.456 33.334s11.403-9.092 17.544-3.789l-18.422 20.455h-63.157z" transform="matrix(.46063 0 0 .41993 205.07 152.762)" stroke-width="2.615"/></g><g stroke-width="1.04"><path d="M166.5 272.743h6.45v27.852h-6.45zm21.932-.003h6.45v27.853h-6.45zm-10.322 0h6.451v27.852h-6.45zm117.195.002h6.451v27.852h-6.45zm43.865-.002h6.45v27.852h-6.45zm-21.932-.001h6.45v27.852h-6.45zm-10.321-.001h6.45v27.852h-6.45zm20.642 0h6.45v27.852h-6.45zm-117.195.004h6.45v27.852h-6.45zm-11.611-.002h6.45v27.852h-6.45z" stroke-width="1.073"/></g></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-lt"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#C1272D" d="M0 0h640v480H0z"/><path fill="#006A44" d="M0 0h640v320H0z"/><path fill="#FDB913" d="M0 0h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-lu"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#00A1DE" d="M0 240h640v240H0z"/><path fill="#ED2939" d="M0 0h640v240H0z"/><path fill="#FFF" d="M0 160h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ma"><path fill="#c1272d" d="M640 0H0v480h640z"/><path d="M320 179.452l-35.574 109.496 93.12-67.647H262.453l93.122 67.648z" fill="none" stroke="#006233" stroke-width="11.704"/></symbol><symbol viewBox="0 0 640 480" id="flag-mx"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#CE1126" d="M0 0h640v480H0z"/><path fill="#FFF" d="M0 0h426.667v480H0z"/><path fill="#006847" d="M0 0h213.333v480H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-my"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#CC0001" d="M0 0h640v478.835H0z"/><path fill="#FFF" d="M0 439.39h640v39.945H0zM0 359.501h640v39.945H0zM0 279.612h640v39.945H0zM0 199.723h640v39.945H0zM0 119.834h640v39.945H0zM0 39.945h640V79.89H0z"/><path fill="#010066" d="M0 0h420v239.377H0z"/><path d="M172.8 29.922c-49.844 0-90.3 40.217-90.3 89.766 0 49.55 40.456 89.767 90.3 89.767 18.008 0 34.786-5.256 48.878-14.298a80.299 80.299 0 0 1-26.181 4.37c-44.198 0-80.07-35.66-80.07-79.597 0-43.936 35.872-79.595 80.07-79.595 9.767 0 19.124 1.74 27.78 4.927-14.412-9.682-31.786-15.34-50.477-15.34z" fill="#FC0"/><path d="M322.55 166.419l-38.037-19.794 11.247 40.51-25.442-33.887-7.937 41.246-7.806-41.27-25.548 33.811 11.375-40.477-38.1 19.68 28.303-31.667-43.105 1.65 39.625-16.586-39.572-16.705 43.1 1.78-28.203-31.752 38.037 19.794-11.247-40.51 25.442 33.887 7.937-41.246 7.806 41.27 25.548-33.812-11.375 40.477 38.1-19.68-28.303 31.668 43.105-1.65-39.625 16.585 39.572 16.706-43.1-1.78 28.203 31.752z" fill="#FC0"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-nl"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#21468B" d="M0 0h640v480H0z"/><path fill="#FFF" d="M0 0h640v320H0z"/><path fill="#AE1C28" d="M0 0h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-no"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#EF2B2D" d="M0 0h640v480H0z"/><path fill="#FFF" d="M180 0h120v480H180z"/><path fill="#FFF" d="M0 180h640v120H0z"/><path fill="#002868" d="M210 0h60v480h-60z"/><path fill="#002868" d="M0 210h640v60H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-nz"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#00247D" d="M.748.698H639.75V479.7H.748z"/><g transform="translate(339.47 59.875)"><path d="M132.958 42.729l-8.614 26.306 22.412-16.262 22.413 16.262-8.614-26.306 22.412-16.263H155.29L146.756.24l-8.534 26.227h-27.676l22.412 16.263zM253.873 124.598l19.86-14.429h-24.566l-7.657-23.436-7.577 23.436h-24.646l19.94 14.43-7.577 23.436 19.86-14.508 19.94 14.508-7.577-23.437zM44.745 137.672l-8.534-26.307-8.614 26.307H0l22.332 16.262-8.534 26.307 22.413-16.262 22.332 16.262-8.534-26.307 22.412-16.262H44.745zM156.248 312.173l-9.492-29.176-9.491 29.176h-30.707l24.805 18.096-9.412 29.177 24.805-18.096 24.805 18.096-9.411-29.177 24.805-18.096h-30.707z" fill="#FFF"/><path d="M137.584 41.214l-5.583 17.378 14.755-10.762 14.756 10.762-5.583-17.378 14.755-10.682h-18.265l-5.663-17.379-5.663 17.379H122.83l14.755 10.682zM249.167 123.084l12.283-8.929h-15.234l-4.706-14.508-4.706 14.508H221.57l12.363 8.929-4.706 14.508 12.283-9.008 12.363 9.008-4.706-14.508zM41.794 141.658l-5.583-17.379-5.663 17.379H12.283l14.755 10.762-5.663 17.378 14.836-10.762 14.755 10.762-5.663-17.378 14.835-10.762H41.794zM153.376 316.16l-6.62-20.249-6.62 20.248h-21.295l17.228 12.516-6.54 20.328 17.227-12.516 17.228 12.516-6.54-20.328 17.228-12.516h-21.296z" fill="#CC142B"/></g><path d="M133.125 0h53.25v79.834h133.126v79.833H186.375v79.834h-53.25v-79.834H0V79.834h133.125V0z" fill="#FFF"/><path d="M0 0h35.721l283.78 212.724v26.777H283.78L0 26.777V0z" fill="#FFF"/><path d="M319.5 0h-35.72L0 212.724v26.777h35.721l283.78-212.724V0z" fill="#FFF"/><path d="M143.775 0h31.95v95.8h143.776v47.9H175.725v95.801h-31.95v-95.8H0V95.8h143.775V0z" fill="#CC142B"/><path d="M0 0l106.5 79.834H82.686L0 17.85V0zm319.5 0h-23.813l-106.5 79.834H213L319.5 0zM319.5 239.501L213 159.667h23.815L319.5 221.65V239.5zm-319.5 0h23.814l106.5-79.834H106.5L0 239.501z" fill="#CC142B"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-pe"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#D91023" d="M0 0h640v480H0z"/><path fill="#FFF" d="M213.333 0h213.333v480H213.333z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ph"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#0038A8" d="M0 0h640v480H0z"/><path fill="#CE1126" d="M0 240h640v240H0z"/><path d="M415.68 240L0 480V0l415.68 240z" fill="#FFF"/><g transform="translate(42.667 89.6)" fill="#FCD116"><path d="M201.813 156.587L208 150.4l-6.187-6.187-47.253 3.094c-.107-1.067-.213-2.134-.32-3.094l43.093-5.653-5.12-5.12-38.506 7.68c-1.28-6.293-3.734-12.16-7.147-17.28l32.64-21.76v-7.147l-34.453 26.454c-.64-.854-1.28-1.6-2.027-2.454l35.627-31.146v-8.854h-8.854l-31.146 35.627c-.747-.64-1.6-1.387-2.454-2.027l26.454-34.453H155.2l-21.867 32.427c-5.12-3.414-10.986-5.974-17.28-7.147l7.68-38.507-5.12-5.12-5.653 43.094c-1.067-.107-2.027-.214-3.093-.32l3.093-47.254-6.293-6.186-6.187 6.186 3.093 47.254c-1.066.106-2.133.213-3.093.32l-5.76-43.094-5.12 5.12 7.68 38.507c-6.293 1.28-12.16 3.733-17.28 7.147l-21.76-32.64h-7.147l26.454 34.453c-.854.64-1.6 1.28-2.454 2.027L43.947 78.72h-8.854v8.853L70.72 118.72c-.64.747-1.387 1.6-2.027 2.453L34.133 94.72v7.147l32.64 21.866c-3.413 5.12-5.973 10.987-7.146 17.28l-38.507-7.68-5.12 5.12 43.093 5.654c-.106 1.066-.213 2.026-.32 3.093l-47.253-3.093-6.187 6.293 6.187 6.187 47.253-3.094c.107 1.067.214 2.134.32 3.094L16 162.347l5.12 5.12 38.507-7.68c1.28 6.293 3.733 12.16 7.146 17.28l-32.64 21.76v7.146l34.454-26.453c.64.853 1.28 1.6 2.026 2.453L34.987 213.12v8.853h8.853l31.147-35.626c.746.64 1.6 1.386 2.453 2.026l-26.453 34.56h7.146L80 190.293c5.12 3.414 10.987 5.974 17.28 7.147l-7.68 38.507 5.12 5.12 5.653-43.094c1.067.107 2.027.214 3.094.32l-3.094 47.254 6.187 6.186 6.187-6.186-3.094-47.254a293.49 293.49 0 0 0 3.094-.32l5.653 43.094 5.12-5.12-7.68-38.507c6.293-1.28 12.16-3.733 17.28-7.147l21.76 32.64h7.147l-26.454-34.453c.854-.64 1.6-1.28 2.454-2.027l31.146 35.627h8.854v-8.853L142.4 182.08c.64-.747 1.387-1.6 2.027-2.453l34.453 26.453v-7.147l-32.32-21.866c3.413-5.12 5.973-10.987 7.147-17.28l38.506 7.68 5.12-5.12-43.093-5.654c.107-1.066.213-2.026.32-3.093l47.253 2.987zM309.12 144.107l-.32-19.094-11.627 15.254-18.24-5.547 10.88 15.68-10.88 15.68 18.24-5.547 11.627 15.254.32-19.094 18.027-6.293-18.027-6.293zM51.52 286.613l-19.093 1.6-8.107-17.28-4.373 18.56-18.88 2.454 16.32 9.813-3.627 18.773 14.507-12.48 16.64 9.28-7.36-17.6 13.973-13.12zM37.12 20.8l7.36-17.6-16.64 9.28L13.333 0l3.627 18.773L.64 28.587l18.88 2.453 4.373 18.56L32 32.32l19.093 1.6L37.12 20.8z"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-pl"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="edwhite" fill="#FFF" d="M0 0h640v480H0z"/><path id="edred" fill="#DC143C" d="M0 240h640v240H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-pt"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#F00" d="M0 0h640v480H0z"/><path fill="#060" d="M0 0h256v480H0z"/><circle fill="#FF0" cx="256.5" cy="239.5" r="118.5"/><path d="M188.384 253.144v.054c0 18.668 7.73 35.669 20.13 48.01 12.425 12.367 29.537 20.055 48.257 20.055 18.817 0 35.894-7.633 48.266-19.951 12.37-12.318 20.037-29.32 20.039-48.053h-.002v-92.191l-136.608-.022-.084 92.097.002.001zm109.224-64.497l.005 58.67-.05 6.205h.002a44.77 44.77 0 0 1-.29 5.08c-1.11 9.275-5.375 17.36-11.693 23.65-7.397 7.363-17.606 11.93-28.857 11.93-11.192 0-21.167-4.726-28.595-12.12-7.62-7.585-12.036-17.984-12.036-28.737l-.016-64.828 81.528.147.003.003z" fill="#F00"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ro"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#002B7F" d="M0 0h213.333v480H0z"/><path fill="#FCD116" d="M213.333 0h213.333v480H213.333z"/><path fill="#CE1126" d="M426.667 0H640v480H426.667z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-rs"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FFF" d="M0 0h640v480H0z"/><path fill="#0C4076" d="M0 0h640v320H0z"/><path fill="#C6363C" d="M0 0h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ru"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FFF" d="M0 0h640v240H0z"/><path fill="#D52B1E" d="M0 240h640v240H0z"/><path fill="#0039A6" d="M0 160h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-se"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#006AA7" d="M0 0h640v480H0z"/><path fill="#FECC00" d="M190 0h96v480h-96z"/><path fill="#FECC00" d="M0 192h640v96H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-sg"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="ejFlag_of_Singapore"><path id="ejred" fill="#ED2939" d="M0 0h640v240H0z"/><path id="ejwhite" fill="#FFF" d="M0 240h640v240H0z"/><path d="M246.946 120c0 49.844-40.406 90.25-90.25 90.25-49.843 0-90.25-40.406-90.25-90.25a90.25 90.25 0 1 1 180.5 0z" id="ejShape" fill="#FFF"/><path d="M275.306 120c0 47.104-38.185 85.29-85.29 85.29-47.103 0-85.289-38.186-85.289-85.29 0-47.104 38.186-85.29 85.29-85.29 47.104 0 85.289 38.186 85.289 85.29z" id="ejShape" fill="#ED2939"/><path d="M167.866 122.177l-12.26-9.405-12.257 9.41 4.719-15.166-12.3-9.348 15.177.032 4.656-15.188 4.66 15.186 15.177-.038-12.296 9.353 4.724 15.164z" id="ejstar" fill="#FFF"/><g id="ejstar-link" transform="translate(231.865 82.5)" fill="#FFF"><path d="M32.2 39.677l-12.26-9.405-12.258 9.41 4.719-15.166-12.3-9.348 15.177.032L19.934.012l4.66 15.186 15.177-.038-12.296 9.353L32.2 39.677z" id="ejstar"/></g><g id="ejstar-link" transform="translate(183.815 46.798)" fill="#FFF"><path d="M32.2 39.677l-12.26-9.405-12.258 9.41 4.719-15.166-12.3-9.348 15.177.032L19.934.012l4.66 15.186 15.177-.038-12.296 9.353L32.2 39.677z" id="ejstar"/></g><g id="ejstar-link" transform="translate(153.667 139.625)" fill="#FFF"><path d="M32.2 39.677l-12.26-9.405-12.258 9.41 4.719-15.166-12.3-9.348 15.177.032L19.934.012l4.66 15.186 15.177-.038-12.296 9.353L32.2 39.677z" id="ejstar"/></g><g id="ejstar-link" transform="translate(213.865 139.625)" fill="#FFF"><path d="M32.2 39.677l-12.26-9.405-12.258 9.41 4.719-15.166-12.3-9.348 15.177.032L19.934.012l4.66 15.186 15.177-.038-12.296 9.353L32.2 39.677z" id="ejstar"/></g></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-sk"><path fill="#ee1c25" d="M0 0h640v480H0z"/><path fill="#0b4ea2" d="M0 0h640v320H0z"/><path fill="#fff" d="M0 0h640v160H0z"/><path d="M233.004 370.8c-43.025-20.724-104.568-61.858-104.568-143.226 0-81.37 3.89-118.374 3.89-118.374h201.358s3.891 37.005 3.891 118.374c0 81.368-61.543 122.502-104.571 143.226z" fill="#fff"/><path d="M233.004 360c-39.472-19.013-95.934-56.75-95.934-131.4 0-74.651 3.57-108.6 3.57-108.6h184.73s3.57 33.95 3.57 108.6c0 74.65-56.462 112.387-95.936 131.4z" fill="#ee1c25"/><path d="M241.446 209.027c10.688.173 31.54.591 50.109-5.622 0 0-.49 6.645-.49 14.385 0 7.742.49 14.386.49 14.386-17.032-5.7-38.064-5.819-50.108-5.666v41.231h-16.883V226.51c-12.044-.153-33.076-.034-50.108 5.665 0 0 .49-6.644.49-14.386 0-7.74-.49-14.384-.49-14.384 18.568 6.213 39.42 5.795 50.108 5.622v-25.894c-9.741-.087-23.779.378-39.65 5.69 0 0 .49-6.645.49-14.386 0-7.74-.49-14.385-.49-14.385 15.848 5.303 29.868 5.776 39.607 5.691-.501-16.398-5.278-37.065-5.278-37.065s9.831.767 13.761.767c3.934 0 13.763-.767 13.763-.767s-4.776 20.667-5.277 37.064c9.739.084 23.759-.388 39.606-5.691 0 0-.49 6.644-.49 14.385 0 7.74.49 14.385.49 14.385-15.87-5.311-29.909-5.776-39.65-5.69v25.894z" fill="#fff"/><path d="M233 263.275c-19.878 0-30.525 27.575-30.525 27.575s-5.907-13.075-22.125-13.075c-10.973 0-19.06 9.761-24.2 18.8C176.113 328.34 207.964 347.941 233 360c25.039-12.06 56.91-31.657 76.875-63.425-5.14-9.039-13.227-18.8-24.2-18.8-16.219 0-22.15 13.075-22.15 13.075S252.879 263.275 233 263.275z" fill="#0b4ea2"/></symbol><symbol viewBox="0 0 640 480" id="flag-th"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="elred" fill="#ED1C24" d="M0 0h640v480H0z"/><path id="elwhite" fill="#FFF" d="M0 80h640v320H0z"/><path id="elblue" fill="#241D4F" d="M0 160h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-tr"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path id="emred" fill="#E30A17" d="M0 0h640v480H0z"/><path d="M265 336c-53.04 0-96-42.96-96-96s42.96-96 96-96c28.38 0 53.88 12.3 71.46 31.92C315.16 142.32 277.72 120 235 120c-66.3 0-120 53.7-120 120s53.7 120 120 120c42.72 0 80.16-22.32 101.46-55.92C318.88 323.7 293.38 336 265 336z" id="emShape" fill="#FFF"/><path d="M412.9 240l25.62-35.28-41.46 13.5-25.62-35.28v43.56L329.98 240l41.46 13.5v43.56l25.62-35.28 41.46 13.5L412.9 240z" id="emShape" fill="#FFF"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-tw"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FE0000" d="M0 0h640v480H0z"/><path fill="#000095" d="M0 0h360v240H0z"/><g transform="translate(89.6 29.6)" fill="#FFF"><path d="M124.64 52.56l10.8-40.08-29.36 29.44c6.96 2.16 13.2 5.84 18.56 10.64zM74.72 41.84L45.36 12.4l10.8 40.08c5.36-4.72 11.6-8.4 18.56-10.64zM90.4 39.36c3.68 0 7.28.4 10.72 1.12L90.4.4 79.68 40.56c3.44-.8 7.04-1.2 10.72-1.2zM138.96 74.72l29.44-29.36-40.08 10.8c4.72 5.36 8.4 11.6 10.64 18.56zM180.4 90.4l-40.16-10.72c.72 3.44 1.12 7.04 1.12 10.72 0 3.68-.4 7.28-1.12 10.72L180.4 90.4z"/><ellipse cx="90.4" cy="90.4" rx="44.96" ry="44.96"/><path d="M52.56 56.16L12.48 45.44 41.92 74.8c2.16-7.04 5.84-13.28 10.64-18.64zM106.08 138.96l29.36 29.44-10.8-40.08c-5.36 4.72-11.6 8.4-18.56 10.64zM90.4 141.44c-3.68 0-7.28-.4-10.72-1.12l10.72 40.16 10.72-40.16c-3.44.72-7.04 1.12-10.72 1.12zM128.24 124.64l40.08 10.8-29.44-29.36c-2.16 6.96-5.84 13.2-10.64 18.56zM39.36 90.4c0-3.68.4-7.28 1.12-10.72L.4 90.4l40.16 10.72c-.8-3.44-1.2-7.04-1.2-10.72zM56.16 128.24l-10.8 40.08 29.36-29.44c-6.96-2.16-13.2-5.84-18.56-10.64zM41.84 106.08L12.4 135.44l40.08-10.8c-4.72-5.36-8.4-11.6-10.64-18.56z"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-ua"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#005BBB" d="M0 0h640v480H0z"/><path fill="#FFD500" d="M0 240h640v240H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-uk"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#00247D" d="M.748.698H639.75V479.7H.748z"/><path d="M266.25 0h106.5v159.667H639v159.666H372.75V479h-106.5V319.333H0V159.667h266.25V0z" fill="#FFF"/><path d="M0 0h71.442L639 425.446V479h-71.442L0 53.554V0z" fill="#FFF"/><path d="M639 0h-71.442L0 425.446V479h71.442L639 53.554V0z" fill="#FFF"/><path d="M287.55 0h63.9v191.6H639v95.8H351.45V479h-63.9V287.4H0v-95.8h287.55V0z" fill="#CC142B"/><path d="M0 0l213 159.667h-47.628L0 35.703V0zm639 0h-47.628l-213 159.667H426L639 0zM639 479L426 319.333h47.628L639 443.297V479zM0 479h47.628l213-159.667H213L0 479z" fill="#CC142B"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-us"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#B22234" d="M0 0h640v480H0z"/><path d="M0 73.846h640V36.923H0v36.923zm640 36.923H0v36.923h640V110.77zM0 221.54h640v-36.924H0v36.923zm640 36.923H0v36.923h640v-36.923zM0 369.23h640v-36.923H0v36.923zm640 36.923H0v36.923h640v-36.923z" fill="#FFF"/><path fill="#3C3B6E" d="M0 0h364.8v258.462H0z"/><g transform="translate(16.246 11.077)" fill="#FFF"><path d="M14.174.005l-3.318 10.21H.12l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H17.492L14.174.006zM14.174 51.722l-3.318 10.21H.12l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H17.492l-3.318-10.21zM14.174 103.44l-3.318 10.21H.12l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H17.492l-3.318-10.21zM14.174 155.156l-3.318 10.21H.12l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H17.492l-3.318-10.21zM17.492 217.083l-3.317-10.21-3.32 10.21H.12l8.686 6.31-3.318 10.21 8.688-6.31 8.686 6.31-3.318-10.21 8.687-6.31H17.492zM44.595 25.864l-3.318 10.21H30.539l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31H47.913l-3.318-10.21zM44.595 77.58l-3.318 10.211H30.539l8.687 6.31-3.318 10.21L44.595 98l8.687 6.31-3.319-10.21 8.688-6.31H47.913l-3.318-10.21zM44.595 129.298l-3.318 10.21H30.539l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31H47.913l-3.318-10.21zM47.913 191.225l-3.318-10.21-3.319 10.21H30.54l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31H47.913zM75.015.005l-3.318 10.21H60.96l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H78.333L75.015.006zM75.015 51.722l-3.318 10.21H60.96l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H78.333l-3.318-10.21zM75.015 103.44l-3.318 10.21H60.96l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H78.333l-3.318-10.21zM75.015 155.156l-3.318 10.21H60.96l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31H78.333l-3.318-10.21zM78.334 217.083l-3.318-10.21-3.32 10.21H60.96l8.686 6.31-3.318 10.21 8.688-6.31 8.686 6.31-3.318-10.21 8.687-6.31H78.334zM105.436 25.864l-3.318 10.21H91.38l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM105.436 77.58l-3.318 10.211H91.38l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM105.436 129.298l-3.318 10.21H91.38l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM108.754 191.225l-3.318-10.21-3.319 10.21H91.38l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738zM135.856.005l-3.318 10.21h-10.737l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31h-10.738L135.856.006zM135.856 51.722l-3.318 10.21h-10.737l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31h-10.738l-3.318-10.21zM135.856 103.44l-3.318 10.21h-10.737l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31h-10.738l-3.318-10.21zM135.856 155.156l-3.318 10.21h-10.737l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31h-10.738l-3.318-10.21zM139.175 217.083l-3.318-10.21-3.32 10.21h-10.736l8.686 6.31-3.318 10.21 8.688-6.31 8.686 6.31-3.318-10.21 8.687-6.31h-10.737zM166.277 25.864l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM166.277 77.58l-3.318 10.211h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM166.277 129.298l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM169.595 191.225l-3.318-10.21-3.319 10.21h-10.737l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738zM196.697.005l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738L196.697.006zM196.697 51.722l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738l-3.318-10.21zM196.697 103.44l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738l-3.318-10.21zM196.697 155.156l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738l-3.318-10.21zM200.016 217.083l-3.318-10.21-3.32 10.21h-10.736l8.686 6.31-3.318 10.21 8.688-6.31 8.686 6.31-3.318-10.21 8.687-6.31h-10.737zM227.118 25.864l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM227.118 77.58L223.8 87.792h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM227.118 129.298l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21zM230.436 191.225l-3.318-10.21-3.319 10.21h-10.737l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738zM257.538.005l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738L257.538.006zM257.538 51.722l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738l-3.318-10.21zM257.538 103.44l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738l-3.318-10.21zM257.538 155.156l-3.317 10.21h-10.738l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.319-10.21 8.687-6.31h-10.738l-3.318-10.21zM260.857 217.083l-3.318-10.21-3.319 10.21h-10.737l8.686 6.31-3.318 10.21 8.688-6.31 8.686 6.31-3.318-10.21 8.687-6.31h-10.737zM287.959 25.864l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738l-3.318-10.21zM287.959 77.58l-3.318 10.211h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738l-3.318-10.21zM287.959 129.298l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738l-3.318-10.21zM291.277 191.225l-3.318-10.21-3.319 10.21h-10.737l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738zM313.01 16.526l-3.317 10.21 8.686-6.31 8.687 6.31-3.318-10.21 8.688-6.31h-10.738L318.379.005l-3.318 10.21h-10.738l8.688 6.31zM318.38 51.722l-3.318 10.21h-10.738l8.687 6.31-3.319 10.21 8.688-6.31 8.687 6.31-3.319-10.21 8.687-6.31h-10.738l-3.317-10.21zM318.38 103.44l-3.318 10.21h-10.738l8.687 6.31-3.319 10.21 8.688-6.31 8.687 6.31-3.319-10.21 8.687-6.31h-10.738l-3.317-10.21zM318.38 155.156l-3.318 10.21h-10.738l8.687 6.31-3.319 10.21 8.688-6.31 8.687 6.31-3.319-10.21 8.687-6.31h-10.738l-3.317-10.21zM321.698 217.083l-3.318-10.21-3.319 10.21h-10.737l8.686 6.31-3.318 10.21 8.688-6.31 8.686 6.31-3.318-10.21 8.687-6.31h-10.737z"/></g></g></symbol><symbol viewBox="0 0 640 480" id="flag-uy"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#FFF" d="M0 0h640v480H0z"/><path fill="#0038A8" d="M266.667 53.333H640v53.333H266.667zM266.667 160H640v53.333H266.667zM0 266.667h640V320H0zM0 373.333h640v53.333H0z"/><path d="M266.22 132.413l-67.828-12.332c21.064-9.03 27.932-18.291 32.991-25.122 4.914-6.633 8.161-11.015 22.117-11.015l.779.005 1.396.017.329-1.34-1.246-.632c-6.129-3.11-11.124-4.558-15.718-4.558-6.274 0-11.034 2.77-16.545 5.977-7.558 4.398-16.121 9.353-32.082 9.964l37.314-53.896-.986-.986-56.684 39.242c8.508-21.275 6.817-32.682 5.57-41.062-1.237-8.312-2.054-13.803 8.4-24.005l1-.977-.716-1.18-1.326.434C166 16.498 163.976 24.16 161.173 34.765c-2.234 8.453-4.783 18.01-15.64 29.73L133.807 0h-1.394L120.08 67.828c-9.028-21.06-18.289-27.929-25.095-32.972-6.753-5.003-11.214-8.307-11.036-22.914l.017-1.397-1.34-.33-.634 1.247c-8.082 15.932-4.097 22.781 1.421 32.263 4.398 7.559 9.352 16.12 9.963 32.081L39.48 38.494l-.986.986 39.242 56.684c-11.095-4.435-20.794-6.6-29.595-6.6-4.55 0-8.224.547-11.466 1.029-2.587.385-4.822.718-7.027.718-4.85 0-9.594-1.55-16.979-9.118l-.976-1-1.181.716.434 1.328c5.552 16.984 13.213 19.008 23.817 21.81 8.455 2.234 18.011 4.784 29.731 15.64L0 132.413v1.395l67.829 12.332c-21.059 9.027-27.929 18.288-32.975 25.099-4.926 6.646-8.179 11.035-22.173 11.035l-.74-.004-1.397-.016-.329 1.341 1.246.632c6.131 3.111 11.125 4.559 15.718 4.559 6.271 0 11.029-2.769 16.545-5.977 7.559-4.399 16.119-9.354 32.082-9.964l-37.312 53.896.986.986 56.681-39.242c-8.507 21.276-6.816 32.683-5.569 41.061 1.237 8.312 2.055 13.804-8.399 24.005l-1 .975.714 1.182 1.33-.434c16.982-5.551 19.007-13.213 21.81-23.817 2.235-8.454 4.785-18.012 15.639-29.731l11.727 64.495h1.394l12.332-67.829c9.028 21.059 18.289 27.929 25.096 32.972 6.753 5.003 11.214 8.308 11.036 22.914l-.018 1.398 1.341.329.632-1.246c8.083-15.932 4.098-22.781-1.419-32.263-4.398-7.56-9.353-16.122-9.963-32.082l53.897 37.312.986-.986-39.243-56.683c11.095 4.436 20.792 6.6 29.591 6.6 4.551 0 8.226-.547 11.475-1.03 2.588-.385 4.822-.717 7.023-.717 4.851 0 9.594 1.551 16.978 9.117l.976 1 1.18-.715-.433-1.329c-5.552-16.981-13.213-19.007-23.818-21.81-8.454-2.234-18.012-4.784-29.731-15.639l64.495-11.726v-1.395z" fill="#FCD116"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-ve"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#ce1126" d="M0 0h640v480H0z"/><path fill="#003893" d="M0 0h640v320H0z"/><g stroke="null" id="essvg_stars" fill="#fff"><path transform="rotate(76.48 424.785 277.574)" id="essvg_17" d="M424.785 264.209l-3.318 10.21H410.73l8.688 6.31-3.319 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738l-3.318-10.21z"/><path transform="rotate(10.361 341.71 200.207)" id="essvg_26" d="M341.71 186.841l-3.318 10.21h-10.738l8.687 6.311-3.319 10.21 8.688-6.31 8.687 6.31-3.319-10.21 8.687-6.31h-10.738l-3.317-10.21z"/><path transform="rotate(33.834 380.363 215.934)" id="essvg_25" d="M380.363 202.569l-3.318 10.21h-10.737l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31h-10.738l-3.318-10.21z"/><path transform="rotate(-52.691 233.936 241.27)" id="essvg_27" d="M233.936 227.904l-3.318 10.21H219.88l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31h-10.738l-3.318-10.21z"/><path transform="rotate(-73.857 215.68 278.44)" id="essvg_28" d="M215.68 265.075l-3.318 10.21h-10.738l8.688 6.31-3.319 10.21 8.687-6.31 8.687 6.31-3.318-10.21 8.687-6.31h-10.738l-3.318-10.21z"/><path transform="rotate(-9.832 301.373 199.911)" id="essvg_29" d="M301.373 186.546l-3.318 10.21h-10.738l8.687 6.31-3.318 10.21 8.687-6.31 8.687 6.31-3.319-10.21 8.688-6.31H304.69l-3.318-10.21z"/><path transform="rotate(-31.487 261.693 214.735)" id="essvg_30" d="M261.693 201.37l-3.318 10.21h-10.738l8.688 6.31-3.32 10.21 8.688-6.31 8.687 6.31-3.318-10.21 8.687-6.31H265.01l-3.318-10.21z"/><path id="essvg_32" transform="rotate(52.363 407.395 241.553)" d="M407.395 228.188l-3.318 10.21H393.34l8.687 6.31-3.319 10.21 8.687-6.31 8.688 6.31-3.32-10.21 8.688-6.31h-10.738l-3.318-10.21z"/></g><path fill="#fcd116" d="M0 0h640v160H0z"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-vn"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path fill="#DA251D" d="M0 0h640v480H0z"/><path d="M320.19 131.244l-26.949 82.937h-87.206l70.552 51.26-26.949 82.938 70.552-51.258 70.552 51.258-26.949-82.939 70.553-51.259h-87.207l-26.949-82.937z" fill="#FF0"/></g></symbol><symbol viewBox="0 0 640 480" id="flag-za"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M0 480h640V0H0v480z" fill="#002395"/><path d="M0 0v240h640V0H0z" fill="#DE3831"/><path fill="#FFF" d="M360 160h280v160H360z"/><path d="M0 0l360 240L0 480" fill="#000"/><path d="M0 480l360-240L0 0h144.24l360 240-360 240H0z" fill="#FFF"/><path d="M0 0v96.16L215.76 240 0 383.84V480l360-240L0 0z" fill="#FFB612"/><path d="M0 480v-57.68L273.44 240 0 57.68V0h86.56l288 192h265.219v96H374.56l-288 192H0z" fill="#007A4D"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="folder"><path d="M23.5 4H9.707L7.854 2.146A.5.5 0 0 0 7.5 2h-7a.5.5 0 0 0-.5.5v19a.5.5 0 0 0 .5.5h23a.5.5 0 0 0 .5-.5v-17a.5.5 0 0 0-.5-.5zM23 21H1V3h6.293l1.854 1.853c.093.094.22.147.353.147H23v16z" id="evOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="folder-open"><path d="M23.5 6H21V4.5a.5.5 0 0 0-.5-.5H8V2.5a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0-.5.5V19c0 1.654 1.346 3 3 3h17.5c1.93 0 3.5-1.57 3.5-3.5v-12a.5.5 0 0 0-.5-.5zM5 6.5V19c0 1.103-.897 2-2 2s-2-.897-2-2V3h6v1.5a.5.5 0 0 0 .5.5H20v1H5.5a.5.5 0 0 0-.5.5zm18 12c0 1.378-1.122 2.5-2.5 2.5H5.234A2.989 2.989 0 0 0 6 19V7h17v11.5z" id="ewOutline_Icons"/></symbol><symbol viewBox="0 0 16 16" id="foursquare"><path d="M12.42 1H4.427C3.324 1 3 1.83 3 2.352v12.7c0 .588.316.806.494.878.178.072.668.132.962-.207 0 0 3.773-4.378 3.838-4.443.098-.098.098-.098.196-.098h2.442c1.025 0 1.19-.732 1.298-1.162.089-.361 1.09-5.485 1.424-7.11.255-1.241-.06-1.91-1.234-1.91zm-.19 9.02c.089-.361 1.09-5.485 1.424-7.11l-1.424 7.11zm-.282-6.857l-.336 1.749c-.04.189-.278.388-.498.388H8c-.35 0-.601.238-.601.588v.382c0 .35.252.598.603.598h2.641c.248 0 .49.272.437.536-.054.264-.305 1.575-.335 1.72-.03.144-.196.391-.49.391H8.099c-.393 0-.512.052-.775.378-.262.327-2.625 3.164-2.625 3.164-.024.028-.047.02-.047-.01v-9.91a.5.5 0 0 1 .485-.486h6.414c.237 0 .457.222.397.512z" stroke="none" stroke-width="1" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 24 24" id="gear"><g id="eyWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M11.94 15c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zm0 1c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4z"/><path d="M20.195 4.247l-2.42 1.392-.53-.414a8.508 8.508 0 0 0-2.068-1.193l-.627-.252V1H9.326v2.787l-.627.253a8.56 8.56 0 0 0-2.065 1.186l-.53.413-.583-.336-1.837-1.057-2.61 4.504 2.415 1.39-.094.67c-.11.79-.11 1.584.003 2.375l.096.67-.587.338-1.833 1.054 2.61 4.504 2.419-1.392.53.414a8.572 8.572 0 0 0 2.068 1.194l.626.253V23h5.224v-2.79l.63-.25a8.467 8.467 0 0 0 2.065-1.186l.53-.413.582.335 1.838 1.057 2.61-4.505-2.416-1.389.095-.67c.112-.785.11-1.58-.002-2.379l-.094-.67.586-.336 1.829-1.053-2.61-4.504zm3.576 4.179a.798.798 0 0 1-.292 1.09l-2.005 1.154c.125.888.126 1.778.001 2.66l2.004 1.152a.8.8 0 0 1 .293 1.092l-2.809 4.85a.808.808 0 0 1-1.096.293l-2.007-1.154a9.467 9.467 0 0 1-2.309 1.325V23.2c0 .442-.36.8-.802.8h-5.62a.802.802 0 0 1-.802-.8v-2.306a9.572 9.572 0 0 1-2.308-1.332l-2.006 1.153a.806.806 0 0 1-1.096-.293l-2.81-4.85a.798.798 0 0 1 .294-1.093l2.007-1.153a9.437 9.437 0 0 1-.003-2.656L.4 9.517a.799.799 0 0 1-.293-1.093l2.809-4.85a.804.804 0 0 1 1.096-.292L6.02 4.437a9.56 9.56 0 0 1 2.306-1.325V.8c0-.442.36-.8.802-.8h5.619c.443 0 .803.358.803.8v2.304c.828.333 1.6.78 2.31 1.333l2.005-1.154a.8.8 0 0 1 .608-.078.792.792 0 0 1 .488.371l2.81 4.85z"/></g></symbol><symbol viewBox="0 0 13 13" id="google"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M4.388.355A6.52 6.52 0 0 0 .714 3.572 6.419 6.419 0 0 0 .15 5.203 6.506 6.506 0 0 0 .71 9.396a6.541 6.541 0 0 0 1.76 2.165 6.46 6.46 0 0 0 2.356 1.188c1.08.29 2.23.282 3.318.035a5.883 5.883 0 0 0 2.656-1.38 5.89 5.89 0 0 0 1.641-2.69c.324-1.113.366-2.301.164-3.444H6.507V7.8h3.534a3.053 3.053 0 0 1-1.296 2.004c-.43.29-.92.474-1.43.565a4.276 4.276 0 0 1-1.547-.004 3.838 3.838 0 0 1-1.443-.624 4.008 4.008 0 0 1-1.485-1.99 3.934 3.934 0 0 1 0-2.523 4.049 4.049 0 0 1 .942-1.53A3.845 3.845 0 0 1 5.719 2.62a3.868 3.868 0 0 1 1.903.077 3.49 3.49 0 0 1 1.398.822l1.192-1.192c.209-.212.428-.418.63-.638A6.321 6.321 0 0 0 8.756.397 6.543 6.543 0 0 0 4.388.355" fill="#FFF"/><path d="M4.388.355a6.565 6.565 0 0 1 4.367.039 6.3 6.3 0 0 1 2.088 1.293c-.203.22-.422.425-.631.638L9.02 3.517a3.53 3.53 0 0 0-1.398-.823 3.827 3.827 0 0 0-1.903-.077 3.874 3.874 0 0 0-1.937 1.077 4.022 4.022 0 0 0-.942 1.53c-.707-.55-1.415-1.097-2.126-1.648A6.514 6.514 0 0 1 4.388.356" fill="#EB4335"/><path d="M.153 5.2a6.466 6.466 0 0 1 .565-1.631c.707.55 1.415 1.098 2.126 1.648a3.91 3.91 0 0 0 0 2.524c-.708.55-1.415 1.101-2.123 1.648A6.45 6.45 0 0 1 .153 5.2" fill="#FBBC05"/><path d="M6.507 5.266h6.1a7.667 7.667 0 0 1-.165 3.444 5.89 5.89 0 0 1-1.641 2.69L8.74 9.8a3.053 3.053 0 0 0 1.297-2.003H6.503c.004-.844.004-1.687.004-2.53" fill="#4285F4"/><path d="M.714 9.393c.708-.547 1.415-1.098 2.123-1.649a4.029 4.029 0 0 0 1.485 1.99c.432.304.927.52 1.443.624a4.2 4.2 0 0 0 1.547.004c.509-.091 1-.276 1.429-.565l2.06 1.6a5.85 5.85 0 0 1-2.656 1.38c-1.087.247-2.237.254-3.318-.035a6.406 6.406 0 0 1-2.356-1.188A6.527 6.527 0 0 1 .714 9.393" fill="#34A853"/></g></symbol><symbol viewBox="0 0 16 16" id="google-analytics"><path d="M4.818 10.058a1.575 1.575 0 0 1-1.88.276l-2.254 2.35L0 12.026 2.28 9.65a1.58 1.58 0 1 1 2.973-.437l1.791 1.104a1.574 1.574 0 0 1 1.596-.333l2.78-4.345a1.58 1.58 0 1 1 2.689-.928L16 6.278l-.605.73L13.698 5.6a1.575 1.575 0 0 1-1.435.48l-2.862 4.472a1.58 1.58 0 1 1-2.827.587l-1.756-1.082z" stroke="none" stroke-width="1" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 16 16" id="google-webmaster-tool"><g transform="translate(0 1)" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M8 0H5.655v.966h4.69V0H8" fill="#5A5A5A"/><path d="M10.345 0v2.23h1.172V1l-1.172-1M5.655 0v2.23H4.483V1l1.172-1" fill="#7B7B7B"/><path d="M13.741 2.207H2.26L0 4.486v2.273h16V4.486l-2.259-2.28" fill="#D0D1D2"/><path d="M13.448 4.414H2.552c-.449 0-.759.465-.759.81V6.76h12.414V5.224c0-.345-.31-.81-.759-.81" fill="#458CF6"/><path d="M8 6.759H0v6.327c0 .552.586 1.12 1.034 1.12h13.932c.448 0 1.034-.568 1.034-1.12V6.76H8" fill="#E6E7E8"/><path d="M8 6.759H1.793v7.448h12.414V6.759H8M3.574 5.511a.477.477 0 1 1-.953 0 .477.477 0 0 1 .953 0M5.074 5.511a.477.477 0 1 1-.955 0 .477.477 0 0 1 .955 0" fill="#FFF"/><path d="M2.62 7.672h4.104v4.604H2.621V7.672zM2.62 13.241H8v.966H2.62v-.966z" fill="#D0D1D2"/><path d="M12.805 8.879a2.995 2.995 0 0 0-1.219-1.197v2.387L9.103 7.745v-.013a2.752 2.752 0 0 0-1.437 2.397c0 1.08.66 2.009 1.575 2.44v1.638h4.966v-4l-1.402-1.328" fill="#BDBDBD"/><path d="M11.586 7.682v2.56L10.345 11l-1.242-.759V7.732a2.752 2.752 0 0 0-1.437 2.397c0 1.08.66 2.009 1.575 2.44v1.638h2.345v-1.638c.828-.431 1.552-1.36 1.552-2.44 0-1.085-.724-2.019-1.552-2.447" fill="#5A5A5A"/></g></symbol><symbol viewBox="0 0 16 16" id="googleplus"><g transform="translate(0 2.462)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M.086 4.947C.129 2.342 2.524.062 5.128.148 6.376.09 7.548.634 8.504 1.396c-.408.464-.83.91-1.281 1.328C6.073 1.93 4.44 1.703 3.29 2.62c-1.644 1.137-1.718 3.82-.137 5.044 1.537 1.395 4.443.702 4.868-1.433-.963-.015-1.929 0-2.892-.032-.002-.574-.005-1.149-.002-1.723 1.61-.005 3.22-.007 4.832.005.096 1.351-.082 2.79-.913 3.907-1.257 1.77-3.782 2.286-5.751 1.528-1.977-.753-3.377-2.84-3.21-4.97M13.1 3.025h1.436c.002.48.004.963.01 1.444.48.004.962.004 1.442.01v1.435c-.48.005-.96.008-1.443.012-.005.483-.007.963-.01 1.444h-1.438c-.005-.48-.005-.96-.01-1.441l-1.443-.015V4.478c.48-.005.96-.007 1.443-.01.003-.482.008-.962.013-1.443"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="hashtag"><path d="M23.479 9h-6.943L18.003.586a.498.498 0 0 0-.406-.578.492.492 0 0 0-.578.406L15.521 9H9.536L11.003.586a.498.498 0 0 0-.406-.578.49.49 0 0 0-.578.406L8.521 9h-6.01a.5.5 0 0 0 0 1h5.836l-.872 5H.511a.5.5 0 0 0 0 1h6.79l-1.293 7.414a.498.498 0 1 0 .984.172L8.315 16H14.3l-1.293 7.414a.498.498 0 0 0 .494.586.499.499 0 0 0 .491-.414L15.315 16h6.164a.5.5 0 0 0 0-1h-5.99l.872-5h7.118a.5.5 0 0 0 0-1zm-9.004 6H8.489l.872-5h5.985l-.871 5z" id="fdOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="help"><g id="feOutline_Icons_1_"><g id="feOutline_Icons"><path d="M11.5 1C5.159 1 0 6.159 0 12.5S5.159 24 11.5 24 23 18.841 23 12.5 17.841 1 11.5 1zm0 22C5.71 23 1 18.29 1 12.5S5.71 2 11.5 2 22 6.71 22 12.5 17.29 23 11.5 23z"/><path d="M11.5 6.5C9.57 6.5 8 8.07 8 10a.5.5 0 0 0 1 0c0-1.378 1.121-2.5 2.5-2.5S14 8.622 14 10s-1.121 2.5-2.5 2.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 1 0v-2.535A3.506 3.506 0 0 0 15 10c0-1.93-1.57-3.5-3.5-3.5z"/><circle cx="11.5" cy="18.5" r="1"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="home"><g id="ffOutline_Icons"><path d="M20.5 13.5a.5.5 0 0 0-.5.5v9h-5v-6.5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0-.5.5V23H4v-9.5a.5.5 0 0 0-1 0v10a.5.5 0 0 0 .5.5h6a.5.5 0 0 0 .5-.5V17h4v6.5a.5.5 0 0 0 .5.5h6a.5.5 0 0 0 .5-.5V14a.5.5 0 0 0-.5-.5z"/><path d="M23.854 12.647l-11.5-11.5a.5.5 0 0 0-.707 0l-11.5 11.5a.5.5 0 0 0 .707.707L12 2.208l11.146 11.146a.498.498 0 0 0 .708 0 .5.5 0 0 0 0-.707zM16 3h3v3a.5.5 0 0 0 1 0V2.5a.5.5 0 0 0-.5-.5H16a.5.5 0 0 0 0 1z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="hreflang"><path d="M20.929 4.011a.504.504 0 0 0-.159-.175A12.018 12.018 0 0 0 15.484.52c-.013-.002-.025-.007-.039-.01A11.953 11.953 0 0 0 12 0C5.383 0 0 5.383 0 12s5.383 12 12 12 12-5.383 12-12c0-3.069-1.168-5.865-3.071-7.989zm-.982.405c-.16.619-.699 2.294-2.02 3.056-1.772-.346-3.476.622-3.844 1.071-.237.289-.155.546-.109.643.066.14.239.257.405.298.167.188.46.938.636 1.638a.503.503 0 0 0 .131.232c.485.485 1.177.399 1.629.266.064.535-.695 1.383-1.441 2.158-.555.578-.834.867-.834 1.222 0 .415.304.679.526.873.075.064.205.171.217.15 0 0-.016.042-.097.123-.648.648-1.3.878-1.305.879a.503.503 0 0 0-.341.475c0 1.308-.817 1.98-2.429 2-.337-.25-1.051-1.632-1.071-2 0-.132.1-.333.197-.526.142-.284.303-.606.303-.974 0-.562-.621-1.304-1.005-1.708-.031-.618-.208-1.071-.537-1.382-.564-.532-1.407-.484-2.222-.438-.24.014-.488.028-.736.028-.979 0-1-1.44-1-1.5 0-.031.024-3.095 2.098-3.509C8.545 7.201 8.97 7.471 9 7.5c0 .133.053.26.146.354.894.894 2.25.579 3.339.325.396-.092.769-.179 1.015-.179a.5.5 0 0 0 .495-.429c.189-1.327.279-3.007-.372-3.476-.242-.175-.55-.189-.847-.042-.362.182-.701.212-.926.086-.252-.14-.331-.45-.353-.686-.06-.643 1.948-1.519 3.837-1.934a11.02 11.02 0 0 1 4.613 2.897zM12 23C5.935 23 1 18.066 1 12 1 5.935 5.935 1 12 1c.425 0 .842.03 1.254.077-1.366.493-2.86 1.301-2.752 2.469.062.671.369 1.192.863 1.467.476.265 1.085.266 1.698.008.087.356.084 1.172-.008 2.018-.249.038-.518.101-.795.166-.84.195-1.783.414-2.309.025a1.095 1.095 0 0 0-.347-.484c-.511-.42-1.395-.497-2.702-.236C4.033 7.083 4 10.84 4 11c0 .865.418 2.5 2 2.5.267 0 .534-.015.793-.029.631-.037 1.227-.071 1.478.166.152.143.229.434.229.863 0 .132.053.26.146.354.424.424.832.975.854 1.146 0 .132-.1.333-.197.526-.142.284-.303.606-.303.974 0 .507 1.025 3 2 3 2.09 0 3.343-.965 3.486-2.665a5.124 5.124 0 0 0 1.367-.981c.266-.266.396-.546.386-.833-.015-.432-.328-.704-.557-.902-.04-.035-.09-.079-.128-.105.117-.144.333-.368.5-.542.939-.977 2.512-2.612 1.299-3.825a.5.5 0 0 0-.577-.094c-.209.105-.626.219-.838.145-.246-.929-.503-1.464-.733-1.774.547-.312 1.617-.703 2.674-.438.114.03.238.015.345-.038 1.418-.709 2.147-2.157 2.494-3.129A10.925 10.925 0 0 1 23 12c0 6.066-4.935 11-11 11z" id="fgOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="http-status"><g id="fhOutline_Icons_1_"><path d="M.5 24h21.948a.5.5 0 0 0 0-1H11.979v-4.026c5.007-.276 9-4.428 9-9.507 0-5.22-4.26-9.467-9.496-9.467-5.312 0-9.504 4.02-9.504 9.304 0 5.183 3.996 9.416 9 9.672V23H.5a.5.5 0 0 0 0 1zm2.514-14h4.118c.072.992.261 1.994.561 3H3.795a8.78 8.78 0 0 1-.781-3zm16.942-1h-4.08a12.304 12.304 0 0 0-.695-4h3.507a8.39 8.39 0 0 1 1.268 4zm-.004 1a8.444 8.444 0 0 1-.747 3h-3.932c.301-1.006.489-2.008.562-3h4.117zm-5.045-1H8.06c.007-1.373.266-2.711.765-4h5.318c.499 1.289.756 2.628.764 4zM7.09 9H2.994a8.243 8.243 0 0 1 1.178-4h3.613a12.357 12.357 0 0 0-.695 4zm1.012 1h6.764c-.08.989-.29 1.991-.619 3H8.72a13.027 13.027 0 0 1-.618-3zm5.778 4c-.541 1.33-1.293 2.666-2.266 3.992-.054.001-.228.003-.262.002-.972-1.327-1.725-2.663-2.266-3.994h4.794zm-.957 3.864c.86-1.277 1.538-2.57 2.021-3.864h3.72a8.532 8.532 0 0 1-5.741 3.864zM17.96 4h-3.174a13.671 13.671 0 0 0-1.708-2.845A8.492 8.492 0 0 1 17.96 4zm-6.316-2.992c.853.95 1.538 1.952 2.055 2.992H9.267a13.505 13.505 0 0 1 2.061-2.997c.051-.001.262.004.316.005zm-1.75.14A13.699 13.699 0 0 0 8.181 4H4.883c1.228-1.468 2.975-2.493 5.011-2.852zM4.333 14h3.688c.484 1.295 1.163 2.591 2.024 3.87C7.652 17.457 5.6 16.016 4.333 14z" id="fhOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" id="impact"><g id="fiWoorank-Icon" stroke="none" fill-rule="evenodd"><path d="M12 23.5c6.351 0 11.5-5.149 11.5-11.5S18.351.5 12 .5.5 5.649.5 12 5.649 23.5 12 23.5zm0-1C6.201 22.5 1.5 17.799 1.5 12S6.201 1.5 12 1.5 22.5 6.201 22.5 12 17.799 22.5 12 22.5z" id="fiOval"/><path d="M12 17.5a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zm0-1a4.5 4.5 0 1 1 0-9 4.5 4.5 0 0 1 0 9z" id="fiOval-Copy"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="index-404"><g id="fjOutline_Icons"><path d="M21.5 2h-19A2.502 2.502 0 0 0 0 4.5v14C0 19.879 1.121 21 2.5 21h19c1.379 0 2.5-1.121 2.5-2.5v-14C24 3.121 22.879 2 21.5 2zm-19 1h19c.827 0 1.5.673 1.5 1.5V7H1V4.5C1 3.673 1.673 3 2.5 3zm19 17h-19c-.827 0-1.5-.673-1.5-1.5V8h22v10.5c0 .827-.673 1.5-1.5 1.5z"/><circle cx="4" cy="5" r="1"/><circle cx="7" cy="5" r="1"/><circle cx="10" cy="5" r="1"/><path d="M12.14 11.053c-1.776 0-1.776 2.103-1.776 3s0 3 1.776 3 1.776-2.103 1.776-3 0-3-1.776-3zm0 5c-.376 0-.776-.154-.776-2s.4-2 .776-2 .776.154.776 2-.4 2-.776 2zM9 14v-2.395a.501.501 0 0 0-.909-.289l-2.053 2.895c-.107.152-.122.353-.036.519s.259.27.445.27H8v1.5a.5.5 0 0 0 1 0V15a.5.5 0 0 0 0-1zm-1 0h-.585L8 13.175V14zM18 14v-2.395a.501.501 0 0 0-.909-.289l-2.053 2.895c-.107.152-.122.353-.036.519s.259.27.445.27H17v1.5a.5.5 0 0 0 1 0V15a.5.5 0 0 0 0-1zm-1 0h-.585l.585-.825V14z"/></g></symbol><symbol viewBox="0 0 20 20" id="index-analytics"><g transform="translate(0 2)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M.455 7.727h4.09v-.909H.455v.91zM15.455 7.727h4.09v-.909h-4.09v.91zM8.182 7.727h4.09v-.909h-4.09v.91z"/><path d="M19.545 2.273H0V15.909H20V2.273h-.455zM.91 3.182h18.182V15H.909V3.182z"/><path d="M13.41.227H7.044v2.728h.91l.015-1.819 4.53.018v1.8h.91V.228zM7.727 8.636h.455V5.91H4.545V8.636h3.182zM5.455 6.818h1.818v.91H5.455v-.91zM15.455 8.636h.454V5.91H12.273V8.636H15.455zm-2.273-1.818H15v.91h-1.818v-.91z"/></g></symbol><symbol viewBox="0 0 20 20" id="index-local"><g transform="translate(3)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M6.53 0A6.53 6.53 0 0 0 0 6.53c0 1.275.76 3.295 2.099 5.906.312.608.651 1.239 1.014 1.888A88.234 88.234 0 0 0 6.19 19.41l.34.515.341-.515a25.489 25.489 0 0 0 .266-.41 88.234 88.234 0 0 0 2.811-4.675c.363-.65.702-1.28 1.014-1.888 1.34-2.61 2.1-4.631 2.1-5.905A6.531 6.531 0 0 0 6.53 0zm3.706 12.063c-.307.599-.642 1.222-1 1.863a87.432 87.432 0 0 1-2.095 3.54c-.25.402-.598.987-.598.987s-.4-.628-.623-.986a87.432 87.432 0 0 1-2.094-3.54 60.118 60.118 0 0 1-1-1.864C1.545 9.569.815 7.629.815 6.53a5.714 5.714 0 1 1 11.429 0c0 1.098-.73 3.038-2.009 5.532z"/><path d="M8.571 6.53a2.041 2.041 0 1 1-4.082 0 2.041 2.041 0 0 1 4.082 0zm.817 0a2.858 2.858 0 1 0-5.716.002 2.858 2.858 0 0 0 5.716-.001z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="index-meta"><g id="fmOutline_Icons_1_"><path d="M21 .001c-1.654 0-3 1.346-3 3a2.99 2.99 0 0 0 1.531 2.6l-2.502 6.954a2.984 2.984 0 0 0-.529-.054c-.729 0-1.39.271-1.91.706l-2.527-2.168c.271-.451.438-.974.438-1.538 0-1.654-1.346-3-3-3s-3 1.346-3 3c0 .938.441 1.766 1.116 2.315l-3.603 6.373A2.976 2.976 0 0 0 3 18.001c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3a2.98 2.98 0 0 0-1.117-2.316l3.603-6.372c.318.115.657.188 1.015.188.729 0 1.389-.271 1.908-.705l2.529 2.168a2.977 2.977 0 0 0-.438 1.537c0 1.654 1.346 3 3 3s3-1.346 3-3a2.993 2.993 0 0 0-1.532-2.601l2.502-6.953c.173.031.349.054.53.054 1.654 0 3-1.346 3-3s-1.346-3-3-3zm-18 23c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm6.5-11.5c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm7 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm4.5-12.5c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z" id="fmOutline_Icons"/></g></symbol><symbol viewBox="0 0 20 20" id="index-mobile"><g transform="translate(3)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M12.497 17.912c0 .69-.56 1.25-1.25 1.25H2.083c-.69 0-1.25-.56-1.25-1.25V2.082c0-.69.56-1.249 1.25-1.249h9.164c.69 0 1.25.56 1.25 1.25v15.83zm.833 0V2.082C13.33.933 12.398 0 11.247 0H2.083C.933 0 0 .932 0 2.083v15.83c0 1.15.933 2.082 2.083 2.082h9.164c1.15 0 2.083-.933 2.083-2.083z"/><path d="M12.913 3.332H.417v.834h12.496v-.834zM12.913 15.83H.417v.832h12.496v-.833zM6.665 17.08a.833.833 0 1 0 0 1.665.833.833 0 0 0 0-1.666M4.582 2.5h4.166v-.834H4.582V2.5z"/></g></symbol><symbol viewBox="0 0 20 20" id="index-redirection"><g transform="translate(0 1)" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M9.2 12.8v5.6h.8v-5.6h-.8zM9.2 0v1.6h.8V0h-.8zM9.2 6.4V8h.8V6.4h-.8z"/><path d="M16.966 6.8l.117-.117 2.4-2.4.283-.283-.283-.283-2.4-2.4-.117-.117H2.8V6.8h14.166zM3.6 6.013V2l13.036.001 2.007 1.993L16.656 6 3.6 6.013zM3.2 13.2h14V7.6H3.034l-.117.117-2.4 2.4-.283.283.283.283 2.4 2.4.117.117H3.2zm-1.823-2.81L3.375 8.4H16.4l.013 4H3.383l-2.006-2.01z"/></g></symbol><symbol viewBox="0 0 20 20" id="index-robot"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M9.583 3.75v10.833h.834V3.75h-.834z"/><path d="M16.25 4.167h.417V0H3.333v4.167H16.25zM4.167.833h11.666v2.5H4.167v-2.5zM12.083 19.167h.417v-5h-5v5h4.583zM8.333 15h3.334v3.333H8.333V15zM4.583 19.167H5v-5H0v5h4.583zM.833 15h3.334v3.333H.833V15zM19.583 19.167H20v-5h-5v5h4.583zM15.833 15h3.334v3.333h-3.334V15z"/><path d="M17.5 9.167h-15v5.416h.833L3.34 10l13.328.01v4.573h.833V9.167z"/></g></symbol><symbol viewBox="0 0 20 20" id="index-sitemap"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M6.522 19.665l.252-.18 6.087-4.349h-.505l6.087 4.348.687.491V4.994l-.182-.13L12.861.516l-.252-.18-.253.18L6.55 4.703.687.516 0 .025v14.981l.182.13 6.087 4.348.253.18zM.87 14.543l.025-12.81L6.27 5.57l.253.18.252-.18 5.876-4.138 5.61 4.015.027 12.856-5.426-3.875-.252-.18-.253.18-5.834 4.16L.87 14.543z"/><path d="M6.087 5.217V19.13h.87V5.217h-.87zM13.043 14.783V.87h-.87v13.913h.87z"/></g></symbol><symbol viewBox="0 0 20 20" id="index-social"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M12.245 2.857a2.04 2.04 0 1 1-4.082 0 2.04 2.04 0 0 1 4.082 0zm.816 0a2.858 2.858 0 1 0-5.715 0 2.858 2.858 0 0 0 5.715 0zM6.53 6.53h-.408v.409c0 1.089.27 2.21.747 3.129.473.909 1.187 1.376 1.702 1.786v3.656h3.266s-.076-3.61.02-3.656c.704-.347 1.285-1.009 1.702-1.825a6.94 6.94 0 0 0 .727-3.09V6.53H6.53zm6.411 2.891c-.39.867-.968 1.548-1.647 1.786l-.274.095v.29l.013 3.102-1.645.012v-3.404l-.274-.095c-.678-.238-1.255-.916-1.645-1.78-.335-.746-.645-2.08-.498-2.08h6.488c.14 0-.184 1.33-.518 2.074z"/><path d="M13.415 14.946c.705.124 1.28.287 1.665.468.306.144.43.268.43.3 0 .415-2.421 1.02-5.306 1.02-2.884 0-5.306-.605-5.306-1.02 0-.032.125-.156.433-.3.387-.182.964-.345 1.672-.469l-.14-.804c-1.73.303-2.781.796-2.781 1.573 0 1.163 2.695 1.837 6.122 1.837s6.123-.674 6.123-1.837c0-.775-1.048-1.269-2.77-1.572l-.142.804z"/><path d="M13.42 13.261c3.453.446 5.764 1.582 5.764 2.657 0 1.461-4.015 2.858-8.98 2.858-4.965 0-8.98-1.397-8.98-2.858 0-1.076 2.312-2.211 5.767-2.657l-.105-.81c-3.845.497-6.478 1.79-6.478 3.467 0 2.146 4.392 3.674 9.796 3.674 5.404 0 9.796-1.528 9.796-3.674 0-1.677-2.632-2.97-6.476-3.466l-.104.81z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="index-ssl"><g id="fsOutline_Icons_1_"><g id="fsNew_icons_1_"><path d="M22.5 10h-1v-.5C21.5 7.57 19.93 6 18 6s-3.5 1.57-3.5 3.5v.5h-1a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.5-.5zm-7-.5C15.5 8.122 16.622 7 18 7s2.5 1.122 2.5 2.5v.5h-5v-.5zM22 17h-8v-6h8v6z"/><path d="M18 12c-.551 0-1 .449-1 1a.99.99 0 0 0 .5.847V15.5a.5.5 0 0 0 1 0v-1.653A.99.99 0 0 0 19 13c0-.551-.449-1-1-1z"/><path d="M19.5 19.021a.5.5 0 0 0-.5.5V21h-7V3h7v2a.5.5 0 0 0 1 0V2.5a.5.5 0 0 0-.5-.5H12V.5a.5.5 0 0 0-.608-.489l-9 2A.502.502 0 0 0 2 2.5v19a.5.5 0 0 0 .392.488l9 2A.5.5 0 0 0 12 23.5V22h7.5a.5.5 0 0 0 .5-.5v-1.979a.5.5 0 0 0-.5-.5zM11 22.876l-8-1.777V2.901l8-1.777v21.752z"/><path d="M8 10.5c-1.103 0-2 .897-2 2s.897 2 2 2 2-.897 2-2-.897-2-2-2zm0 3c-.551 0-1-.449-1-1s.449-1 1-1 1 .449 1 1-.449 1-1 1z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="indexation"><g id="ftOutline_Icons_1_"><g id="ftOutline_Icons"><path d="M23.82 5.116l-6-5A.5.5 0 0 0 17.5 0h-11a.5.5 0 0 0-.32.116l-6 5A.497.497 0 0 0 0 5.5v16C0 22.879 1.121 24 2.5 24h19c1.379 0 2.5-1.121 2.5-2.5v-16a.497.497 0 0 0-.18-.384zM23 6v5H1V6h22zM1 12h22v5H1v-5zM6.681 1H17.32l4.8 4H1.881l4.8-4zM21.5 23h-19c-.827 0-1.5-.673-1.5-1.5V18h22v3.5c0 .827-.673 1.5-1.5 1.5z"/><circle cx="14" cy="8.5" r="1"/><circle cx="17" cy="8.5" r="1"/><circle cx="20" cy="8.5" r="1"/><path d="M3.5 10C4.327 10 5 9.327 5 8.5S4.327 7 3.5 7 2 7.673 2 8.5 2.673 10 3.5 10zm0-2c.275 0 .5.225.5.5s-.225.5-.5.5-.5-.225-.5-.5.225-.5.5-.5z"/><circle cx="14" cy="14.5" r="1"/><circle cx="17" cy="14.5" r="1"/><circle cx="20" cy="14.5" r="1"/><path d="M3.5 13c-.827 0-1.5.673-1.5 1.5S2.673 16 3.5 16 5 15.327 5 14.5 4.327 13 3.5 13zm0 2c-.275 0-.5-.225-.5-.5s.225-.5.5-.5.5.225.5.5-.225.5-.5.5z"/><circle cx="14" cy="20.5" r="1"/><circle cx="17" cy="20.5" r="1"/><circle cx="20" cy="20.5" r="1"/><path d="M3.5 19c-.827 0-1.5.673-1.5 1.5S2.673 22 3.5 22 5 21.327 5 20.5 4.327 19 3.5 19zm0 2c-.275 0-.5-.225-.5-.5s.225-.5.5-.5.5.225.5.5-.225.5-.5.5z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="information"><g id="fuOutline_Icons_1_"><g id="fuOutline_Icons"><path d="M11.5 1C5.159 1 0 6.159 0 12.5S5.159 24 11.5 24 23 18.841 23 12.5 17.841 1 11.5 1zm0 22C5.71 23 1 18.29 1 12.5S5.71 2 11.5 2 22 6.71 22 12.5 17.29 23 11.5 23z"/><path d="M14.5 19H12v-8.5a.5.5 0 0 0-.5-.5h-2a.5.5 0 0 0 0 1H11v8H8.5a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1z"/><circle cx="11" cy="6.5" r="1"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="instagram"><g id="fvOutline_Icons"><path d="M19.5 0h-15A4.505 4.505 0 0 0 0 4.5v15C0 21.982 2.019 24 4.5 24h15c2.481 0 4.5-2.018 4.5-4.5v-15C24 2.019 21.981 0 19.5 0zM23 4.5V8h-6.541C15.36 6.776 13.771 6 12 6s-3.36.776-4.459 2H7V1h12.5C21.43 1 23 2.57 23 4.5zM12 7c2.757 0 5 2.243 5 5s-2.243 5-5 5-5-2.243-5-5 2.243-5 5-5zM3 1.352a3.45 3.45 0 0 1 1-.301V8H3V1.352zM5 1h1v7H5V1zM2 2.058V8H1V4.5c0-.95.383-1.81 1-2.442zM19.5 23h-15C2.57 23 1 21.43 1 19.5V9h5.812A5.958 5.958 0 0 0 6 12c0 3.309 2.691 6 6 6s6-2.691 6-6a5.958 5.958 0 0 0-.812-3H23v10.5c0 1.93-1.57 3.5-3.5 3.5z"/><path d="M18.5 7h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5zm.5-3h2v2h-2V4z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="life-buoy"><path d="M23.5 10h-.692C21.987 5.548 18.453 2.015 14 1.191V.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v.691C5.547 2.014 2.012 5.548 1.19 10H.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h.69c.822 4.454 4.356 7.988 8.81 8.809v.691a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-.691c4.453-.821 7.986-4.356 8.808-8.809h.692a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5zm-1.709 0h-4.673A5.522 5.522 0 0 0 14 6.882V2.208c3.903.797 6.997 3.891 7.791 7.792zM12 16.5A4.505 4.505 0 0 1 7.5 12c0-2.481 2.019-4.5 4.5-4.5s4.5 2.019 4.5 4.5c0 2.482-2.019 4.5-4.5 4.5zM13 1v5.596c-.325-.06-.658-.096-1-.096s-.675.036-1 .096V1h2zm-3 1.208v4.674A5.522 5.522 0 0 0 6.882 10H2.207A10.038 10.038 0 0 1 10 2.208zM1 11h5.596a5.415 5.415 0 0 0-.096 1c0 .342.035.675.096 1H1v-2zm1.207 3h4.675A5.53 5.53 0 0 0 10 17.119v4.674A10.035 10.035 0 0 1 2.207 14zM11 23v-5.596c.325.06.658.096 1 .096s.675-.036 1-.096V23h-2zm3-1.208v-4.674a5.526 5.526 0 0 0 3.118-3.119h4.673A10.03 10.03 0 0 1 14 21.792zM23 13h-5.596c.061-.325.096-.658.096-1 0-.341-.035-.675-.096-1H23v2z" id="fwOutline_Icons"/></symbol><symbol viewBox="0 0 64 64" id="life-buoy-colourfull"><g id="fxPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="fxGroup"><path d="M32 .485C14.594.485.485 14.594.485 32S14.595 63.515 32 63.515 63.515 49.405 63.515 32C63.515 14.594 49.405.485 32 .485zm0 18.424c7.23 0 13.09 5.86 13.09 13.091 0 7.23-5.86 13.09-13.09 13.09-7.23 0-13.09-5.86-13.09-13.09 0-7.23 5.86-13.09 13.09-13.09z" id="fxPath" fill="#FFF"/><path d="M32 1.91C15.38 1.91 1.91 15.38 1.91 32c0 16.618 13.47 30.09 30.09 30.09 16.618 0 30.09-13.472 30.09-30.09C62.09 15.38 48.618 1.91 32 1.91zm0 45.135c-8.31 0-15.045-6.736-15.045-15.045 0-8.31 6.735-15.044 15.045-15.044 8.309 0 15.045 6.734 15.045 15.044 0 8.309-6.736 15.045-15.045 15.045z" id="fxShape" fill="#CCD1D9"/><path d="M32 5.671C17.459 5.671 5.671 17.458 5.671 32 5.671 46.541 17.46 58.329 32 58.329S58.329 46.54 58.329 32C58.329 17.458 46.54 5.671 32 5.671zm0 41.374c-8.31 0-15.045-6.736-15.045-15.045 0-8.31 6.735-15.044 15.045-15.044 8.309 0 15.045 6.734 15.045 15.044 0 8.309-6.736 15.045-15.045 15.045z" id="fxShape" fill="#FFF"/><path d="M32 13.194c-10.387 0-18.806 8.42-18.806 18.806 0 10.387 8.42 18.807 18.806 18.807 10.386 0 18.806-8.42 18.806-18.807 0-10.387-8.42-18.806-18.806-18.806zm0 33.851c-8.31 0-15.045-6.736-15.045-15.045 0-8.31 6.735-15.044 15.045-15.044 8.309 0 15.045 6.734 15.045 15.044 0 8.309-6.736 15.045-15.045 15.045z" id="fxShape" fill="#CCD1D9"/><path d="M18.554 38.722L5.11 45.446a30.187 30.187 0 0 0 12.145 12.768l7.373-13.106a15.1 15.1 0 0 1-6.073-6.386zm20.168 6.724l6.723 13.444a30.174 30.174 0 0 0 12.767-12.145l-13.106-7.372a15.084 15.084 0 0 1-6.384 6.073zm6.724-20.168l13.444-6.723A30.182 30.182 0 0 0 46.745 5.787l-7.373 13.106a15.105 15.105 0 0 1 6.074 6.385zm-39.66-8.023l13.106 7.372a15.098 15.098 0 0 1 6.385-6.073L18.554 5.11A30.187 30.187 0 0 0 5.786 17.255z" id="fxShape" fill="#D9534F"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="line-graph"><path d="M23.5 23H23V8.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5V23h-2v-7.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5V23h-2v-9.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5V23H5v-4.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5V23H.5a.5.5 0 0 0 0 1h23a.5.5 0 0 0 0-1zM20 9h2v14h-2V9zm-6 7h2v7h-2v-7zm-6-2h2v9H8v-9zm-6 5h2v4H2v-4z" id="fyOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="link"><g id="fzOutline_Icons_1_"><g id="fzOutline_Icons"><path d="M20.5 8h-5a2.503 2.503 0 0 0-2.5 2.5.5.5 0 0 0 1 0c0-.827.673-1.5 1.5-1.5h5c1.378 0 2.5 1.122 2.5 2.5v2c0 1.378-1.122 2.5-2.5 2.5h-5c-.827 0-1.5-.673-1.5-1.5a.5.5 0 0 0-1 0c0 1.378 1.122 2.5 2.5 2.5h5c1.93 0 3.5-1.57 3.5-3.5v-2C24 9.57 22.43 8 20.5 8zM10.5 14a.5.5 0 0 0-.5.5c0 .827-.673 1.5-1.5 1.5h-5A2.503 2.503 0 0 1 1 13.5v-2C1 10.122 2.122 9 3.5 9h5c.827 0 1.5.673 1.5 1.5a.5.5 0 0 0 1 0C11 9.122 9.878 8 8.5 8h-5C1.57 8 0 9.57 0 11.5v2C0 15.43 1.57 17 3.5 17h5c1.378 0 2.5-1.122 2.5-2.5a.5.5 0 0 0-.5-.5z"/><path d="M6 12.5a.5.5 0 0 0 .5.5h11a.5.5 0 0 0 0-1h-11a.5.5 0 0 0-.5.5z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="linkedin"><g id="gaOutline_Icons"><path d="M6.5 8h-5a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-13a.5.5 0 0 0-.5-.5zM6 21H2V9h4v12zM4.02 1.107C2.283 1.107.973 2.359.973 4.019A2.953 2.953 0 0 0 3.961 7h.029c1.738 0 3.048-1.266 3.048-2.958C6.999 2.341 5.73 1.107 4.02 1.107zM3.99 6h-.029C2.669 6 1.973 4.979 1.973 4.019c0-1.125.842-1.912 2.047-1.912 1.356 0 1.997 1.015 2.019 1.947C6.038 5.021 5.334 6 3.99 6zM17.438 8.042A6.704 6.704 0 0 0 14 9.011V8.5a.5.5 0 0 0-.5-.5h-5a.502.502 0 0 0-.499.529C8.058 9.502 8 21.378 8 21.498a.502.502 0 0 0 .5.502h5a.5.5 0 0 0 .5-.5v-7c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5v7a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-6.654c0-4.197-2.131-6.804-5.562-6.804zM22 21h-4v-6.5c0-1.378-1.122-2.5-2.5-2.5S13 13.122 13 14.5V21H9.002c.009-2.076.042-9.785.01-12H13v.985a.499.499 0 0 0 .841.365c.014-.013 1.429-1.309 3.598-1.309 2.856 0 4.562 2.17 4.562 5.804V21z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="links"><g id="gbOutline_Icons_1_"><g id="gbOutline_Icons"><path d="M21.732 4.025l-1.758-1.757c-1.316-1.317-3.633-1.317-4.949 0L11.06 6.232a2.503 2.503 0 0 0 .001 3.537l.086.085a.5.5 0 1 0 .705-.709l-.085-.085a1.502 1.502 0 0 1 0-2.122l3.965-3.964c.939-.94 2.596-.94 3.535 0l1.757 1.757a2.505 2.505 0 0 1 0 3.536l-3.965 3.964a1.501 1.501 0 0 1-2.121 0l-.086-.086a.5.5 0 0 0-.707.707l.086.086A2.492 2.492 0 0 0 16 13.67c.64 0 1.28-.244 1.768-.731l3.965-3.964a3.506 3.506 0 0 0-.001-4.95zM12.854 14.146a.5.5 0 0 0-.707.707l.086.086a1.502 1.502 0 0 1 0 2.122l-3.965 3.964c-.939.94-2.595.94-3.535 0l-1.758-1.757a2.505 2.505 0 0 1 0-3.536l3.965-3.964a1.502 1.502 0 0 1 2.122.001l.086.085a.5.5 0 1 0 .705-.709l-.085-.085a2.502 2.502 0 0 0-3.535 0l-3.965 3.964a3.507 3.507 0 0 0 0 4.95l1.757 1.757c.659.659 1.538 1.022 2.475 1.022s1.816-.363 2.475-1.022l3.965-3.964a2.503 2.503 0 0 0 0-3.536l-.086-.085z"/><path d="M7.758 16.243a.5.5 0 0 0 .707 0l7.777-7.778a.5.5 0 0 0-.707-.707l-7.777 7.778a.499.499 0 0 0 0 .707z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="list"><g id="gcOutline_Icons"><path d="M8.5 5h15a.5.5 0 0 0 0-1h-15a.5.5 0 0 0 0 1zM23.5 12h-15a.5.5 0 0 0 0 1h15a.5.5 0 0 0 0-1zM23.5 20h-15a.5.5 0 0 0 0 1h15a.5.5 0 0 0 0-1zM4.5 2h-4a.5.5 0 0 0-.5.5v4a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 0-.5-.5zM4 6H1V3h3v3zM4.5 10h-4a.5.5 0 0 0-.5.5v4a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 0-.5-.5zM4 14H1v-3h3v3zM4.5 18h-4a.5.5 0 0 0-.5.5v4a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 0-.5-.5zM4 22H1v-3h3v3z"/></g></symbol><symbol viewBox="0 0 50 50" id="loader"><g stroke-width="0" fill-rule="evenodd"><path d="M1.2 27.8c-.7 0-1.2-.6-1.2-1.4v-2.7c0-.8.5-1.4 1.2-1.4h8.7c.7 0 1.2.6 1.2 1.4v2.7c0 .8-.5 1.4-1.2 1.4H1.2z" fill-opacity=".3"/><path d="M27.8 9.9c0 .7-.6 1.2-1.4 1.2h-2.7c-.8 0-1.4-.5-1.4-1.2V1.2c0-.7.6-1.2 1.4-1.2h2.7c.8 0 1.4.5 1.4 1.2v8.7z"/><path d="M13.6 16.8l-1.3 2.3c-.4.7-1.2 1-1.8.6L3 15.5c-.6-.3-.7-1.2-.3-1.8L4 11.4c.4-.7 1.2-1 1.8-.6l7.5 4.2c.6.3.7 1.2.3 1.8z" fill-opacity=".4"/><path d="M19.8 10.5c.3.6 0 1.4-.6 1.8l-2.3 1.3c-.7.4-1.5.3-1.8-.3l-4.3-7.5c-.3-.6 0-1.4.6-1.8l2.3-1.3c.7-.4 1.5-.3 1.8.3l4.3 7.5z" fill-opacity=".6"/><path d="M10.5 30.2c.6-.3 1.4 0 1.8.6l1.3 2.3c.4.7.3 1.5-.3 1.8l-7.5 4.3c-.6.3-1.4 0-1.8-.6l-1.3-2.3c-.4-.7-.3-1.5.3-1.8l7.5-4.3z" fill-opacity=".25"/><path d="M27.8 48.8c0 .7-.6 1.2-1.4 1.2h-2.7c-.8 0-1.4-.5-1.4-1.2v-8.7c0-.7.6-1.2 1.4-1.2h2.7c.8 0 1.4.5 1.4 1.2v8.7zM47 34.5c.6.3.7 1.2.3 1.8L46 38.6c-.4.7-1.2 1-1.8.6L36.7 35c-.6-.3-.7-1.2-.3-1.8l1.3-2.3c.4-.7 1.2-1 1.8-.6l7.5 4.2zM38.7 46l-2.3 1.3c-.7.4-1.5.3-1.8-.3l-4.3-7.5c-.3-.6 0-1.4.6-1.8l2.3-1.3c.7-.4 1.5-.3 1.8.3l4.3 7.5c.3.6 0 1.4-.6 1.8zM15 36.7c.3-.6 1.2-.7 1.8-.3l2.3 1.3c.7.4 1 1.2.6 1.8L15.5 47c-.3.6-1.2.7-1.8.3L11.4 46c-.7-.4-1-1.2-.6-1.8l4.2-7.5zm25.1-8.9c-.7 0-1.2-.6-1.2-1.4v-2.7c0-.8.5-1.4 1.2-1.4h8.7c.7 0 1.2.6 1.2 1.4v2.7c0 .8-.5 1.4-1.2 1.4h-8.7zM46 11.3l1.3 2.3c.4.7.3 1.5-.3 1.8l-7.5 4.3c-.6.3-1.4 0-1.8-.6l-1.3-2.3c-.4-.7-.3-1.5.3-1.8l7.5-4.3c.6-.3 1.4 0 1.8.6zm-9.7-8.6L38.6 4c.7.4 1 1.2.6 1.8L35 13.3c-.3.6-1.2.7-1.8.3l-2.3-1.3c-.7-.4-1-1.2-.6-1.8L34.5 3c.3-.6 1.2-.7 1.8-.3z" fill-opacity=".2"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="local"><g id="geOutline_Icons"><path d="M12 0C7.589 0 4 3.589 4 8c0 4.245 7.273 15.307 7.583 15.775a.497.497 0 0 0 .834 0C12.727 23.307 20 12.245 20 8c0-4.411-3.589-8-8-8zm0 22.58C10.434 20.132 5 11.396 5 8c0-3.86 3.14-7 7-7s7 3.14 7 7c0 3.395-5.434 12.132-7 14.58z"/><path d="M12 4.5c-1.93 0-3.5 1.57-3.5 3.5s1.57 3.5 3.5 3.5 3.5-1.57 3.5-3.5-1.57-3.5-3.5-3.5zm0 6c-1.378 0-2.5-1.122-2.5-2.5s1.122-2.5 2.5-2.5 2.5 1.122 2.5 2.5-1.122 2.5-2.5 2.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="local_visibility"><g id="gfOutline_Icons"><path d="M16 7c0-2.206-1.794-4-4-4S8 4.794 8 7s1.794 4 4 4 4-1.794 4-4zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3-1.346 3-3 3-3-1.346-3-3z"/><path d="M12 22.024a.497.497 0 0 0 .417-.225c.284-.429 6.938-10.552 6.938-14.443C19.355 3.3 16.056 0 12 0S4.645 3.3 4.645 7.356c0 3.892 6.655 14.015 6.938 14.443a.497.497 0 0 0 .417.225zM12 1a6.363 6.363 0 0 1 6.355 6.356c0 3.066-4.88 10.937-6.355 13.247-1.476-2.31-6.355-10.18-6.355-13.247A6.363 6.363 0 0 1 12 1z"/><path d="M17.042 19.201a.5.5 0 0 0-.084.996c4.558.385 5.93 1.124 6.051 1.255C22.715 22.007 18.785 23 12 23S1.285 22.007.991 21.548c.12-.227 1.483-.962 6.009-1.348a.5.5 0 0 0 .456-.541.493.493 0 0 0-.541-.456C2.327 19.595 0 20.367 0 21.5 0 23.93 10.772 24 12 24s12-.07 12-2.5c0-1.137-2.341-1.91-6.958-2.299z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="lock"><g id="ggOutline_Icons_1_"><path d="M12 14c-.552 0-1 .449-1 1a.99.99 0 0 0 .5.847V18.5a.5.5 0 0 0 1 0v-2.653A.99.99 0 0 0 13 15c0-.551-.448-1-1-1z"/><path d="M3.5 24h17a.5.5 0 0 0 .5-.5v-14a.5.5 0 0 0-.5-.5H18V6c0-3.309-2.691-6-6-6S6 2.691 6 6v3H3.5a.5.5 0 0 0-.5.5v14a.5.5 0 0 0 .5.5zM7 6c0-2.757 2.243-5 5-5s5 2.243 5 5v3H7V6zm-3 4h16v13H4V10z"/></g></symbol><symbol viewBox="0 0 110 20" id="logo"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M57.2 6c-2.7 0-4.8 1.3-5.9 3.4-1.1-2-3.2-3.4-5.9-3.4-2.8 0-5 1.4-6 3.6l-1.8 3.9-3.5-8.2-3.6 8.2-3.3-7.1H24l6.6 13.1 3.5-7.9 3.5 7.9 2-4c1.1 2 3.2 3.3 5.8 3.3 2.7 0 4.8-1.3 5.9-3.4 1.1 2 3.2 3.4 5.9 3.4 3.8 0 6.6-2.7 6.6-6.4S61 6 57.2 6zM45.4 16.2c-2.2 0-3.9-1.6-3.9-3.9s1.7-3.9 3.9-3.9 3.9 1.6 3.9 3.9-1.7 3.9-3.9 3.9zm11.8 0c-2.2 0-3.9-1.6-3.9-3.9s1.7-3.9 3.9-3.9 3.9 1.6 3.9 3.9-1.7 3.9-3.9 3.9zM73.4 6.4c-.6-.3-1.4-.4-2.3-.4-1.7 0-2.9.3-3.6 1.3v-1h-2.7v12.1h2.7v-5.5c0-2.7 1.2-4.4 2.9-4.4.3 0 .7 0 1.1.1.5-.9 1.1-1.6 1.9-2.2zM81.8 7.4c-.6-.7-2.1-1.4-3.9-1.4-3.4 0-6.1 2.7-6.1 6.4s2.7 6.4 6.1 6.4c1.7 0 3.3-.7 3.9-1.4v1.1h2.7V6.4h-2.7v1zm-3.6 8.8c-2.3 0-3.7-1.8-3.7-3.9 0-2.1 1.4-3.9 3.7-3.9 2.2 0 3.7 1.7 3.7 3.9s-1.5 3.9-3.7 3.9zM92.5 6c-1.3 0-2.8.4-3.8 1.8V6.3H86v12.1h2.7v-6.7c0-2.1 1.5-3.2 3.2-3.2 1.8 0 2.9 1.1 2.9 3.2v6.7h2.7v-7.6c0-2.9-2.1-4.8-5-4.8zM104.9 12.2l-.2-.2 5.1-5.7h-3.4l-4.1 4.6h-.7V.2l-2.7 2.7v15.6h2.7v-5.1h.7l4.1 5.1h3.4c.1-.1-3.2-4.2-4.9-6.3z" fill="#000"/><path d="M7.9 20c6.5 0 11.9-7.8 11.9-7.8S14.4 4.4 7.9 4.4C3.6 4.4 0 8 0 12.2 0 16.4 3.7 20 7.9 20z" fill="#428BCA"/><path d="M6.8 14.8l.7.7.7-.7 4-3.9c.4-.4.4-1 0-1.4-.4-.4-1-.4-1.4 0l-3.3 3.2-1.3-1.3c-.4-.4-1-.4-1.4 0-.4.4-.4 1 0 1.4l2 2z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 20 16" id="logo-glyph"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M7.942 15.686c6.543 0 11.914-7.843 11.914-7.843S14.485 0 7.942 0C3.662 0 0 3.617 0 7.843c0 4.227 3.662 7.843 7.942 7.843z" fill="#428BCA"/><path d="M7.276 10.595l.702.693.702-.693 3.971-3.921a.972.972 0 0 0 0-1.387 1.002 1.002 0 0 0-1.404 0L7.993 8.53 6.695 7.248a1.002 1.002 0 0 0-1.404 0 .972.972 0 0 0 0 1.386l1.985 1.961z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 20 16" id="logo-glyph-nocolor"><path d="M7.942 15.686c6.543 0 11.914-7.843 11.914-7.843S14.485 0 7.942 0C3.662 0 0 3.617 0 7.843c0 4.227 3.662 7.843 7.942 7.843zm-.666-5.09l.702.692.702-.693 3.971-3.921a.972.972 0 0 0 0-1.387 1.002 1.002 0 0 0-1.404 0L7.993 8.53 6.695 7.248a1.002 1.002 0 0 0-1.404 0 .972.972 0 0 0 0 1.386l1.985 1.961z" stroke="none" stroke-width="1" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 60 49" id="logo-glyph-stroke"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M23.8 48.1c8.5 0 16.9-4.3 24.9-11.5 2.8-2.5 5.3-5.2 7.5-7.9.8-.9 1.5-1.8 2-2.6.2-.3.4-.5.5-.7.1-.1.2-.2.2-.3l.4-.6-.4-.6s-.1-.1-.2-.3c-.2-.2-.3-.5-.5-.7-.6-.8-1.3-1.7-2-2.6-2.2-2.7-4.7-5.4-7.5-7.9C40.8 5.2 32.4.9 23.8.9 10.9.9 0 11.7 0 24.4c0 12.9 11 23.7 23.8 23.7zm0-2C12 46.1 2 36.1 2 24.6 2 13 12.1 3.1 23.8 3.1c7.9 0 15.9 4.1 23.5 11 2.7 2.4 5.1 5 7.3 7.6.8.9 1.4 1.8 2 2.5.1.1.3.4.3.4s-.1.1-.3.4c-.6.8-1.2 1.6-2 2.5-2.1 2.6-4.6 5.2-7.3 7.6-7.6 6.9-15.5 11-23.5 11z"/><path d="M21.2 33.2l2 2 .7.7.7-.7 2-2L38 21.9c1.5-1.5 1.5-3.9 0-5.4-1.5-1.5-3.9-1.5-5.4 0l-8.7 8.6-3-3c-1.5-1.5-3.9-1.5-5.4 0-1.5 1.5-1.5 3.9 0 5.4l5.7 5.7zm1.4-1.5l-5.7-5.6c-.7-.7-.7-1.9 0-2.6.7-.7 1.9-.7 2.6 0l3.7 3.7.7.7.7-.7 9.4-9.3c.7-.7 1.9-.7 2.6 0 .7.7.7 1.9 0 2.6L25.2 31.8l-1.3 1.3-1.3-1.4z"/></g></symbol><symbol viewBox="0 0 110 20" id="logo-nocolor"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M57.2 6c-2.7 0-4.8 1.3-5.9 3.4-1.1-2-3.2-3.4-5.9-3.4-2.8 0-5 1.4-6 3.6l-1.8 3.9-3.5-8.2-3.6 8.2-3.3-7.1H24l6.6 13.1 3.5-7.9 3.5 7.9 2-4c1.1 2 3.2 3.3 5.8 3.3 2.7 0 4.8-1.3 5.9-3.4 1.1 2 3.2 3.4 5.9 3.4 3.8 0 6.6-2.7 6.6-6.4S61 6 57.2 6zM45.4 16.2c-2.2 0-3.9-1.6-3.9-3.9s1.7-3.9 3.9-3.9 3.9 1.6 3.9 3.9-1.7 3.9-3.9 3.9zm11.8 0c-2.2 0-3.9-1.6-3.9-3.9s1.7-3.9 3.9-3.9 3.9 1.6 3.9 3.9-1.7 3.9-3.9 3.9zM73.4 6.4c-.6-.3-1.4-.4-2.3-.4-1.7 0-2.9.3-3.6 1.3v-1h-2.7v12.1h2.7v-5.5c0-2.7 1.2-4.4 2.9-4.4.3 0 .7 0 1.1.1.5-.9 1.1-1.6 1.9-2.2zM81.8 7.4c-.6-.7-2.1-1.4-3.9-1.4-3.4 0-6.1 2.7-6.1 6.4s2.7 6.4 6.1 6.4c1.7 0 3.3-.7 3.9-1.4v1.1h2.7V6.4h-2.7v1zm-3.6 8.8c-2.3 0-3.7-1.8-3.7-3.9 0-2.1 1.4-3.9 3.7-3.9 2.2 0 3.7 1.7 3.7 3.9s-1.5 3.9-3.7 3.9zM92.5 6c-1.3 0-2.8.4-3.8 1.8V6.3H86v12.1h2.7v-6.7c0-2.1 1.5-3.2 3.2-3.2 1.8 0 2.9 1.1 2.9 3.2v6.7h2.7v-7.6c0-2.9-2.1-4.8-5-4.8zM104.9 12.2l-.2-.2 5.1-5.7h-3.4l-4.1 4.6h-.7V.2l-2.7 2.7v15.6h2.7v-5.1h.7l4.1 5.1h3.4c.1-.1-3.2-4.2-4.9-6.3zM7.9 4.3C3.6 4.3 0 7.9 0 12.1c0 4.2 3.7 7.8 7.9 7.8 6.5 0 11.9-7.8 11.9-7.8S14.5 4.3 7.9 4.3zm4.3 6.6l-4 3.9-.7.7-.7-.7-2-2c-.4-.4-.4-1 0-1.4.4-.4 1-.4 1.4 0l1.3 1.3 3.3-3.2c.4-.4 1-.4 1.4 0 .4.4.4 1 0 1.4z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="many-websites"><g id="gmOutline_Icons"><circle cx="3.5" cy="4.5" r=".5"/><circle cx="5.5" cy="4.5" r=".5"/><circle cx="7.5" cy="4.5" r=".5"/><path d="M21.5 6H21V4.5C21 3.121 19.879 2 18.5 2h-16A2.502 2.502 0 0 0 0 4.5v11C0 16.879 1.121 18 2.5 18H3v1.5C3 20.879 4.121 22 5.5 22h16c1.379 0 2.5-1.121 2.5-2.5v-11C24 7.121 22.879 6 21.5 6zM23 8.5V10h-2V7h.5c.827 0 1.5.673 1.5 1.5zM2.5 3h16c.827 0 1.5.673 1.5 1.5V6H1V4.5C1 3.673 1.673 3 2.5 3zM1 15.5V7h19v8.5c0 .827-.673 1.5-1.5 1.5h-16c-.827 0-1.5-.673-1.5-1.5zM21.5 21h-16c-.827 0-1.5-.673-1.5-1.5V18h14.5c1.379 0 2.5-1.121 2.5-2.5V11h2v8.5c0 .827-.673 1.5-1.5 1.5z"/></g></symbol><symbol viewBox="0 0 73 72" id="many-websites-colourfull"><g transform="translate(2 2)" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M3.71 0C1.655.009 0 1.612 0 3.594v32.681a3.71 3.71 0 0 0 3.71 3.709h40.586a3.71 3.71 0 0 0 3.711-3.709V3.593c0-1.981-1.656-3.584-3.7-3.59L3.71 0z" stroke="#FFF" stroke-width="2" fill="#CCD1D9"/><path d="M6.006 11.994h-2V33.993a2 2 0 0 0 2 2h36a2 2 0 0 0 2-2V11.994h-38zM6.006 3.995a2 2 0 0 0 0 4h24a2.002 2.002 0 0 0 0-4.001l-24 .001zm30-.001a2 2 0 1 0 .002 4.002 2 2 0 0 0-.002-4.002zm6 0a2 2 0 1 0 .002 4.002 2 2 0 0 0-.002-4.002z" fill="#FFF"/></g><g transform="translate(10 14)"><path d="M3.71 0C1.655.009 0 1.612 0 3.594v32.681a3.71 3.71 0 0 0 3.71 3.709h40.586a3.71 3.71 0 0 0 3.711-3.709V3.593c0-1.981-1.656-3.584-3.7-3.59L3.71 0z" stroke="#FFF" stroke-width="2" fill="#CCD1D9"/><path d="M6.006 11.994h-2V33.993a2 2 0 0 0 2 2h36a2 2 0 0 0 2-2V11.994h-38zM6.006 3.995a2 2 0 0 0 0 4h24a2.002 2.002 0 0 0 0-4.001l-24 .001zm30-.001a2 2 0 1 0 .002 4.002 2 2 0 0 0-.002-4.002zm6 0a2 2 0 1 0 .002 4.002 2 2 0 0 0-.002-4.002z" fill="#FFF"/></g><g transform="translate(20 28)"><path d="M3.71 0C1.655.009 0 1.612 0 3.594v32.681a3.71 3.71 0 0 0 3.71 3.709h40.586a3.71 3.71 0 0 0 3.711-3.709V3.593c0-1.981-1.656-3.584-3.7-3.59L3.71 0z" stroke="#FFF" stroke-width="2" fill="#CCD1D9"/><g transform="translate(4 12)"><path d="M2 0H0V21.999a2 2 0 0 0 2 2h36a2 2 0 0 0 2-2V0H2z" fill="#FFF"/><path d="M22.6 15.2v-.818a3.982 3.982 0 0 0 1.6-3.183V8a4 4 0 0 0-8 0v3.2a3.98 3.98 0 0 0 1.6 3.183v.818c0 .8-4.8.8-4.8 3.2V20h14.4v-1.6c0-2.4-4.8-2.4-4.8-3.2z" fill="#428BCA"/></g><path d="M6.006 3.995a2 2 0 0 0 0 4h24a2.002 2.002 0 0 0 0-4.001l-24 .001zm30-.001a2 2 0 1 0 .002 4.002 2 2 0 0 0-.002-4.002zm6 0a2 2 0 1 0 .002 4.002 2 2 0 0 0-.002-4.002z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="medal"><g id="goOutline_Icons_1_"><g id="goOutline_Icons"><path d="M11.542 8c-4.411 0-8 3.589-8 8s3.589 8 8 8 8-3.589 8-8-3.589-8-8-8zm0 15c-3.859 0-7-3.14-7-7s3.141-7 7-7 7 3.14 7 7-3.141 7-7 7z"/><path d="M16.042 14h-2.691l-1.361-2.724c-.17-.339-.725-.339-.895 0L9.733 14H7.042a.501.501 0 0 0-.313.89l2.24 1.792-.908 3.18a.5.5 0 0 0 .745.562l2.735-1.71 2.735 1.71a.505.505 0 0 0 .566-.025.5.5 0 0 0 .18-.537l-.908-3.18 2.24-1.792a.5.5 0 0 0-.312-.89zm-2.813 2.11a.497.497 0 0 0-.168.527l.643 2.25-1.897-1.187a.505.505 0 0 0-.53 0L9.38 18.887l.643-2.25a.497.497 0 0 0-.168-.527L8.468 15h1.574a.5.5 0 0 0 .447-.276l1.053-2.105 1.053 2.105a.5.5 0 0 0 .447.276h1.574l-1.387 1.11zM22.965.234A.498.498 0 0 0 22.542 0h-5a.5.5 0 0 0-.451.285l-2.862 6.01a.501.501 0 0 0 .236.667.501.501 0 0 0 .666-.237L17.857 1h1.395l-2.964 6.256a.5.5 0 0 0 .238.666.5.5 0 0 0 .203.045l.011.002c.011 0 .021-.008.031-.009a.497.497 0 0 0 .253-.09.479.479 0 0 0 .168-.188L20.358 1h1.389l-3.668 7.639a.5.5 0 1 0 .902.432L22.993.716a.499.499 0 0 0-.028-.482zM4.51 9.355a.5.5 0 0 0 .451-.716L1.295 1h1.389l3.165 6.684a.479.479 0 0 0 .225.222c.061.031.125.05.193.055.013.001.022.01.034.01l.012-.003a.498.498 0 0 0 .202-.045.5.5 0 0 0 .238-.666L3.79 1h1.395l2.727 5.725a.5.5 0 0 0 .665.237.501.501 0 0 0 .236-.667L5.951.285A.5.5 0 0 0 5.5 0h-5a.498.498 0 0 0-.451.716l4.01 8.355a.5.5 0 0 0 .451.284z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="megaphone"><g id="gpOutline_Icons_1_"><path d="M23.5 2a.5.5 0 0 0-.5.5v.63L1 9.825V9.5a.5.5 0 0 0-1 0v5a.5.5 0 0 0 1 0v-.325l4 1.218v2.219c0 2.206 1.794 4 4 4a4.013 4.013 0 0 0 4-3.791l10 3.05v.629a.5.5 0 0 0 1 0v-19a.5.5 0 0 0-.5-.5zM12 17.494c0 1.655-1.346 3.117-3 3.117s-3-1.346-3-3v-1.915l6 1.798zM1 13.13v-2.259l22-6.696v15.65L1 13.13z" id="gpOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="menu"><g id="gqOutline_Icons_1_"><g id="gqOutline_Icons"><path d="M4.043 6H19a.5.5 0 0 0 0-1H4.043a.5.5 0 0 0 0 1zM19 9H4.043a.5.5 0 0 0 0 1H19a.5.5 0 0 0 0-1zM19 13H4.043a.5.5 0 0 0 0 1H19a.5.5 0 0 0 0-1zM19 17H4.043a.5.5 0 0 0 0 1H19a.5.5 0 0 0 0-1z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="minus"><path d="M23.5 11H.5a.5.5 0 0 0 0 1h23a.5.5 0 0 0 0-1z" id="grOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="mobile"><g id="gsOutline_Icons_1_"><g id="gsOutline_Icons"><path d="M16.5 0h-9A2.503 2.503 0 0 0 5 2.5v19C5 22.879 6.122 24 7.5 24h9c1.378 0 2.5-1.121 2.5-2.5v-19C19 1.121 17.879 0 16.5 0zM6 5h12v14H6V5zm1.5-4h9c.828 0 1.5.673 1.5 1.5V4H6V2.5C6 1.673 6.673 1 7.5 1zm9 22h-9c-.827 0-1.5-.673-1.5-1.5V20h12v1.5c0 .827-.672 1.5-1.5 1.5z"/><path d="M9.5 3h5a.5.5 0 1 0 0-1h-5a.5.5 0 0 0 0 1zM12 20.5a1.001 1.001 0 0 0 0 2 1.001 1.001 0 0 0 0-2zm0 1.5v-.5h.001L12 22z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="monitoring"><g id="gtOutline_Icons_1_"><path d="M12.5 22h-.014a.5.5 0 0 1-.48-.422L9.348 4.746l-2.369 7.898A.5.5 0 0 1 6.5 13h-6a.5.5 0 0 1 0-1h5.628l2.893-9.644a.514.514 0 0 1 .513-.355.5.5 0 0 1 .46.421l2.581 16.344 2.437-11.372a.5.5 0 0 1 .446-.393.483.483 0 0 1 .507.312L17.838 12H23.5a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.464-.314l-1.391-3.477-2.656 12.396A.5.5 0 0 1 12.5 22z" id="gtOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="node-graph"><path d="M22 14.5c1.103 0 2-.897 2-2s-.897-2-2-2-2 .897-2 2c0 .187.034.363.082.535l-3.654 2.069A1.99 1.99 0 0 0 15 14.5c-.929 0-1.705.64-1.929 1.5H9.429c-.224-.86-1-1.5-1.929-1.5-1.103 0-2 .897-2 2 0 .2.039.39.094.573L1 20.076v-8.01l6.104-3.639c.36.354.852.573 1.396.573.704 0 1.321-.368 1.678-.92l3.828 1.366c-.001.019-.006.036-.006.054 0 1.103.897 2 2 2s2-.897 2-2c0-.46-.162-.879-.425-1.217l3.527-4.505c.272.137.574.222.898.222 1.103 0 2-.897 2-2s-.897-2-2-2-2 .897-2 2c0 .416.128.803.347 1.123L16.79 7.664A1.997 1.997 0 0 0 16 7.5c-.73 0-1.365.398-1.714.986l-3.799-1.357c.003-.043.013-.085.013-.129 0-1.103-.897-2-2-2s-2 .897-2 2c0 .199.038.387.092.568L1 10.901V.5a.5.5 0 0 0-1 0v23a.5.5 0 0 0 .5.5h23a.5.5 0 0 0 0-1H1v-1.729l5.107-3.339c.361.35.852.568 1.393.568.929 0 1.705-.64 1.929-1.5h3.643c.224.86 1 1.5 1.929 1.5 1.103 0 2-.897 2-2 0-.183-.033-.357-.079-.526l3.656-2.072c.362.369.865.598 1.422.598zM22 1a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm-6 7.5a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zM8.5 6a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm-1 11.5a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm7.5 0a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm7-6a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1z" id="guOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" id="nofollow"><g id="gvWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M12 24c6.627 0 12-5.373 12-12S18.627 0 12 0 0 5.373 0 12s5.373 12 12 12zm0-1.75C6.34 22.25 1.75 17.66 1.75 12S6.34 1.75 12 1.75 22.25 6.34 22.25 12 17.66 22.25 12 22.25z" id="gvOval"/><path d="M4.5 20.56L20.56 4.5 19.5 3.44 3.44 19.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="one-website"><g id="gwOutline_Icons"><path d="M21.5 2h-19A2.502 2.502 0 0 0 0 4.5v14C0 19.879 1.121 21 2.5 21h19c1.379 0 2.5-1.121 2.5-2.5v-14C24 3.121 22.879 2 21.5 2zm-19 1h19c.827 0 1.5.673 1.5 1.5V7H1V4.5C1 3.673 1.673 3 2.5 3zm19 17h-19c-.827 0-1.5-.673-1.5-1.5V8h22v10.5c0 .827-.673 1.5-1.5 1.5z"/><circle cx="4" cy="5" r="1"/><circle cx="7" cy="5" r="1"/><circle cx="10" cy="5" r="1"/></g></symbol><symbol viewBox="0 0 64 64" id="one-website-colourfull"><g id="gxPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="gxGroup"><path d="M58.576 1.41c.187.026.235.034.25.037-.019-.005-.019-.005-.046-.016a.06.06 0 0 0 .004.002l.223-.414.221-.416-.05-.025A.705.705 0 0 0 59.04.53c-.062-.015-.1-.02-.344-.055L5.374.471c-.31.038-.347.044-.41.06a.705.705 0 0 0-.136.047l-.05.025.22.416.224.414a.06.06 0 0 0 .003-.002c-.026.011-.026.011-.045.016l.25-.037-.068-.937C2.662.481.471 2.617.471 5.265v53.347a4.903 4.903 0 0 0 4.903 4.902h53.258a4.904 4.904 0 0 0 4.904-4.902V5.264c0-2.646-2.191-4.783-4.89-4.79h-.003l-.067.936z" id="gxShape" fill="#FFF"/><path d="M58.642 1.885c-.004 0-.007-.003-.01-.003H5.374c-.004 0-.006.003-.01.003-1.924.006-3.482 1.515-3.482 3.38v53.347a3.49 3.49 0 0 0 3.492 3.49h53.258a3.492 3.492 0 0 0 3.492-3.49V5.264c0-1.864-1.558-3.373-3.482-3.379z" id="gxShape" fill="#CCD1D9"/><path d="M56.476 13.17H5.653v43.294c0 1.04.843 1.882 1.882 1.882h48.941c1.04 0 1.883-.843 1.883-1.882V13.171h-1.883zM56.476 5.641a1.883 1.883 0 1 0 .002 3.767 1.883 1.883 0 0 0-.002-3.767zM50.83 5.641a1.883 1.883 0 1 0 .001 3.767 1.883 1.883 0 0 0-.002-3.767zM45.182 5.641l-.01.001H7.536a1.883 1.883 0 0 0 0 3.765h37.647a1.884 1.884 0 0 0 0-3.766z" id="gxShape" fill="#FFF"/><path d="M44.235 31.412a6 6 0 0 0-11.294-2.822 6 6 0 0 0-11.294 2.822c0 1.838.829 3.481 2.131 4.582l-.013.006s7.627 8.159 8.177 8.74a1.36 1.36 0 0 0 1.997 0c.552-.581 8.179-8.74 8.179-8.74l-.014-.006a5.983 5.983 0 0 0 2.131-4.582z" id="gxShape" fill="#D9534F"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="open-graph"><g id="gyOutline_Icons_1_"><path d="M12 0C5.383 0 0 5.383 0 12c0 6.218 5.033 12 12 12 3.234 0 6.268-1.269 8.542-3.573A11.932 11.932 0 0 0 24 12c0-6.617-5.383-12-12-12zM4.655 20.17c1.03-.563 2.533-1.111 4.002-1.644.514-.186 1.027-.372 1.52-.559a.5.5 0 0 0 .323-.468V15a.513.513 0 0 0-.334-.472C10.118 14.511 9 14.072 9 12a.48.48 0 0 0-.482-.494c-.047-.032-.138-.218-.138-.506s.091-.474.12-.5A.5.5 0 0 0 9 10c0-.124-.037-.256-.118-.544-.137-.489-.555-1.978-.174-2.39.138-.15.454-.124.694-.076a.497.497 0 0 0 .583-.369c.162-.649 1.326-1.121 2.765-1.121s2.603.472 2.765 1.121c.229.917-.178 2.188-.374 2.799-.097.305-.141.443-.141.58a.48.48 0 0 0 .482.494c.046.032.137.218.137.506s-.091.474-.12.5a.5.5 0 0 0-.5.5c0 2.072-1.118 2.511-1.158 2.526A.5.5 0 0 0 13.5 15v2.5c0 .208.129.395.324.469.543.203 1.085.399 1.614.591 1.51.546 2.943 1.066 3.919 1.599A10.905 10.905 0 0 1 12 23a10.906 10.906 0 0 1-7.345-2.83zm15.453-.738c-1.047-.625-2.583-1.181-4.33-1.812-.42-.152-.848-.308-1.278-.466v-1.848c.501-.309 1.384-1.108 1.49-2.936.386-.226.63-.727.63-1.37 0-.578-.198-1.043-.52-1.294.243-.756.681-2.144.385-3.327C16.138 4.992 14.256 4.5 12.75 4.5c-1.342 0-2.982.391-3.569 1.456-.52-.029-.917.119-1.207.431-.753.813-.311 2.424-.063 3.31-.328.249-.531.718-.531 1.303 0 .643.244 1.144.63 1.37.106 1.828.989 2.626 1.49 2.936v1.848c-.388.145-.786.289-1.184.433-1.625.589-3.299 1.196-4.413 1.858A10.928 10.928 0 0 1 1 12C1 5.935 5.935 1 12 1s11 4.935 11 11a10.93 10.93 0 0 1-2.892 7.432z" id="gyOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="optimize"><g id="gzOutline_Icons_1_"><g id="gzOutline_Icons"><path d="M23.981 8.821a.5.5 0 0 0-.233-.303l-1.196-.689a5.366 5.366 0 0 0-.003-1.659l1.187-.688a.502.502 0 0 0 .181-.685l-1.515-2.598a.5.5 0 0 0-.678-.183l-1.22.69c-.393-.348-.805-.65-1.504-.862V.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v1.344c-.694.211-1.105.511-1.504.862l-1.22-.69a.499.499 0 0 0-.678.183l-1.515 2.598a.5.5 0 0 0 .181.685l1.187.688a5.366 5.366 0 0 0-.003 1.659l-1.196.689a.5.5 0 0 0-.183.683l1.499 2.598a.491.491 0 0 0 .224.195c-.022.009-.046.01-.068.022l-1.22.69c-.393-.348-.805-.65-1.504-.862V10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v1.344c-.694.211-1.105.511-1.504.862l-1.22-.69a.499.499 0 0 0-.678.183L.083 14.797a.5.5 0 0 0 .181.685l1.187.688a5.366 5.366 0 0 0-.003 1.659l-1.196.689a.5.5 0 0 0-.183.683l1.499 2.598a.5.5 0 0 0 .676.187l1.25-.694c.394.349.805.652 1.506.865V23.5a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1.343c.693-.21 1.105-.511 1.507-.865l1.25.694c.239.134.54.049.676-.187l1.499-2.598a.5.5 0 0 0-.183-.683l-1.196-.689a5.366 5.366 0 0 0-.003-1.659l1.187-.688a.502.502 0 0 0 .181-.685l-1.515-2.598a.487.487 0 0 0-.223-.192c.021-.008.044-.009.065-.021l1.25-.694c.395.349.806.652 1.507.865V13.5a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1.343c.693-.21 1.105-.511 1.507-.865l1.25.694a.5.5 0 0 0 .676-.187l1.499-2.598a.512.512 0 0 0 .047-.38zM12.8 14.868l-1.059.614a.5.5 0 0 0-.237.54c.146.664.147 1.304.003 1.956a.5.5 0 0 0 .239.541l1.069.617-1.003 1.738-1.133-.628a.534.534 0 0 0-.601.087c-.5.458-.83.761-1.687.951a.497.497 0 0 0-.391.487V23H6v-1.229a.5.5 0 0 0-.392-.488c-.856-.19-1.187-.493-1.707-.97a.5.5 0 0 0-.581-.068l-1.133.628-1.003-1.738 1.069-.617a.5.5 0 0 0 .239-.541 4.452 4.452 0 0 1 .003-1.956.5.5 0 0 0-.237-.54L1.2 14.868l1.013-1.738 1.105.625a.53.53 0 0 0 .601-.082c.5-.46.831-.764 1.69-.955A.5.5 0 0 0 6 12.229V11h2v1.229a.5.5 0 0 0 .391.488c.859.191 1.189.495 1.706.97.16.147.397.174.584.067l1.105-.625 1.014 1.739zm9.012-3.995l-1.133-.628a.536.536 0 0 0-.601.087c-.5.458-.83.761-1.687.951a.499.499 0 0 0-.391.488V13h-2v-1.229a.5.5 0 0 0-.392-.488c-.856-.19-1.187-.493-1.707-.97a.5.5 0 0 0-.581-.068l-1.133.628-1.003-1.738 1.069-.617a.5.5 0 0 0 .239-.541 4.452 4.452 0 0 1 .003-1.956.5.5 0 0 0-.237-.54L11.2 4.868l1.013-1.738 1.105.625a.53.53 0 0 0 .601-.082c.5-.46.831-.764 1.69-.955A.5.5 0 0 0 16 2.229V1h2v1.229a.5.5 0 0 0 .391.488c.859.191 1.189.495 1.706.97.16.147.397.174.584.067l1.105-.625L22.8 4.868l-1.059.614a.5.5 0 0 0-.237.54c.146.664.147 1.304.003 1.956a.5.5 0 0 0 .239.541l1.069.617-1.003 1.737z"/><path d="M17 4.5c-1.378 0-2.5 1.122-2.5 2.5s1.122 2.5 2.5 2.5 2.5-1.122 2.5-2.5-1.122-2.5-2.5-2.5zm0 4c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5 1.5.673 1.5 1.5-.673 1.5-1.5 1.5zM7 14.5c-1.378 0-2.5 1.122-2.5 2.5s1.122 2.5 2.5 2.5 2.5-1.122 2.5-2.5-1.122-2.5-2.5-2.5zm0 4c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5 1.5.673 1.5 1.5-.673 1.5-1.5 1.5z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="options"><g id="haOutline_Icons_1_"><g stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" id="haOutline_Icons"><circle cx="12" cy="3" r="2.5"/><circle cx="12" cy="12" r="2.5"/><circle cx="12" cy="21" r="2.5"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="options-empty"><g id="hbOutline_Icons_1_"><g id="hbOutline_Icons"><path d="M12 6c1.654 0 3-1.346 3-3s-1.346-3-3-3-3 1.346-3 3 1.346 3 3 3zm0-5c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zM12 9c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3zm0 5c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zM12 18c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3zm0 5c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="out"><g id="hcOutline_Icons_1_"><path d="M10.5 24H.5a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v10a.5.5 0 0 1-.5.5zM1 23h9v-9H1v9zM.5 11a.5.5 0 0 1-.5-.5V.5A.5.5 0 0 1 .5 0h10a.5.5 0 0 1 0 1H1v9.5a.5.5 0 0 1-.5.5zM23.5 11a.5.5 0 0 1-.5-.5V1h-9.5a.5.5 0 0 1 0-1h10a.5.5 0 0 1 .5.5v10a.5.5 0 0 1-.5.5zM23.5 24h-10a.5.5 0 0 1 0-1H23v-9.5a.5.5 0 0 1 1 0v10a.5.5 0 0 1-.5.5z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="page-content"><g id="hdOutline_Icons_1_"><g id="hdOutline_Icons"><path d="M23.5 0h-20a.5.5 0 0 0-.5.5V4H.5a.5.5 0 0 0-.5.5v19a.5.5 0 0 0 .5.5h19a.5.5 0 0 0 .5-.5V21h3.5a.5.5 0 0 0 .5-.5V.5a.5.5 0 0 0-.5-.5zM19 23H1V5h2v15.5a.5.5 0 0 0 .5.5H19v2zm4-3H4V1h19v19z"/><path d="M7 4h13v1H7zM7 6h13v1H7zM7 8h13v1H7zM7 10h13v1H7zM7 12h13v1H7zM7 14h13v1H7zM7 16h6v1H7z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="paypal"><g id="heOutline_Icons"><path d="M8.675 10.816h2.289c.583 0 1.18-.181 1.727-.526a3.78 3.78 0 0 0 .554-.426c.5-.471.844-1.049.989-1.653.273-.975-.022-1.915-.771-2.452a2.296 2.296 0 0 0-1.354-.422h-2.39a.5.5 0 0 0-.487.387l-1.046 4.479a.496.496 0 0 0 .095.424c.097.12.241.189.394.189zm1.443-4.479h1.993c.292 0 .557.081.77.234.404.29.55.802.387 1.388a2.437 2.437 0 0 1-.707 1.176 2.779 2.779 0 0 1-.405.311 2.26 2.26 0 0 1-1.192.37H9.306l.812-3.479z"/><path d="M6.979 19.612L8.378 14h3.095c3.685 0 6.569-2.283 7.348-5.816.477-2.161-.18-3.556-.814-4.345C17.081 2.688 15.547 2 13.903 2H5.589a.498.498 0 0 0-.486.387L1.128 19.378a.498.498 0 0 0 .487.613h4.879a.5.5 0 0 0 .485-.379zm-4.734-.621L5.986 3h7.917c1.344 0 2.587.548 3.324 1.465.713.887.927 2.099.617 3.503C17.171 11.025 14.67 13 11.473 13H7.988a.5.5 0 0 0-.485.379l-1.399 5.612H2.245z"/><path d="M21.42 7.442a.499.499 0 1 0-.871.491c.469.833.574 1.86.311 3.052-.66 2.997-3.106 4.965-6.235 5.012-.268.005-2.436.003-3.286.003h-.313a.5.5 0 0 0-.485.377l-1.421 5.63H5.256l.203-.901a.5.5 0 0 0-.976-.221l-.34 1.511a.5.5 0 0 0 .488.61h4.878a.5.5 0 0 0 .485-.377l1.421-5.628c.903 0 2.97.002 3.228-.004 3.606-.054 6.43-2.33 7.194-5.796.313-1.42.169-2.719-.417-3.759z"/></g></symbol><symbol viewBox="0 0 32 32" id="pencil"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M16 0C7.163 0 0 7.163 0 16s7.163 16 16 16c8.836 0 16-7.163 16-16S24.836 0 16 0z" fill="#F5F7FA"/><path d="M9 23l3.68-1.227-2.454-2.453L9 23zM22.492 9.507a1.737 1.737 0 0 0-2.452 0l-8.588 8.586 2.454 2.454 8.586-8.587a1.734 1.734 0 0 0 0-2.453z" fill="#9777A8"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="performance"><g id="hgOutline_Icons_1_"><g id="hgOutline_Icons"><path d="M22.5 0h-21C.673 0 0 .673 0 1.5v20c0 .827.673 1.5 1.5 1.5h21c.827 0 1.5-.673 1.5-1.5v-20c0-.827-.673-1.5-1.5-1.5zm.5 21.5a.5.5 0 0 1-.5.5h-21a.5.5 0 0 1-.5-.5v-20a.5.5 0 0 1 .5-.5h21a.5.5 0 0 1 .5.5v20z"/><path d="M20.521 5H14.45c-.233-1.14-1.243-2-2.45-2s-2.217.86-2.449 2h-6.03a.5.5 0 0 0 0 1h6.03C9.783 7.14 10.793 8 12 8s2.217-.86 2.449-2h6.071a.5.5 0 0 0 .001-1zM12 7c-.827 0-1.5-.673-1.5-1.5S11.173 4 12 4c.825 0 1.496.67 1.499 1.494l-.001.006.001.006A1.5 1.5 0 0 1 12 7zM20.521 11H10.449C10.217 9.86 9.207 9 8 9s-2.217.86-2.449 2h-2.03a.5.5 0 0 0 0 1h2.03c.232 1.14 1.242 2 2.449 2s2.217-.86 2.449-2H20.52a.5.5 0 0 0 .001-1zM8 13c-.827 0-1.5-.673-1.5-1.5S7.173 10 8 10a1.5 1.5 0 0 1 1.499 1.487c0 .004-.003.008-.003.013s.002.008.003.013A1.5 1.5 0 0 1 8 13zM20.521 17H12.45c-.232-1.14-1.242-2-2.449-2s-2.217.86-2.449 2h-4.03a.5.5 0 0 0 0 1h4.03c.232 1.14 1.242 2 2.449 2s2.217-.86 2.449-2h8.071a.5.5 0 0 0 0-1zM10 19c-.827 0-1.5-.673-1.5-1.5S9.173 16 10 16a1.5 1.5 0 0 1 1.499 1.487c0 .004-.003.008-.003.013s.002.008.003.013A1.5 1.5 0 0 1 10 19z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="pie"><g id="hhOutline_Icons"><path d="M20.5 13H11V3.5a.5.5 0 0 0-.5-.5C4.71 3 0 7.71 0 13.5S4.71 24 10.5 24 21 19.29 21 13.5a.5.5 0 0 0-.5-.5zm-10 10C5.262 23 1 18.738 1 13.5c0-5.07 3.993-9.226 9-9.487V13.5a.5.5 0 0 0 .5.5h9.487c-.261 5.007-4.417 9-9.487 9z"/><path d="M13.5 0a.5.5 0 0 0-.5.5v10a.5.5 0 0 0 .5.5h10a.5.5 0 0 0 .5-.5C24 4.71 19.29 0 13.5 0zm.5 10V1.013c4.841.252 8.734 4.146 8.987 8.987H14z"/></g></symbol><symbol viewBox="0 0 64 64" id="piechart-colourfull"><g id="hiPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="hipiechart"><path d="M32 64C14.327 64 0 49.673 0 32 0 14.327 14.327 0 32 0c17.673 0 32 14.327 32 32 0 17.673-14.327 32-32 32zm-.696-13.913c10.374 0 18.783-8.41 18.783-18.783 0-10.373-8.41-18.782-18.783-18.782-10.373 0-18.782 8.409-18.782 18.782 0 10.374 8.409 18.783 18.782 18.783z" id="hiCombined-Shape" fill="#FFF"/><path d="M15.604 45.591l-6.028 6.07c-4.6-5.247-7.413-12.119-7.413-19.666 0-16.436 13.232-29.76 29.555-29.76 7.496 0 14.32 2.833 19.53 7.465l-5.689 5.727a21.074 21.074 0 0 0-13.842-5.164c-11.731 0-21.242 9.577-21.242 21.39a21.393 21.393 0 0 0 5.129 13.938z" id="hiCombined-Shape" fill="#428BCA"/><path d="M18.245 48.191l-6.057 6.1c5.21 4.63 12.033 7.464 19.53 7.464 15.698 0 28.502-12.336 29.46-27.9h-8.33c-1.094 10.778-10.137 19.188-21.13 19.188-5.115 0-9.807-1.82-13.473-4.852z" id="hiCombined-Shape" fill="#8674B5"/><path d="M48.142 18.088l5.722-5.762a29.734 29.734 0 0 1 7.314 17.809h-8.271a21.373 21.373 0 0 0-4.765-12.047z" id="hiCombined-Shape" fill="#CCD1D9"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="pinterest"><path d="M12.137 0C5.914 0 2.195 4.451 2.195 8.752c0 2.682 1.127 4.74 3.016 5.51a.967.967 0 0 0 1.334-.664l.271-1.062c.144-.541.015-.824-.293-1.188-.514-.604-.753-1.325-.753-2.266 0-2.825 2.104-5.828 6.005-5.828 3.083 0 4.997 1.748 4.997 4.562 0 3.658-1.621 6.524-3.689 6.524-.542 0-1.028-.221-1.333-.606-.287-.362-.381-.832-.265-1.323.142-.596.331-1.208.515-1.803.342-1.107.666-2.153.666-3 0-1.485-.917-2.483-2.282-2.483-1.709 0-3.048 1.723-3.048 3.92 0 1.023.262 1.805.397 2.137L6.07 18.219c-.435 1.843-.222 4.016-.049 5.202a.666.666 0 0 0 .668.579c.212 0 .408-.096.571-.306.699-.894 1.944-2.663 2.438-4.455.104-.374.451-1.741.691-2.689.752.651 1.867 1.071 2.983 1.071 4.42 0 7.628-4.018 7.628-9.553C21 4.103 17.685 0 12.137 0zm1.235 16.621c-1.291 0-2.43-.701-2.785-1.379a.489.489 0 0 0-.501-.264.5.5 0 0 0-.426.375s-.764 3.034-.926 3.621c-.28 1.016-.925 2.259-1.824 3.518-.167-1.549-.121-2.964.133-4.042l1.7-7.199a.51.51 0 0 0-.039-.337c-.003-.008-.37-.768-.37-1.868 0-1.638.899-2.92 2.048-2.92 1.157 0 1.282 1.037 1.282 1.483 0 .695-.302 1.671-.621 2.706a30 30 0 0 0-.533 1.867c-.188.795-.026 1.566.454 2.174.496.627 1.268.985 2.118.985 2.673 0 4.689-3.234 4.689-7.524 0-3.379-2.354-5.562-5.997-5.562-3.994 0-7.005 2.936-7.005 6.828 0 1.176.324 2.129.99 2.912.09.107.113.147.116.147v-.001c0 .005 0 .037-.028.141l-.259 1.055c-1.499-.611-2.394-2.325-2.394-4.584C3.195 5.533 5.969 1 12.137 1 17.059 1 20 4.594 20 8.068c0 5.036-2.726 8.553-6.628 8.553z" id="hjOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="pj_serp"><path d="M23.479 9h-6.943L18.003.586a.498.498 0 0 0-.406-.578.492.492 0 0 0-.578.406L15.521 9H9.536L11.003.586a.498.498 0 0 0-.406-.578.49.49 0 0 0-.578.406L8.521 9h-6.01a.5.5 0 0 0 0 1h5.836l-.872 5H.511a.5.5 0 0 0 0 1h6.79l-1.293 7.414a.498.498 0 1 0 .984.172L8.315 16H14.3l-1.293 7.414a.498.498 0 0 0 .494.586.499.499 0 0 0 .491-.414L15.315 16h6.164a.5.5 0 0 0 0-1h-5.99l.872-5h7.118a.5.5 0 0 0 0-1zm-9.004 6H8.489l.872-5h5.985l-.871 5z" id="hkOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="plus"><path d="M22.5 11H12V.5a.5.5 0 0 0-1 0V11H.5a.5.5 0 0 0 0 1H11v10.5a.5.5 0 0 0 1 0V12h10.5a.5.5 0 0 0 0-1z" id="hlOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" id="redirect-chain"><g id="hmWoorank-Icon" stroke="none" fill-rule="evenodd"><path d="M1.5 1a.5.5 0 0 0-1 0v17.5H19a.5.5 0 1 0 0-1H1.5V1z" id="hmShape"/><path d="M17.646 22.646a.5.5 0 0 0 .708.708L23.707 18l-5.353-5.354a.5.5 0 0 0-.708.708L22.293 18l-4.647 4.646zM6.5 17.5V1a.5.5 0 0 0-1 0v16.5a.5.5 0 1 0 1 0z" id="hmShape"/></g></symbol><symbol viewBox="0 0 24 24" id="redirect-loop"><g id="hnWoorank-Icon" stroke="none" fill-rule="evenodd"><path d="M6.5 6a.5.5 0 0 0-1 0v12.5H19a.5.5 0 1 0 0-1H6.5V6z" id="hnShape"/><path d="M10.646 6.354a.5.5 0 0 0 .708-.708l-5-5a.5.5 0 0 0-.708 0l-5 5a.5.5 0 0 0 .708.708L6 1.707l4.646 4.647zM17.646 22.646a.5.5 0 0 0 .708.708l5-5a.5.5 0 0 0 0-.708l-5-5a.5.5 0 0 0-.708.708L22.293 18l-4.647 4.646z" id="hnShape"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="reload"><g id="hoOutline_Icons_1_"><path d="M14 2c-5.465 0-9.914 4.408-9.992 9.854L1.916 8.717a.5.5 0 1 0-.832.554l3 4.5c.17.258.589.297.792.052l3.5-4a.5.5 0 0 0-.752-.658L5 12.164C5 6.777 9.236 3 14 3c4.963 0 9 4.037 9 9s-4.037 9-9 9a.5.5 0 0 0 0 1c5.514 0 10-4.486 10-10S19.514 2 14 2z" id="hoOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="ruler"><path d="M23.854 5.647l-5.5-5.5a.514.514 0 0 0-.707 0l-17.5 17.5a.5.5 0 0 0 0 .707l5.5 5.501a.5.5 0 0 0 .707 0l17.5-17.501a.5.5 0 0 0 0-.707zM6 22.794L1.207 18l2.808-2.808 2.146 2.147a.502.502 0 0 0 .708 0 .502.502 0 0 0 0-.708l-2.146-2.147 1.295-1.295 1.662 1.637a.497.497 0 0 0 .707-.005.5.5 0 0 0-.006-.707l-1.656-1.631 1.533-1.533 2.146 2.146a.502.502 0 0 0 .708 0 .502.502 0 0 0 0-.708l-2.146-2.146 1.3-1.3 1.397 1.397a.502.502 0 0 0 .708 0 .502.502 0 0 0 0-.708l-1.397-1.396L12.5 6.708l2.146 2.146a.498.498 0 0 0 .708-.001.5.5 0 0 0 0-.707L13.207 6l1.295-1.295 1.661 1.638a.5.5 0 1 0 .702-.712l-1.656-1.633L18 1.207 22.793 6 6 22.794z" id="hpOutline_Icons"/></symbol><symbol viewBox="0 0 64 64" id="ruler-colourfull"><g id="hqPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="hqruler"><path d="M62.029 18.495L45.563 2.028a5.249 5.249 0 0 0-7.419 0L2.029 38.144a5.245 5.245 0 0 0 0 7.42l16.466 16.465a5.244 5.244 0 0 0 7.419 0l36.115-36.115a5.247 5.247 0 0 0 0-7.419zM45.204 21.2a2.329 2.329 0 1 1 0-4.658 2.329 2.329 0 0 1 0 4.658z" id="hqShape" fill="#FFF"/><path d="M61.016 19.508L44.55 3.042a3.816 3.816 0 0 0-5.393 0L3.042 39.157a3.812 3.812 0 0 0 0 5.393l16.466 16.466a3.811 3.811 0 0 0 5.392 0L61.016 24.9a3.814 3.814 0 0 0 0-5.393zm-15.812 3.124a3.762 3.762 0 1 1 0-7.524 3.762 3.762 0 0 1 0 7.524z" id="hqShape" fill="#FBCE86"/><path d="M8.268 33.93l-2.553 2.555 6.302 6.302a1.806 1.806 0 0 0 2.554-2.553L8.268 33.93zm11.286-11.286l-2.553 2.555 2.54 2.54a1.806 1.806 0 0 0 2.555-2.554l-2.542-2.541zm-5.643 5.643l-2.553 2.555 2.54 2.54a1.805 1.805 0 1 0 2.554-2.553l-2.54-2.542zm11.287-11.286l-2.554 2.554 6.303 6.304a1.806 1.806 0 0 0 2.554-2.554L25.198 17zm13.827-8.745l-2.541-2.541-2.554 2.554 2.54 2.54a1.806 1.806 0 0 0 2.555-2.553zm-8.184 3.102l-2.554 2.554 2.54 2.54a1.805 1.805 0 1 0 2.554-2.553l-2.54-2.541z" id="hqShape" fill="#D3860C"/></g></g></symbol><symbol viewBox="0 0 24 24" id="save-settings"><g fill-rule="evenodd" stroke-width="0"><path d="M0 0v24h24V4l-4-4H0zm18 8H5V1h13v7zM5 23.02V14h14v9.02H5zM20 23V13H4v10H1V1h3v8h15V1l4 4v18h-3zM6.556 16h3.888c.308 0 .556-.223.556-.5s-.248-.5-.556-.5H6.556c-.308 0-.556.223-.556.5s.248.5.556.5zm4.944 1h-5a.5.5 0 1 0 0 1h5a.5.5 0 1 0 0-1zm1.645.14a.529.529 0 0 0-.145.357c0 .13.055.26.145.357.095.09.22.146.355.146.13 0 .26-.055.355-.146a.53.53 0 0 0 .145-.357.53.53 0 0 0-.145-.357.52.52 0 0 0-.71 0z"/><path d="M17 2h-5v5h5V2zm-1 4h-3V3h3v3z"/></g></symbol><symbol viewBox="0 0 120 120" id="say-hi"><defs><circle id="hspath-1" cx="60" cy="60" r="60"/></defs><g id="hsPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><mask id="hsmask-2" fill="#fff"><use xlink:href="#hspath-1"/></mask><use id="hsMask" fill="#E6E9ED" xlink:href="#hspath-1"/><path d="M95 34H25c-2.761 0-5 2.229-5 4.978v44.8c0 2.749 2.239 4.978 5 4.978h70c2.761 0 5-2.23 5-4.978v-44.8c0-2.75-2.239-4.978-5-4.978z" id="hsShape" fill="#FFF" mask="url(#hsmask-2)"/><path d="M25 34c-2.761 0-5 2.229-5 4.978V53.91h80V38.978c0-2.75-2.239-4.978-5-4.978H25z" id="hsShape-Copy-4" fill="#D9534F" mask="url(#hsmask-2)"/><path id="hsRectangle-60" fill-opacity=".5" fill="#FFF" mask="url(#hsmask-2)" d="M48 48h25v2.489H48z"/><path d="M50.342 44h-1.18v-2.753h-2.953V44h-1.18v-6.298h1.18v2.709h2.953v-2.71h1.18V44zm6.022-6.298v.932h-2.792v1.747h2.2v.901h-2.2v1.782h2.792V44h-3.972v-6.298h3.972zm2.965 5.331h2.521V44h-3.693v-6.298h1.172v5.331zm5.28 0h2.523V44h-3.694v-6.298h1.172v5.331zm9.803-2.182c0 .462-.077.89-.23 1.283a2.939 2.939 0 0 1-1.655 1.694 3.394 3.394 0 0 1-1.303.242 3.41 3.41 0 0 1-1.304-.242 2.957 2.957 0 0 1-1.01-.673 3.022 3.022 0 0 1-.652-1.021 3.49 3.49 0 0 1-.23-1.283c0-.462.076-.89.23-1.283.154-.393.371-.734.651-1.021.28-.288.617-.512 1.01-.673a3.41 3.41 0 0 1 1.305-.242c.476 0 .91.081 1.302.244a2.98 2.98 0 0 1 1.007.673c.278.286.495.626.649 1.02.153.393.23.82.23 1.282zm-1.202 0c0-.346-.045-.656-.137-.93a1.967 1.967 0 0 0-.394-.699 1.697 1.697 0 0 0-.625-.44 2.15 2.15 0 0 0-.83-.152c-.308 0-.585.05-.832.152a1.713 1.713 0 0 0-.63.44 1.975 1.975 0 0 0-.398.699 2.89 2.89 0 0 0-.139.93c0 .345.046.655.14.93.092.274.225.507.398.697.173.19.382.336.63.437.246.102.523.153.831.153.308 0 .585-.05.83-.153.245-.101.454-.247.625-.437.171-.19.303-.423.394-.697.092-.275.137-.585.137-.93z" id="hsHELLO" fill="#FFF" mask="url(#hsmask-2)"/><path d="M45.628 80.86c-.24-.096-.486-.276-.738-.54s-.402-.492-.45-.684c-.12-.48-.252-1.068-.396-1.764a94.353 94.353 0 0 1-.432-2.232c-.144-.792-.282-1.602-.414-2.43l-.378-2.376a54.645 54.645 0 0 1-.288-2.034c-.072-.6-.12-1.08-.144-1.44 0-.384.132-.6.396-.648.624-.072 1.068.156 1.332.684.12.432.252.924.396 1.476.144.552.288 1.152.432 1.8a6.353 6.353 0 0 0 1.548-.828 5.5 5.5 0 0 0 1.134-1.098c.3-.396.516-.804.648-1.224.132-.42.15-.834.054-1.242-.12-.456-.456-.792-1.008-1.008-.552-.216-1.176-.324-1.872-.324-.96 0-1.818.174-2.574.522a9.799 9.799 0 0 0-2.07 1.278 1.092 1.092 0 0 1-.954.198c-.348-.084-.582-.306-.702-.666 0-.336.06-.624.18-.864s.276-.456.468-.648a6.12 6.12 0 0 1 2.646-1.62 10.955 10.955 0 0 1 3.222-.468c.912 0 1.794.144 2.646.432.852.288 1.578.804 2.178 1.548.288.48.438.984.45 1.512a4.534 4.534 0 0 1-.234 1.548 6.15 6.15 0 0 1-.702 1.44c-.3.456-.606.852-.918 1.188.6-.048 1.212.006 1.836.162.624.156 1.182.42 1.674.792.492.372.894.858 1.206 1.458.312.6.468 1.32.468 2.16 0 .96-.21 1.836-.63 2.628a6.434 6.434 0 0 1-1.656 2.016 7.927 7.927 0 0 1-2.34 1.296 8.041 8.041 0 0 1-2.718.468c-.408 0-.732-.12-.972-.36a.527.527 0 0 1-.324-.108zm-.144-7.56c.192.936.372 1.908.54 2.916.168 1.008.348 2.016.54 3.024h.144c.528 0 1.11-.096 1.746-.288a6.567 6.567 0 0 0 1.782-.846 4.949 4.949 0 0 0 1.368-1.368c.36-.54.528-1.146.504-1.818-.12-.6-.396-1.056-.828-1.368-.432-.312-.954-.516-1.566-.612a7.502 7.502 0 0 0-2.016-.018c-.732.084-1.47.21-2.214.378zm19.404-5.364c.72.264 1.326.66 1.818 1.188a5.7 5.7 0 0 1 1.134 1.782c.264.66.414 1.338.45 2.034a5.414 5.414 0 0 1-.234 1.944c-.264.672-.6 1.332-1.008 1.98a9.017 9.017 0 0 1-1.404 1.728 6.633 6.633 0 0 1-1.8 1.224c-.672.312-1.416.468-2.232.468-.984 0-1.812-.228-2.484-.684a4.869 4.869 0 0 1-1.584-1.764c-.384-.72-.63-1.536-.738-2.448a9.955 9.955 0 0 1 .054-2.736 9.982 9.982 0 0 1 .486-1.962 6.64 6.64 0 0 1 .882-1.692c.36-.492.774-.894 1.242-1.206a2.822 2.822 0 0 1 1.602-.468c.336 0 .756.066 1.26.198s.972.318 1.404.558c.312-.288.696-.336 1.152-.144zm-1.368 2.628c-.264-.168-.57-.39-.918-.666-.348-.276-.654-.414-.918-.414-.288 0-.57.132-.846.396s-.516.57-.72.918a7.903 7.903 0 0 0-.522 1.062c-.144.36-.24.648-.288.864-.072.36-.12.792-.144 1.296a6.226 6.226 0 0 0 .108 1.494c.096.492.282.936.558 1.332.276.396.69.678 1.242.846.336.096.732.09 1.188-.018a4.303 4.303 0 0 0 1.35-.594 5.604 5.604 0 0 0 1.26-1.152 5.3 5.3 0 0 0 .918-1.656c.24-.696.246-1.422.018-2.178s-.69-1.302-1.386-1.638a.863.863 0 0 1-.504.18.898.898 0 0 1-.396-.072zm9.792-8.352c.024.384.042.852.054 1.404.012.552.03 1.152.054 1.8.024.648.06 1.302.108 1.962.048.66.12 1.29.216 1.89.36-.6.774-1.056 1.242-1.368.468-.312.942-.504 1.422-.576.744-.096 1.392-.012 1.944.252s1.008.63 1.368 1.098c.36.468.624.984.792 1.548.168.564.252 1.11.252 1.638a5.886 5.886 0 0 1-.882 3.132 12.62 12.62 0 0 1-2.052 2.556 17.166 17.166 0 0 1-2.304 1.872c-.756.504-1.302.864-1.638 1.08-.48.192-.948.24-1.404.144-.456-.096-.756-.24-.9-.432-.12-.288-.156-.534-.108-.738a1.31 1.31 0 0 1 .288-.558c.144-.168.318-.318.522-.45.204-.132.378-.258.522-.378a81.37 81.37 0 0 1-1.332-8.01 62.24 62.24 0 0 1-.396-8.226c0-.48.102-.756.306-.828.204-.072.378-.108.522-.108.336.048.636.18.9.396.264.216.432.516.504.9zm5.256 9.54c0-.816-.204-1.386-.612-1.71-.408-.324-.828-.462-1.26-.414-.36.048-.684.18-.972.396a3.469 3.469 0 0 0-1.242 1.836c-.108.384-.15.756-.126 1.116.048.6.114 1.248.198 1.944s.186 1.32.306 1.872c.384-.264.792-.57 1.224-.918a9.239 9.239 0 0 0 1.206-1.17 6.46 6.46 0 0 0 .918-1.386c.24-.492.36-1.014.36-1.566z" id="hsBob" fill="#444" mask="url(#hsmask-2)"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="search"><g id="htOutline_Icons_1_"><path d="M23.854 23.146l-9.009-9.009A8.455 8.455 0 0 0 17 8.5C17 3.813 13.187 0 8.5 0S0 3.813 0 8.5 3.813 17 8.5 17a8.45 8.45 0 0 0 5.637-2.156l9.009 9.009a.5.5 0 0 0 .708-.707zM1 8.5C1 4.364 4.364 1 8.5 1S16 4.364 16 8.5 12.636 16 8.5 16 1 12.636 1 8.5z" id="htOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="seo"><g id="huOutline_Icons_1_"><path d="M23.854 23.146l-9.009-9.009A8.455 8.455 0 0 0 17 8.5C17 3.813 13.187 0 8.5 0S0 3.813 0 8.5 3.813 17 8.5 17a8.45 8.45 0 0 0 5.637-2.156l9.009 9.009a.5.5 0 0 0 .708-.707zM1 8.5C1 4.364 4.364 1 8.5 1S16 4.364 16 8.5 12.636 16 8.5 16 1 12.636 1 8.5z" id="huOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="shopping-cart"><path d="M20.975 18.659l3-9A.5.5 0 0 0 23.5 9H5.808L4.486 3.385A.499.499 0 0 0 4 3H.5a.5.5 0 0 0 0 1h3.104l3.79 16.104A1.997 1.997 0 0 0 6 22c0 1.103.897 2 2 2s2-.897 2-2a1.97 1.97 0 0 0-.278-1h7.557A1.962 1.962 0 0 0 17 22c0 1.103.897 2 2 2s2-.897 2-2-.897-2-2-2H8.396l-.235-1H20.5a.503.503 0 0 0 .475-.341zM9 22a1.001 1.001 0 0 1-2 0 1.001 1.001 0 0 1 2 0zm11 0a1.001 1.001 0 0 1-2 0 1.001 1.001 0 0 1 2 0zM7.926 18l-1.883-8h16.764l-2.667 8H7.926z" id="hvOutline_Icons"/></symbol><symbol viewBox="0 0 120 120" id="sign-flag"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle fill="#CFE2F2" cx="60" cy="60" r="60"/><path d="M34 54.5l13-13 5 5 16-16 21 21-22 22c-4.011-4.012 1-11 1-11l-13 13-21-21zM52 46.5l16 16" stroke="#428BCA" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M62 68.5l5 5" stroke="#428BCA" stroke-width="2"/><path d="M31.073 58.24L61.334 88.5" stroke="#428BCA" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></g></symbol><symbol viewBox="0 0 120 120" id="sign-settings"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle fill="#DDD" cx="60" cy="60" r="60"/><path d="M80.814 63H89v-8h-8.189c-.515-2.109-1.389-4.281-2.529-6.15l5.79-5.79-7.134-7.132-5.791 5.789c-1.869-1.14-5.022-2.311-6.147-2.529V31H55v8.188c-1.297.281-4.282 1.389-6.149 2.529l-5.792-5.789-7.133 7.132 5.79 5.792c-1.14 1.867-2.232 4.914-2.532 6.148H31v8h8.184c.409 3.047 1.392 6.281 2.532 8.148l-5.792 5.792 7.135 7.132 5.79-5.792c1.869 1.143 5.181 2.005 6.151 2.534V89h10v-8.186c.969-.529 4.281-1.391 6.147-2.531l5.793 5.789 7.132-7.132-5.79-5.792c1.14-1.867 2.002-3.178 2.532-8.148z" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M71 60c0 6.075-4.925 11-11 11-6.076 0-11-4.925-11-11s4.924-11 11-11c6.075 0 11 4.925 11 11z" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></g></symbol><symbol viewBox="0 0 120 120" id="sign-star"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle fill="#FEE6C8" cx="60" cy="60" r="60"/><path d="M60 31l7 22h22L71.41 65.679 79 89 60 75 41 89l7.652-22.695L31 53h22l7-22z" stroke="#F89D0E" stroke-width="2" stroke-linejoin="round"/></g></symbol><symbol viewBox="0 0 120 120" id="sign-stop"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle fill="#F6D4D4" cx="60" cy="60" r="60"/><path d="M81 57.109v16.39c0 6.965-6.978 14-13.942 14h-8.409c-4.317 0-8.334-3.211-10.649-6.854C43.658 73.812 38 61.5 38 61.5c-1.225-2.45-1-4 0-5s3-2 5 1l6 8.827V41.5c0-2.09 1.911-4 4-4s4 1.91 4 4v15" stroke="#D9534F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M57 51.5v-15c0-2.089 1.911-4 4-4s4 1.911 4 4v15M65 56.5v-15c0-2.089 1.911-4 4-4s4 1.911 4 4v14.566M73 59.848V48.5c0-2.09 1.911-4 4-4s4 1.91 4 4v14.913" stroke="#D9534F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></g></symbol><symbol viewBox="0 0 120 120" id="sign-success"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><circle fill="#D7EDD6" cx="60" cy="60" r="60"/><path d="M80.174 35L48.653 66.521l-8.827-8.826L31 66.521l17.653 17.653L89 43.826 80.174 35z" stroke="#5CB85C" stroke-width="2" stroke-linejoin="round"/></g></symbol><symbol viewBox="0 0 24 24" id="simple-redirect"><g id="ibWoorank-Icon" stroke="none" fill-rule="evenodd"><g id="ibGroup"><path d="M1.5 1a.5.5 0 0 0-1 0v17.5H19a.5.5 0 1 0 0-1H1.5V1z" id="ibShape"/><path d="M17.646 22.646a.5.5 0 0 0 .708.708L23.707 18l-5.353-5.354a.5.5 0 0 0-.708.708L22.293 18l-4.647 4.646z" id="ibShape"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="sitemap"><g id="icOutline_Icons_1_"><path d="M23.5 18.001H21v-5.5a.5.5 0 0 0-.5-.5h-8v-6h7a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 0-.5-.5h-15a.5.5 0 0 0-.5.5v4a.5.5 0 0 0 .5.5h7v6h-8a.5.5 0 0 0-.5.5v5.5H.5a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-5a.5.5 0 0 0-.5-.5H4v-5h7.5v5h-2a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-5a.5.5 0 0 0-.5-.5h-2v-5H20v5h-1.5a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-5a.5.5 0 0 0-.5-.5zM5 5.001v-3h14v3h-6.5V5h-1v.001H5zm0 14v4H1v-4h4zm9 4h-4v-4h4v4zm9 0h-4v-4h4v4z" id="icOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="slide-chat"><g id="idOutline_Icons"><path d="M22.5 4a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5H.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5H2v13H.521a.5.5 0 0 0 0 1H11v2.071c-.86.223-1.5 1-1.5 1.929 0 1.103.897 2 2 2s2-.897 2-2c0-.929-.64-1.706-1.5-1.929V18h10.479a.5.5 0 0 0 0-1H21V4h1.5zm-10 18a1.001 1.001 0 0 1-2 0 1.001 1.001 0 0 1 2 0zM1 1h21v2H1V1zm19 16H3V4h17v13z"/><path d="M6.553 14.776A.499.499 0 0 0 7 15.5a.505.505 0 0 0 .211-.046l2.704-1.257c.55.148 1.124.223 1.71.223 3.032 0 5.5-2.054 5.5-4.578 0-2.525-2.468-4.58-5.5-4.58s-5.5 2.054-5.5 4.58c0 1.136.486 2.201 1.379 3.037l-.951 1.897zm.572-4.935c0-1.974 2.019-3.58 4.5-3.58s4.5 1.606 4.5 3.58c0 1.973-2.019 3.578-4.5 3.578a5.526 5.526 0 0 1-1.606-.234.497.497 0 0 0-.356.025l-1.573.732.483-.964a.501.501 0 0 0-.136-.615c-.846-.675-1.312-1.571-1.312-2.522z"/></g></symbol><symbol viewBox="0 0 24 24" id="slideshow"><g id="ieWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><g id="ieslideshow"><path id="ieShape" d="M1 23V5h2.5V4H0v20h20v-3.5h-1V23z"/><path d="M23 1v19H4V1h19zm1-1H3v21h21V0z" id="ieRectangle-path"/><path d="M16.937 10.204L11 13.634V7.3l5.937 2.903zm2.126-.074L10 5.7v9.667l9.063-5.236z" id="ieShape"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="social"><g id="ifOutline_Icons_1_"><path d="M23 11c0-1.103-.897-2-2-2h-7.358c.286-1.175.858-3.717.858-5.281 0-.883-.24-1.621-.694-2.133A2.095 2.095 0 0 0 12.245.87c-.995 0-1.745.701-1.745 1.63 0 4.42-3.689 7.5-7 7.5h-3a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5c4.583 0 6.151.673 7.411 1.214.941.405 1.829.786 3.589.786H18c1.103 0 2-.897 2-2 0-.411-.125-.794-.339-1.112A2.005 2.005 0 0 0 21 17c0-.411-.125-.794-.339-1.112A2.005 2.005 0 0 0 22 14c0-.411-.125-.794-.339-1.112A2.005 2.005 0 0 0 23 11zm-2 1h-1a.5.5 0 0 0 0 1 1.001 1.001 0 0 1 0 2h-1a.5.5 0 0 0 0 1 1.001 1.001 0 0 1 0 2h-1a.5.5 0 0 0 0 1 1.001 1.001 0 0 1 0 2h-6.5c-1.554 0-2.278-.311-3.194-.705C7.01 19.739 5.407 19.051 1 19.003V11h2.5c3.784 0 8-3.491 8-8.5 0-.433.387-.63.745-.63.178 0 .52.049.812.379.29.327.443.835.443 1.47 0 1.912-.974 5.616-.983 5.653A.498.498 0 0 0 13 10h8a1.001 1.001 0 0 1 0 2z" id="ifOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" id="star"><path d="M12 .5l3 8h8.5l-7 6 3 9L12 18l-7.5 5.5 3-9-7-6H9z"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="star-empty"><g id="ihOutline_Icons_1_"><path d="M23.969 8.327A.5.5 0 0 0 23.5 8h-8.153L12.468.324c-.146-.39-.789-.39-.936 0L8.653 8H.5a.5.5 0 0 0-.325.88l6.744 5.782-2.894 8.681a.5.5 0 0 0 .771.561L12 18.62l7.204 5.283a.497.497 0 0 0 .591.001.501.501 0 0 0 .18-.562l-2.894-8.681 6.744-5.782a.497.497 0 0 0 .144-.552zm-7.794 5.794a.499.499 0 0 0-.149.538l2.504 7.509-6.233-4.571a.502.502 0 0 0-.593 0l-6.233 4.571 2.504-7.509a.501.501 0 0 0-.149-.538L1.852 9H9a.5.5 0 0 0 .468-.324L12 1.924l2.532 6.752A.5.5 0 0 0 15 9h7.148l-5.973 5.121z" id="ihOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="tags"><g id="iiOutline_Icons_1_"><path d="M23.854 14.662L9.346.146A.504.504 0 0 0 8.992 0H.5a.5.5 0 0 0-.5.5l.008 8.494c0 .133.053.26.146.354l14.507 14.506a.5.5 0 0 0 .707 0l8.485-8.484a.5.5 0 0 0 .001-.708zm-8.839 8.131L1.008 8.787 1 1h7.785l14.008 14.016-7.778 7.777z"/><path d="M5.5 3C4.121 3 3 4.121 3 5.5S4.121 8 5.5 8 8 6.879 8 5.5 6.879 3 5.5 3zm0 4C4.673 7 4 6.327 4 5.5S4.673 4 5.5 4 7 4.673 7 5.5 6.327 7 5.5 7z"/></g></symbol><symbol viewBox="0 0 24 24" id="technologies"><g id="ijWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><path id="ijShape" d="M10 3.854l-.74-.708L0 12l9.26 8.854.74-.708L1.48 12zM14 20.146l.74.708L24 12l-9.26-8.854-.74.708L22.52 12z"/></g></symbol><symbol viewBox="0 0 60 60" id="test"><g transform="translate(1 1)" stroke-width="2" stroke="none" fill="none" fill-rule="evenodd"><path d="M58 44c0 7.732-6.269 14-14 14s-14-6.268-14-14 6.269-14 14-14 14 6.268 14 14z" stroke="#ADDBAD" fill="#EEF8EE"/><path d="M51 39l-9 10-5-5" stroke="#5CB85C" stroke-linecap="round"/><path d="M23.956 52H4c-2.773 0-4-1.226-4-4V8h10" stroke="#AAA" stroke-linecap="round" stroke-linejoin="round"/><path d="M22.695 48H4V12h6M40 22.695V8H30" stroke="#AAA" stroke-linecap="round" stroke-linejoin="round"/><path d="M25.217 4c0-2.088-1.261-4-5.043-4-3.783 0-5.043 1.912-5.043 4H10v12h20V4h-4.783z" stroke="#AAA" stroke-linecap="round" stroke-linejoin="round" fill="#FFF"/><path d="M30 12h6v11M13 22h12.608M13 28h12.608M13 34h12.608M13 40h7.565" stroke="#AAA" stroke-linecap="round" stroke-linejoin="round"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="tools"><g id="ilOutline_Icons"><path d="M23.854 1.646l-1.5-1.5a.5.5 0 0 0-.639-.057l-3.541 2.459a.502.502 0 0 0-.068.764l.938.936-9.971 9.971-1.768-1.768a.5.5 0 0 0-.707.707l.706.707-6.218 6.22A1.992 1.992 0 0 0 .5 21.5c0 .535.208 1.037.585 1.413.377.379.879.587 1.414.587s1.037-.208 1.415-.587l6.217-6.218.707.707a.498.498 0 0 0 .708 0 .5.5 0 0 0 0-.707l-1.767-1.767 9.972-9.972.83.83a.501.501 0 0 0 .354.146l.036-.001a.497.497 0 0 0 .364-.199L23.9 2.299a.5.5 0 0 0-.046-.653zM3.207 22.207a1.02 1.02 0 0 1-1.414 0c-.189-.189-.293-.44-.293-.707s.104-.518.293-.707l6.217-6.219 1.414 1.414-6.217 6.219zM20.879 4.671l-1.644-1.642 2.707-1.88.897.898-1.96 2.624z"/><path d="M5.899 8.789l3.517 3.509.707-.708-3.746-3.737a.5.5 0 0 0-.549-.106 3.482 3.482 0 0 1-3.84-.728 3.459 3.459 0 0 1-.965-3.074L2.5 5.361c.093.09.217.139.346.139H5a.5.5 0 0 0 .5-.5V2.934a.497.497 0 0 0-.14-.346L3.9 1.066c1.098-.204 2.21.14 3.037.966a3.484 3.484 0 0 1 .746 3.841.502.502 0 0 0 .108.549l3.745 3.743.707-.707-3.516-3.515a4.478 4.478 0 0 0-1.082-4.618C6.337.019 4.472-.35 2.782.365a.502.502 0 0 0-.166.806L4.5 3.135V4.5H3.047l-1.92-1.841a.503.503 0 0 0-.807.166 4.45 4.45 0 0 0 .961 4.9 4.463 4.463 0 0 0 4.618 1.064zM17.883 15.099l-3.517-3.518-.707.707 3.745 3.748a.5.5 0 0 0 .549.106 3.482 3.482 0 0 1 3.84.748 3.48 3.48 0 0 1 .963 3.128l-1.571-1.45a.5.5 0 0 0-.339-.133h-2a.5.5 0 0 0-.5.5v2c0 .13.05.254.14.347l1.469 1.523a3.482 3.482 0 0 1-3.11-.966 3.484 3.484 0 0 1-.746-3.841.502.502 0 0 0-.107-.548l-3.747-3.748-.707.707 3.519 3.52a4.48 4.48 0 0 0 1.082 4.618 4.484 4.484 0 0 0 4.938.959.499.499 0 0 0 .166-.807l-1.895-1.965v-1.298h1.305l2.011 1.856a.499.499 0 0 0 .799-.172 4.48 4.48 0 0 0-.961-4.936 4.47 4.47 0 0 0-4.619-1.085z"/></g></symbol><symbol viewBox="0 0 24 24" id="top-in"><path d="M15 13h8v-1h-8v1zM1 13h8v-1H1v1zM21.5 1v9.5h1V0h-21v10.5h1V1h19zM2 20a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 20zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 18zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 16zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 14zm20 6a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 20zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 18zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 16zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 14zM2 22a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 4 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 6 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 8 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 10 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 12 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 14 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 16 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 18 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 20 22zM11.5 6.979V18.14h1V6.953l2.057 2.072a.501.501 0 0 0 .709-.706l-2.889-2.908a.498.498 0 0 0-.704-.004L8.738 8.29a.5.5 0 0 0 .701.713L11.5 6.979zM22 22a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 22z" stroke="none" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 24 24" id="top-out"><path d="M2 20a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 20zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 18zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 16zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 14zm20 6a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 20zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 18zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 16zm0-2a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 14zM2 22a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 2 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 4 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 6 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 8 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 10 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 12 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 14 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 16 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 18 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 20 22zm2 0a.501.501 0 1 0 .002 1.002A.501.501 0 0 0 22 22zm-10.5-4.517L9.443 15.41a.501.501 0 0 0-.709.706l2.889 2.908a.496.496 0 0 0 .704.004l2.935-2.883a.5.5 0 0 0-.701-.713L12.5 17.457V6.141h-1v11.342zM15 13h8v-1h-8v1zM1 13h8v-1H1v1zM21.5 1v9.5h1V0h-21v10.5h1V1h19z" stroke="none" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="traffic"><g id="ioOutline_Icons_1_"><g id="ioOutline_Icons"><path d="M1.707 10H14.5a.5.5 0 0 0 0-1H1.707l3.146-3.146a.5.5 0 0 0-.707-.707L.147 9.146a.5.5 0 0 0 0 .708l3.999 4a.5.5 0 0 0 .707-.707L1.707 10zM23.853 14.146l-3.999-3.999a.5.5 0 0 0-.707.707L22.293 14H9.5a.5.5 0 0 0 0 1h12.793l-3.146 3.146a.5.5 0 0 0 .707.707l3.999-4a.5.5 0 0 0 0-.707z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="trash"><g id="ipOutline_Icons_1_"><g id="ipOutline_Icons"><path d="M23 3h-7V.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5V3H1a.5.5 0 0 0 0 1h2v19.5a.5.5 0 0 0 .5.5h16a.5.5 0 0 0 .5-.5V4h3a.5.5 0 0 0 0-1zM8 1h7v2H8V1zm11 22H4V4h15v19z"/><path d="M7.5 6.5A.5.5 0 0 0 7 7v12a.5.5 0 0 0 1 0V7a.5.5 0 0 0-.5-.5zM11.5 6.5a.5.5 0 0 0-.5.5v12a.5.5 0 0 0 1 0V7a.5.5 0 0 0-.5-.5zM15 7v12a.5.5 0 0 0 1 0V7a.5.5 0 0 0-1 0z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-down"><path stroke-width="0" stroke-linejoin="round" stroke-miterlimit="10" d="M.501 2.5h23l-11.5 19z" id="iqOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-down-empty"><path d="M23.936 2.255A.5.5 0 0 0 23.5 2H.5a.5.5 0 0 0-.427.759l11.5 19a.5.5 0 0 0 .855 0l11.5-19a.5.5 0 0 0 .008-.504zM12 20.534L1.388 3h21.226L12 20.534z" id="irOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-left"><path stroke-width="0" d="M21.5.5v23L2.5 12z" id="isOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-left-empty"><path d="M21.746.064a.504.504 0 0 0-.504.008l-19 11.5a.499.499 0 0 0-.001.856l19 11.5A.501.501 0 0 0 22 23.5V.5a.5.5 0 0 0-.254-.436zM21 22.613L3.466 12 21 1.387v21.226z" id="itOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-right"><path stroke-width="0" stroke-linejoin="round" stroke-miterlimit="10" d="M2.527 23.505v-23l18.973 11.5z" id="iuOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-right-empty"><path d="M21.759 11.577L2.787.077a.499.499 0 0 0-.76.428v23a.5.5 0 0 0 .759.428l18.973-11.5a.5.5 0 0 0 0-.856zM3.027 22.617V1.393l17.508 10.612L3.027 22.617z" id="ivOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-up"><path stroke-width="0" stroke-linejoin="round" stroke-miterlimit="10" d="M23.501 21.5h-23l11.5-19z" id="iwOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="triangle-up-empty"><path d="M23.866 21.139L12.428 2.241c-.181-.299-.675-.299-.855 0l-11.5 19A.5.5 0 0 0 .5 22h23a.5.5 0 0 0 .366-.861zM1.388 21L12 3.466 22.613 21H1.388z" id="ixOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="twitter"><path d="M23.79 4.512a.499.499 0 0 0-.586-.134c-.346.153-.653.23-.939.235.323-.382.452-.797.624-1.348l.088-.282a.5.5 0 0 0-.732-.582 8.6 8.6 0 0 1-2.468.988A5.072 5.072 0 0 0 16.298 2a5.05 5.05 0 0 0-5.021 5.534 12.444 12.444 0 0 1-8.384-4.518.523.523 0 0 0-.427-.183.501.501 0 0 0-.393.247 5.053 5.053 0 0 0 .215 5.413 2.916 2.916 0 0 1-.192-.1c-.155-.086-.344-.055-.496.035a.55.55 0 0 0-.247.46c0 1.626.786 3.109 2.024 4.039a.502.502 0 0 0-.408.648 5.046 5.046 0 0 0 3.39 3.301 8.637 8.637 0 0 1-5.338 1.086.502.502 0 0 0-.328.918A13.38 13.38 0 0 0 7.929 21c8.405 0 13.428-6.828 13.428-13.429 0-.112-.001-.224-.003-.335.114-.08.23-.159.347-.239.78-.533 1.587-1.084 2.123-1.885a.502.502 0 0 0-.034-.6zm-2.654 1.66c-.199.135-.395.27-.583.406a.502.502 0 0 0-.207.428c.008.188.011.375.011.565C20.356 13.681 15.708 20 7.929 20c-1.707 0-3.382-.35-4.933-1.022a9.54 9.54 0 0 0 5.003-2.006.5.5 0 0 0-.299-.893 4.046 4.046 0 0 1-3.46-2.075c.467.003.937-.054 1.39-.176a.5.5 0 0 0-.033-.974A4.054 4.054 0 0 1 2.425 9.63c.473.161.969.252 1.469.269.242.016.424-.133.493-.346s-.012-.446-.198-.57a4.04 4.04 0 0 1-1.558-4.742 13.442 13.442 0 0 0 9.216 4.339.5.5 0 0 0 .513-.613A4.048 4.048 0 0 1 16.3 3c1.114 0 2.189.466 2.952 1.278a.504.504 0 0 0 .461.149 9.6 9.6 0 0 0 1.876-.575c-.135.208-.323.365-.665.569a.502.502 0 0 0 .035.878c.332.164.658.262.989.299-.262.198-.539.388-.812.574z" id="iyOutline_Icons"/></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="unlock"><g id="izOutline_Icons_1_"><path d="M12 14c-.552 0-1 .449-1 1a.99.99 0 0 0 .5.847V18.5a.5.5 0 0 0 1 0v-2.653A.99.99 0 0 0 13 15c0-.551-.448-1-1-1z"/><path d="M3.5 24h17a.5.5 0 0 0 .5-.5v-14a.5.5 0 0 0-.5-.5H18V6c0-3.309-2.691-6-6-6S6 2.691 6 6a.5.5 0 0 0 1 0c0-2.757 2.243-5 5-5s5 2.243 5 5v3H3.5a.5.5 0 0 0-.5.5v14a.5.5 0 0 0 .5.5zM4 10h16v13H4V10z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="usability"><g id="jaOutline_Icons_1_"><path d="M18 10h-1.086c-.206-.582-.762-1-1.414-1h-1.586c-.206-.582-.762-1-1.414-1H11V4c0-1.103-.897-2-2-2s-2 .897-2 2v10.414l-1.832-1.57a1.706 1.706 0 0 0-2.308.089c-.587.587-.664 1.505-.209 2.147.161.274 3.95 6.72 5.449 8.72a.5.5 0 0 0 .4.2h9a.498.498 0 0 0 .48-.363l1.615-5.653c.269-.94.405-1.911.405-2.885V12c0-1.103-.897-2-2-2zm1 5.099c0 .881-.123 1.76-.365 2.611L17.123 23h-8.37c-1.562-2.167-5.201-8.363-5.262-8.461a.7.7 0 0 1 1.026-.936l2.657 2.278A.503.503 0 0 0 8 15.5V4a1.001 1.001 0 0 1 2 0v7.5a.5.5 0 0 0 1 0V9h1.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0V10h1.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0V11h1c.552 0 1 .449 1 1v3.099z" id="jaOutline_Icons"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="visitors"><g id="jbOutline_Icons_1_"><g id="jbOutline_Icons"><path d="M12 14.117v-1.923c.339-.337.913-1.15.991-2.838.459-.215.759-.735.759-1.393 0-.564-.222-1.028-.576-1.284.325-.646.833-1.74.561-2.836-.332-1.334-2.253-1.808-3.798-1.808-1.368 0-3.032.372-3.625 1.383-.525-.03-.929.11-1.22.417-.709.75-.348 2.152-.153 2.905.03.117.056.207.061.224v2c0 1.89 1.162 2.931 2 3.337v1.817c-.405.151-.818.3-1.23.448-2.607.939-4.858 1.75-5.271 2.996C.006 19.051 0 22.36 0 22.5a.5.5 0 0 0 .5.5h18a.5.5 0 0 0 .5-.5c0-.14-.006-3.449-.499-4.938-.482-1.454-3.237-2.236-6.501-3.445zM1.007 22c.021-.971.104-3.105.441-4.124.26-.785 2.7-1.664 4.661-2.37.527-.19 1.058-.381 1.569-.575A.5.5 0 0 0 8 14.464v-2.5a.505.505 0 0 0-.349-.477C7.583 11.465 6 10.931 6 8.964v-2c0-.114-.031-.234-.092-.472-.103-.401-.418-1.62-.089-1.968.146-.156.506-.111.708-.07a.499.499 0 0 0 .584-.37c.148-.598 1.364-1.049 2.827-1.049s2.679.451 2.827 1.049c.199.802-.281 1.749-.54 2.257-.145.286-.225.443-.225.623a.5.5 0 0 0 .5.5c.172 0 .25.293.25.5 0 .208-.078.5-.25.5a.5.5 0 0 0-.5.5c0 2.01-.764 2.575-.763 2.575a.498.498 0 0 0-.237.425v2.5a.5.5 0 0 0 .324.468c2.409.909 5.896 1.945 6.228 2.945.337 1.018.421 3.152.441 4.124H1.007z"/><path d="M23.501 17.562c-.388-1.167-2.337-2.352-6.501-3.942v-.925c.339-.337.913-1.15.991-2.837.192-.09.358-.235.487-.429.175-.263.271-.605.271-.965 0-.572-.228-1.041-.589-1.294.322-.694.85-1.899.575-3.01-.173-.693-.962-1.454-1.877-1.808-.893-.346-1.785-.27-2.51.215a.5.5 0 1 0 .554.832c.574-.383 1.185-.274 1.595-.115.705.274 1.197.834 1.268 1.117.203.815-.288 1.868-.55 2.433-.143.306-.215.46-.215.63a.498.498 0 0 0 .5.5c.172 0 .25.293.25.5a.77.77 0 0 1-.104.41c-.055.083-.103.09-.146.09a.5.5 0 0 0-.5.5c0 2.01-.764 2.575-.763 2.575a.498.498 0 0 0-.237.425v1.5a.5.5 0 0 0 .324.468c3.856 1.454 5.952 2.613 6.228 3.445.337 1.018.421 3.152.441 4.124H21A.5.5 0 0 0 21 23h2.5a.5.5 0 0 0 .5-.5c0-.14-.006-3.449-.499-4.938z"/></g></g></symbol><symbol viewBox="0 0 476 51" id="woorank-academy"><g id="jcWoorank-Logo-Icon" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="jcGroup"><g transform="translate(55)" id="jcShape" fill="#000"><path d="M71.1 31.466c0 9.26-7.112 16.261-16.682 16.261-9.568 0-16.647-7.001-16.647-16.26 0-9.26 7.08-16.262 16.647-16.262 9.57 0 16.682 7.001 16.682 16.261zm-26.379 0c0 5.84 4.17 9.905 9.697 9.905 5.529 0 9.732-4.065 9.732-9.905 0-5.84-4.203-9.906-9.732-9.906-5.528 0-9.697 4.066-9.697 9.906z"/><path d="M100.809 31.466c0 9.26-7.112 16.261-16.681 16.261-9.568 0-16.648-7.001-16.648-16.26 0-9.26 7.08-16.262 16.648-16.262 9.57 0 16.68 7.001 16.68 16.261h.001zm-26.379 0c0 5.84 4.171 9.905 9.698 9.905 5.528 0 9.73-4.065 9.73-9.905 0-5.84-4.202-9.906-9.73-9.906-5.527 0-9.698 4.066-9.698 9.906zm45.669-9.53c-.91-.201-1.84-.306-2.772-.312-4.3 0-7.435 4.376-7.37 11.294V46.92H103.2V16.01h6.692v2.484c1.808-2.42 4.656-3.29 8.987-3.29 2.283 0 4.279.42 5.859 1.077a18.215 18.215 0 0 0-4.64 5.654l.001.001zm25.816 24.985V44.21c-1.518 1.856-5.334 3.517-9.731 3.517-8.663 0-15.484-6.808-15.484-16.26 0-9.454 6.82-16.262 15.484-16.262 4.397 0 8.327 1.837 9.731 3.548v-2.742h6.755v30.91h-6.755zm-8.923-5.55c5.593 0 9.342-4.258 9.342-9.905 0-5.647-3.75-9.906-9.342-9.906-5.817 0-9.342 4.485-9.342 9.906 0 5.42 3.525 9.905 9.342 9.905zm48.511-13.874V46.92h-6.789V29.724c0-5.195-2.684-8.1-7.209-8.1-4.364 0-8.016 2.871-8.016 8.165V46.92H156.7V16.01h6.724v3.776c2.488-3.647 6.336-4.582 9.503-4.582 7.37 0 12.576 5.064 12.576 12.292v.001zm12.503.203l10.216-11.689h8.502l-12.963 14.55 13.092 16.36h-8.568L197.975 34h-1.686v12.921H189.5V7.235L196.289.46V27.7h1.717zM42.633 31.732c0-4.37 2.389-8.174 5.928-10.208l2.687-5.453-11.976 8.389-4.489 9.817-8.876-20.954-8.944 20.96-8.327-18.212H.496l16.521 33.532 8.885-20.108 8.821 20.113 8.028-16.293c-.07-.52-.118-1.046-.118-1.583z"/></g><path d="M20 51c16.475 0 30-20 30-20S36.475 11 20 11C9.223 11 0 20.223 0 31c0 10.778 9.223 20 20 20zm-2.768-13.232L19 39.536l1.768-1.768 10-10a2.5 2.5 0 0 0-3.536-3.536l-8.194 8.27-3.27-3.27a2.5 2.5 0 0 0-3.536 3.536l5 5z" id="jcShape" fill="#428BCA"/><path d="M300.516 47l-3.822-9.763h-12.303L280.61 47H277l12.136-30.822h3.002L304.211 47h-3.695zm-4.934-12.976l-3.57-9.51c-.462-1.205-.938-2.681-1.428-4.431-.307 1.344-.748 2.82-1.322 4.43l-3.612 9.511h9.932zm25.132-14.97c-3.374 0-6.036 1.123-7.99 3.37-1.952 2.247-2.928 5.323-2.928 9.228 0 4.017.941 7.121 2.824 9.312 1.883 2.19 4.567 3.286 8.052 3.286 2.141 0 4.584-.385 7.328-1.155v3.128c-2.128.798-4.753 1.197-7.874 1.197-4.521 0-8.01-1.372-10.467-4.115-2.456-2.744-3.684-6.642-3.684-11.695 0-3.164.591-5.935 1.774-8.315s2.89-4.213 5.123-5.5c2.232-1.288 4.86-1.932 7.884-1.932 3.22 0 6.033.588 8.44 1.763l-1.511 3.066c-2.324-1.092-4.648-1.638-6.971-1.638zM353.993 47l-3.822-9.763h-12.303L334.088 47h-3.61l12.135-30.822h3.002L357.688 47h-3.695zm-4.934-12.976l-3.57-9.51c-.462-1.205-.938-2.681-1.427-4.431-.308 1.344-.75 2.82-1.323 4.43l-3.612 9.511h9.932zm37.352-2.666c0 5.067-1.376 8.94-4.126 11.621-2.75 2.68-6.708 4.021-11.873 4.021h-8.504V16.304h9.406c4.774 0 8.483 1.322 11.128 3.968 2.646 2.645 3.969 6.34 3.969 11.086zm-3.78.126c0-4.003-1.004-7.02-3.013-9.05-2.008-2.03-4.993-3.044-8.954-3.044h-5.186v24.524h4.346c4.255 0 7.453-1.047 9.595-3.14 2.142-2.092 3.212-5.189 3.212-9.29zM410.367 47h-17.112V16.304h17.112v3.17h-13.542v9.89h12.723v3.149h-12.723v11.296h13.542V47zm20.387 0L420.34 19.79h-.168c.196 2.155.294 4.716.294 7.684V47h-3.296V16.304h5.375l9.721 25.321h.168l9.805-25.321h5.333V47h-3.57V27.222c0-2.268.099-4.731.295-7.39h-.168L433.63 47h-2.877zm33.048-15.348l8.189-15.348h3.863l-10.246 18.791V47h-3.611V35.263l-10.226-18.96h3.906l8.125 15.349z" id="jcACADEMY" fill="#888"/></g></g></symbol><symbol viewBox="0 0 476 51" id="woorank-academy-nocolor"><g id="jdWoorank-Logo-Icon" stroke="none" fill-rule="evenodd"><g id="jdGroup"><g transform="translate(55)"><path d="M71.1 31.466c0 9.26-7.112 16.261-16.682 16.261-9.568 0-16.647-7.001-16.647-16.26 0-9.26 7.08-16.262 16.647-16.262 9.57 0 16.682 7.001 16.682 16.261zm-26.379 0c0 5.84 4.17 9.905 9.697 9.905 5.529 0 9.732-4.065 9.732-9.905 0-5.84-4.203-9.906-9.732-9.906-5.528 0-9.697 4.066-9.697 9.906z"/><path d="M100.809 31.466c0 9.26-7.112 16.261-16.681 16.261-9.568 0-16.648-7.001-16.648-16.26 0-9.26 7.08-16.262 16.648-16.262 9.57 0 16.68 7.001 16.68 16.261h.001zm-26.379 0c0 5.84 4.171 9.905 9.698 9.905 5.528 0 9.73-4.065 9.73-9.905 0-5.84-4.202-9.906-9.73-9.906-5.527 0-9.698 4.066-9.698 9.906zm45.669-9.53c-.91-.201-1.84-.306-2.772-.312-4.3 0-7.435 4.376-7.37 11.294V46.92H103.2V16.01h6.692v2.484c1.808-2.42 4.656-3.29 8.987-3.29 2.283 0 4.279.42 5.859 1.077a18.215 18.215 0 0 0-4.64 5.654l.001.001zm25.816 24.985V44.21c-1.518 1.856-5.334 3.517-9.731 3.517-8.663 0-15.484-6.808-15.484-16.26 0-9.454 6.82-16.262 15.484-16.262 4.397 0 8.327 1.837 9.731 3.548v-2.742h6.755v30.91h-6.755zm-8.923-5.55c5.593 0 9.342-4.258 9.342-9.905 0-5.647-3.75-9.906-9.342-9.906-5.817 0-9.342 4.485-9.342 9.906 0 5.42 3.525 9.905 9.342 9.905zm48.511-13.874V46.92h-6.789V29.724c0-5.195-2.684-8.1-7.209-8.1-4.364 0-8.016 2.871-8.016 8.165V46.92H156.7V16.01h6.724v3.776c2.488-3.647 6.336-4.582 9.503-4.582 7.37 0 12.576 5.064 12.576 12.292v.001zm12.503.203l10.216-11.689h8.502l-12.963 14.55 13.092 16.36h-8.568L197.975 34h-1.686v12.921H189.5V7.235L196.289.46V27.7h1.717zM42.633 31.732c0-4.37 2.389-8.174 5.928-10.208l2.687-5.453-11.976 8.389-4.489 9.817-8.876-20.954-8.944 20.96-8.327-18.212H.496l16.521 33.532 8.885-20.108 8.821 20.113 8.028-16.293c-.07-.52-.118-1.046-.118-1.583z"/></g><path d="M20 51c16.475 0 30-20 30-20S36.475 11 20 11C9.223 11 0 20.223 0 31c0 10.778 9.223 20 20 20zm-2.768-13.232L19 39.536l1.768-1.768 10-10a2.5 2.5 0 0 0-3.536-3.536l-8.194 8.27-3.27-3.27a2.5 2.5 0 0 0-3.536 3.536l5 5zM300.516 47l-3.822-9.763h-12.303L280.61 47H277l12.136-30.822h3.002L304.211 47h-3.695zm-4.934-12.976l-3.57-9.51c-.462-1.205-.938-2.681-1.428-4.431-.307 1.344-.748 2.82-1.322 4.43l-3.612 9.511h9.932zm25.132-14.97c-3.374 0-6.036 1.123-7.99 3.37-1.952 2.247-2.928 5.323-2.928 9.228 0 4.017.941 7.121 2.824 9.312 1.883 2.19 4.567 3.286 8.052 3.286 2.141 0 4.584-.385 7.328-1.155v3.128c-2.128.798-4.753 1.197-7.874 1.197-4.521 0-8.01-1.372-10.467-4.115-2.456-2.744-3.684-6.642-3.684-11.695 0-3.164.591-5.935 1.774-8.315s2.89-4.213 5.123-5.5c2.232-1.288 4.86-1.932 7.884-1.932 3.22 0 6.033.588 8.44 1.763l-1.511 3.066c-2.324-1.092-4.648-1.638-6.971-1.638zM353.993 47l-3.822-9.763h-12.303L334.088 47h-3.61l12.135-30.822h3.002L357.688 47h-3.695zm-4.934-12.976l-3.57-9.51c-.462-1.205-.938-2.681-1.427-4.431-.308 1.344-.75 2.82-1.323 4.43l-3.612 9.511h9.932zm37.352-2.666c0 5.067-1.376 8.94-4.126 11.621-2.75 2.68-6.708 4.021-11.873 4.021h-8.504V16.304h9.406c4.774 0 8.483 1.322 11.128 3.968 2.646 2.645 3.969 6.34 3.969 11.086zm-3.78.126c0-4.003-1.004-7.02-3.013-9.05-2.008-2.03-4.993-3.044-8.954-3.044h-5.186v24.524h4.346c4.255 0 7.453-1.047 9.595-3.14 2.142-2.092 3.212-5.189 3.212-9.29zM410.367 47h-17.112V16.304h17.112v3.17h-13.542v9.89h12.723v3.149h-12.723v11.296h13.542V47zm20.387 0L420.34 19.79h-.168c.196 2.155.294 4.716.294 7.684V47h-3.296V16.304h5.375l9.721 25.321h.168l9.805-25.321h5.333V47h-3.57V27.222c0-2.268.099-4.731.295-7.39h-.168L433.63 47h-2.877zm33.048-15.348l8.189-15.348h3.863l-10.246 18.791V47h-3.611V35.263l-10.226-18.96h3.906l8.125 15.349z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="woorank-analytics"><g id="jeOutline_Icons"><path d="M13.5 11h10a.5.5 0 0 0 .5-.5C24 4.71 19.29 0 13.5 0a.5.5 0 0 0-.5.5v10a.5.5 0 0 0 .5.5zm.5-9.987c4.841.252 8.734 4.146 8.987 8.987H14V1.013zM23.5 12h-10a.5.5 0 0 0-.354.853l7.071 7.071a.498.498 0 0 0 .708 0A10.428 10.428 0 0 0 24 12.5a.5.5 0 0 0-.5-.5zm-2.938 6.855L14.707 13h8.28a9.422 9.422 0 0 1-2.425 5.855z"/><path d="M11 13.293V3.5a.5.5 0 0 0-.5-.5C4.71 3 0 7.71 0 13.5 0 20.073 5.383 24 10.588 24c2.748 0 5.354-1.092 7.337-3.076a.5.5 0 0 0 0-.707L11 13.293zM10.588 23C5.875 23 1 19.447 1 13.5c0-5.07 3.993-9.226 9-9.487V13.5c0 .133.053.26.146.354l6.709 6.709C15.112 22.139 12.905 23 10.588 23z"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-backlinks"><g id="jfWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><g id="jf04-Backlinks"><path d="M17.346 18.054l3.6 3.6a.5.5 0 0 0 .708-.708l-3.6-3.6a.5.5 0 0 0-.708.708zM16.583 23.27l-1.1-4.1a.5.5 0 1 0-.966.26l1.1 4.1a.5.5 0 1 0 .966-.26zM23.637 15.72l-4.2-1.2a.5.5 0 0 0-.274.96l4.2 1.2a.5.5 0 0 0 .274-.96zM2.342 3.049l3.5 3.6a.5.5 0 0 0 .716-.698l-3.5-3.6a.5.5 0 0 0-.716.698zM.363 8.28l4.2 1.2a.5.5 0 1 0 .274-.96l-4.2-1.2a.5.5 0 1 0-.274.96zM9.384 4.573l-1.1-4.2a.5.5 0 1 0-.968.254l1.1 4.2a.5.5 0 1 0 .968-.254zM18.554 12.254l3.1-3.1C22.56 8.247 23.1 7.017 23.1 5.8c0-1.306-.501-2.515-1.468-3.374-1.874-1.875-4.89-1.875-6.786.02l-5.1 5.1C8.84 8.453 8.3 9.683 8.3 10.9c0 1.306.501 2.515 1.468 3.374.258.26.479.425.955.742a.5.5 0 1 0 .554-.832c-.424-.283-.603-.418-.823-.638C9.688 12.864 9.3 11.93 9.3 10.9c0-.944.43-1.922 1.154-2.646l5.1-5.1a3.786 3.786 0 0 1 5.392 0C21.712 3.836 22.1 4.77 22.1 5.8c0 .944-.43 1.922-1.154 2.646l-3.1 3.1a.5.5 0 0 0 .708.708z" id="jfShape"/><path d="M5.446 11.746l-3.1 3.1C1.44 15.753.9 16.983.9 18.2c0 1.369.478 2.494 1.468 3.374C3.41 22.5 4.52 23 5.7 23c1.306 0 2.515-.501 3.374-1.468l5.08-5.078c.906-.907 1.446-2.137 1.446-3.354 0-1.306-.501-2.515-1.468-3.374-.258-.26-.479-.425-.955-.742a.5.5 0 1 0-.554.832c.424.283.603.418.823.638.766.682 1.154 1.616 1.154 2.646 0 .944-.43 1.922-1.154 2.646l-5.1 5.1C7.664 21.612 6.73 22 5.7 22c-.91 0-1.796-.399-2.668-1.174C2.262 20.142 1.9 19.29 1.9 18.2c0-.944.43-1.922 1.154-2.646l3.1-3.1a.5.5 0 0 0-.708-.708zM18.554 9.154l1.5-1.5c.495-.496.746-1.124.746-1.854s-.251-1.358-.746-1.854C19.558 3.451 18.93 3.2 18.2 3.2c-.697 0-1.317.31-1.854.846l-2.4 2.4a.5.5 0 0 0 .708.708l2.4-2.4c.363-.364.743-.554 1.146-.554.47 0 .842.149 1.146.454.305.304.454.676.454 1.146 0 .47-.149.842-.454 1.146l-1.5 1.5a.5.5 0 0 0 .708.708z" id="jfShape"/><path d="M5.446 14.846l-1.5 1.5c-.495.496-.746 1.124-.746 1.854s.251 1.358.746 1.854c.496.495 1.124.746 1.854.746s1.358-.251 1.854-.746l2.4-2.4a.5.5 0 0 0-.708-.708l-2.4 2.4c-.304.305-.676.454-1.146.454-.47 0-.842-.149-1.146-.454-.305-.304-.454-.676-.454-1.146 0-.47.149-.842.454-1.146l1.5-1.5a.5.5 0 0 0-.708-.708z" id="jfShape"/></g></g></symbol><symbol viewBox="0 0 394 51" id="woorank-blog"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(55)" fill="#000"><path d="M71.1 31.466c0 9.26-7.112 16.261-16.682 16.261-9.568 0-16.647-7.001-16.647-16.26 0-9.26 7.08-16.262 16.647-16.262 9.57 0 16.682 7.001 16.682 16.261zm-26.379 0c0 5.84 4.17 9.905 9.697 9.905 5.529 0 9.732-4.065 9.732-9.905 0-5.84-4.203-9.906-9.732-9.906-5.528 0-9.697 4.066-9.697 9.906z"/><path d="M100.809 31.466c0 9.26-7.112 16.261-16.681 16.261-9.568 0-16.648-7.001-16.648-16.26 0-9.26 7.08-16.262 16.648-16.262 9.57 0 16.68 7.001 16.68 16.261zm-26.379 0c0 5.84 4.171 9.905 9.698 9.905 5.528 0 9.73-4.065 9.73-9.905 0-5.84-4.202-9.906-9.73-9.906-5.527 0-9.698 4.066-9.698 9.906zM120.099 21.936a13.237 13.237 0 0 0-2.772-.312c-4.3 0-7.435 4.376-7.37 11.294V46.92H103.2v-30.91h6.692v2.484c1.808-2.42 4.656-3.29 8.987-3.29 2.283 0 4.279.42 5.859 1.077a18.215 18.215 0 0 0-4.64 5.654zM145.915 46.921V44.21c-1.518 1.856-5.334 3.517-9.731 3.517-8.663 0-15.484-6.808-15.484-16.26 0-9.454 6.82-16.262 15.484-16.262 4.397 0 8.327 1.837 9.731 3.548v-2.742h6.755v30.91h-6.755zm-8.923-5.55c5.593 0 9.342-4.258 9.342-9.905 0-5.647-3.75-9.906-9.342-9.906-5.817 0-9.342 4.485-9.342 9.906 0 5.42 3.525 9.905 9.342 9.905zM185.503 27.497V46.92h-6.789V29.724c0-5.195-2.684-8.1-7.209-8.1-4.364 0-8.016 2.871-8.016 8.165V46.92H156.7v-30.91h6.724v3.776c2.488-3.647 6.336-4.582 9.503-4.582 7.37 0 12.576 5.064 12.576 12.292M198.006 27.7l10.216-11.689h8.502l-12.963 14.55a773695.725 773695.725 0 0 0 13.092 16.36h-8.568L197.975 34h-1.686v12.921H189.5V7.235L196.289.46V27.7h1.717zM42.633 31.732c0-4.37 2.389-8.174 5.928-10.208l2.687-5.453-11.976 8.389-4.489 9.817-8.876-20.954-8.944 20.96L8.636 16.07H.496l16.521 33.532 8.885-20.108 8.821 20.113 8.028-16.293c-.07-.52-.118-1.046-.118-1.583"/></g><path d="M20 51c16.475 0 30-20 30-20S36.475 11 20 11C9.223 11 0 20.223 0 31c0 10.778 9.223 20 20 20zm-2.768-13.232L19 39.536l1.768-1.768 10-10a2.5 2.5 0 0 0-3.536-3.536l-8.194 8.27-3.27-3.27a2.5 2.5 0 0 0-3.536 3.536l5 5z" fill="#428BCA"/><path d="M295.13 46.898c5.672 0 8.972-3.38 8.972-8.336 0-3.705-2.742-7.085-6.043-7.595 2.836-.602 5.439-3.195 5.439-7.085 0-4.63-3.3-7.873-8.693-7.873H281v30.889h14.13zm-.975-17.505h-9.297v-9.957h9.297c3.486 0 5.345 2.223 5.345 5.002 0 2.825-1.86 4.955-5.345 4.955zm.232 14.078h-9.529V32.82h9.53c3.764 0 5.716 2.5 5.716 5.325 0 3.288-2.138 5.326-5.717 5.326zm33.607 3.427v-3.427h-14.41V16.01h-3.858v30.889h18.268zm17.71.556c9.157 0 15.433-6.854 15.433-15.977 0-9.123-6.276-15.977-15.433-15.977s-15.386 6.854-15.386 15.977c0 9.123 6.23 15.977 15.386 15.977zm0-3.427c-6.972 0-11.388-5.372-11.388-12.55 0-7.224 4.416-12.55 11.388-12.55 6.926 0 11.435 5.326 11.435 12.55 0 7.178-4.509 12.55-11.435 12.55zm36.117 3.473c5.067 0 9.297-2.13 12.179-5.372V31.014h-14.503v3.427h10.691v6.251c-1.58 1.575-4.648 3.335-8.367 3.335-6.786 0-11.946-5.233-11.946-12.55 0-7.41 5.16-12.55 11.946-12.55 3.72 0 7.02 1.76 8.972 4.26l3.068-1.945c-2.696-3.334-6.508-5.742-12.04-5.742-8.831 0-15.943 6.344-15.943 15.977 0 9.586 7.112 16.023 15.943 16.023z" fill="#888"/></g></symbol><symbol viewBox="0 0 394 51" id="woorank-blog-nocolor"><g stroke="none" stroke-width="1" fill-rule="evenodd"><g transform="translate(55)"><path d="M71.1 31.466c0 9.26-7.112 16.261-16.682 16.261-9.568 0-16.647-7.001-16.647-16.26 0-9.26 7.08-16.262 16.647-16.262 9.57 0 16.682 7.001 16.682 16.261zm-26.379 0c0 5.84 4.17 9.905 9.697 9.905 5.529 0 9.732-4.065 9.732-9.905 0-5.84-4.203-9.906-9.732-9.906-5.528 0-9.697 4.066-9.697 9.906z"/><path d="M100.809 31.466c0 9.26-7.112 16.261-16.681 16.261-9.568 0-16.648-7.001-16.648-16.26 0-9.26 7.08-16.262 16.648-16.262 9.57 0 16.68 7.001 16.68 16.261zm-26.379 0c0 5.84 4.171 9.905 9.698 9.905 5.528 0 9.73-4.065 9.73-9.905 0-5.84-4.202-9.906-9.73-9.906-5.527 0-9.698 4.066-9.698 9.906zM120.099 21.936a13.237 13.237 0 0 0-2.772-.312c-4.3 0-7.435 4.376-7.37 11.294V46.92H103.2v-30.91h6.692v2.484c1.808-2.42 4.656-3.29 8.987-3.29 2.283 0 4.279.42 5.859 1.077a18.215 18.215 0 0 0-4.64 5.654zM145.915 46.921V44.21c-1.518 1.856-5.334 3.517-9.731 3.517-8.663 0-15.484-6.808-15.484-16.26 0-9.454 6.82-16.262 15.484-16.262 4.397 0 8.327 1.837 9.731 3.548v-2.742h6.755v30.91h-6.755zm-8.923-5.55c5.593 0 9.342-4.258 9.342-9.905 0-5.647-3.75-9.906-9.342-9.906-5.817 0-9.342 4.485-9.342 9.906 0 5.42 3.525 9.905 9.342 9.905zM185.503 27.497V46.92h-6.789V29.724c0-5.195-2.684-8.1-7.209-8.1-4.364 0-8.016 2.871-8.016 8.165V46.92H156.7v-30.91h6.724v3.776c2.488-3.647 6.336-4.582 9.503-4.582 7.37 0 12.576 5.064 12.576 12.292M198.006 27.7l10.216-11.689h8.502l-12.963 14.55a773695.725 773695.725 0 0 0 13.092 16.36h-8.568L197.975 34h-1.686v12.921H189.5V7.235L196.289.46V27.7h1.717zM42.633 31.732c0-4.37 2.389-8.174 5.928-10.208l2.687-5.453-11.976 8.389-4.489 9.817-8.876-20.954-8.944 20.96L8.636 16.07H.496l16.521 33.532 8.885-20.108 8.821 20.113 8.028-16.293c-.07-.52-.118-1.046-.118-1.583"/></g><path d="M20 51c16.475 0 30-20 30-20S36.475 11 20 11C9.223 11 0 20.223 0 31c0 10.778 9.223 20 20 20zm-2.768-13.232L19 39.536l1.768-1.768 10-10a2.5 2.5 0 0 0-3.536-3.536l-8.194 8.27-3.27-3.27a2.5 2.5 0 0 0-3.536 3.536l5 5zM295.13 46.898c5.672 0 8.972-3.38 8.972-8.336 0-3.705-2.742-7.085-6.043-7.595 2.836-.602 5.439-3.195 5.439-7.085 0-4.63-3.3-7.873-8.693-7.873H281v30.889h14.13zm-.975-17.505h-9.297v-9.957h9.297c3.486 0 5.345 2.223 5.345 5.002 0 2.825-1.86 4.955-5.345 4.955zm.232 14.078h-9.529V32.82h9.53c3.764 0 5.716 2.5 5.716 5.325 0 3.288-2.138 5.326-5.717 5.326zm33.607 3.427v-3.427h-14.41V16.01h-3.858v30.889h18.268zm17.71.556c9.157 0 15.433-6.854 15.433-15.977 0-9.123-6.276-15.977-15.433-15.977s-15.386 6.854-15.386 15.977c0 9.123 6.23 15.977 15.386 15.977zm0-3.427c-6.972 0-11.388-5.372-11.388-12.55 0-7.224 4.416-12.55 11.388-12.55 6.926 0 11.435 5.326 11.435 12.55 0 7.178-4.509 12.55-11.435 12.55zm36.117 3.473c5.067 0 9.297-2.13 12.179-5.372V31.014h-14.503v3.427h10.691v6.251c-1.58 1.575-4.648 3.335-8.367 3.335-6.786 0-11.946-5.233-11.946-12.55 0-7.41 5.16-12.55 11.946-12.55 3.72 0 7.02 1.76 8.972 4.26l3.068-1.945c-2.696-3.334-6.508-5.742-12.04-5.742-8.831 0-15.943 6.344-15.943 15.977 0 9.586 7.112 16.023 15.943 16.023z"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-crawler"><g id="jiWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M10.44 15.139a.5.5 0 1 0-.48-.878l-5.3 2.9-.238.29-1.8 5.8a.5.5 0 1 0 .956.297l1.74-5.607 5.122-2.802z" id="jiShape"/><path d="M10.223 13.9a.5.5 0 0 0-.046-1l-6.6.3-.418.264-3.1 5.8a.5.5 0 1 0 .882.472l2.966-5.55 6.316-.287z" id="jiShape"/><path d="M9.987 12.853a.5.5 0 1 0 .426-.906l-6.6-3.1-.657.223-2.8 5.4a.5.5 0 0 0 .888.46l2.579-4.973 6.164 2.896zM20.422 23.548a.5.5 0 1 0 .956-.296l-1.8-5.8-.238-.29-5.3-2.9a.5.5 0 1 0-.48.877l5.122 2.802 1.74 5.607z" id="jiShape"/><path d="M23.059 19.736a.5.5 0 1 0 .882-.472l-3.1-5.8-.418-.263-6.6-.3a.5.5 0 0 0-.046.998l6.316.288 2.966 5.549z" id="jiShape"/><path d="M22.756 14.93a.5.5 0 0 0 .888-.46l-2.8-5.4a.5.5 0 0 0-.657-.223l-6.6 3.1a.5.5 0 1 0 .426.906l6.164-2.896 2.58 4.973z" id="jiShape"/><path d="M9.7 11.5v2.6c0 .976.824 1.8 1.8 1.8h.9c.976 0 1.8-.824 1.8-1.8v-2.6h-1v2.6c0 .424-.376.8-.8.8h-.9a.824.824 0 0 1-.8-.8v-2.6h-1z"/><path d="M12 12.4A6.2 6.2 0 1 0 12 0a6.2 6.2 0 0 0 0 12.4zm0-1A5.2 5.2 0 1 1 12 1a5.2 5.2 0 0 1 0 10.4z"/><path d="M12 9.3a3.1 3.1 0 1 0 0-6.2 3.1 3.1 0 0 0 0 6.2zm0-1a2.1 2.1 0 1 1 0-4.2 2.1 2.1 0 0 1 0 4.2z"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-danger"><path d="M20 17.677L17.677 20 12.5 14.824 7.324 20 5 17.677l5.177-5.177L5 7.323 7.324 5l5.176 5.176L17.677 5 20 7.323 14.824 12.5z" id="jjWoorank-Icon" stroke="none" fill-rule="evenodd"/></symbol><symbol viewBox="0 0 184 21" id="woorank-experts"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M49.578 12.34c0 3.63-2.796 6.377-6.559 6.377-3.762 0-6.545-2.746-6.545-6.377 0-3.632 2.783-6.377 6.545-6.377 3.763 0 6.559 2.745 6.559 6.377zm-10.371 0c0 2.29 1.639 3.884 3.812 3.884 2.174 0 3.826-1.594 3.826-3.884s-1.652-3.885-3.826-3.885c-2.173 0-3.812 1.594-3.812 3.885z" fill="#000"/><path d="M61.258 12.34c0 3.63-2.796 6.377-6.558 6.377s-6.545-2.746-6.545-6.377c0-3.632 2.783-6.377 6.545-6.377s6.558 2.745 6.558 6.377zm-10.37 0c0 2.29 1.639 3.884 3.812 3.884s3.826-1.594 3.826-3.884-1.653-3.885-3.826-3.885-3.813 1.594-3.813 3.885zM68.842 8.602a5.217 5.217 0 0 0-1.09-.122c-1.69 0-2.923 1.716-2.897 4.429V18.4h-2.657V6.28h2.631v.974c.711-.949 1.83-1.29 3.534-1.29.897 0 1.682.164 2.303.422a7.147 7.147 0 0 0-1.824 2.217zM78.992 18.4v-1.063c-.597.728-2.097 1.38-3.826 1.38-3.406 0-6.087-2.67-6.087-6.377s2.681-6.377 6.087-6.377c1.73 0 3.274.72 3.826 1.391V6.28h2.656V18.4h-2.656zm-3.508-2.176c2.199 0 3.673-1.67 3.673-3.884 0-2.215-1.474-3.885-3.673-3.885-2.287 0-3.673 1.759-3.673 3.885 0 2.125 1.386 3.884 3.673 3.884zM94.557 10.783V18.4h-2.67v-6.743c0-2.038-1.055-3.177-2.834-3.177-1.716 0-3.152 1.126-3.152 3.202V18.4h-2.669V6.28h2.644v1.48c.978-1.43 2.491-1.796 3.736-1.796 2.898 0 4.945 1.986 4.945 4.82M99.473 10.863l4.016-4.584h3.343l-5.097 5.706.19.236 4.957 6.18h-3.368l-4.054-5.068h-.663V18.4h-2.669V2.837L98.798.18v10.683h.675zM38.386 12.444c0-1.713.939-3.206 2.33-4.003l1.057-2.139-4.709 3.29-1.765 3.85-3.49-8.217-3.516 8.219-3.274-7.142h-3.2l6.496 13.15 3.493-7.885 3.468 7.887 3.156-6.39a4.654 4.654 0 0 1-.046-.62" fill="#000"/><path d="M7.863 20c6.478 0 11.795-7.843 11.795-7.843S14.341 4.314 7.863 4.314C3.626 4.314 0 7.93 0 12.157 0 16.383 3.626 20 7.863 20z" fill="#428BCA"/><path d="M6.775 14.81l.695.694.695-.693 3.932-3.922a.979.979 0 0 0 0-1.386.985.985 0 0 0-1.39 0l-3.222 3.243-1.286-1.282a.985.985 0 0 0-1.39 0 .979.979 0 0 0 0 1.386l1.966 1.96z" fill="#FFF"/><path d="M118.47 18.41v-1.347h-6.474V12.88h6.346v-1.345h-6.346v-3.91h6.474V6.277h-7.991V18.41h7.99zm12.69 0l-4.754-6.239 4.48-5.893h-1.865l-3.602 4.838-3.62-4.838h-1.848l4.48 5.911-4.754 6.22h1.847l3.895-5.165 3.895 5.165h1.847zm3.164 0v-4.82h3.383c2.433 0 3.822-1.674 3.822-3.656 0-1.982-1.371-3.656-3.822-3.656h-4.9V18.41h1.517zm3.2-6.166h-3.2v-4.62h3.2c1.445 0 2.433.946 2.433 2.31s-.988 2.31-2.432 2.31zm14.008 6.165v-1.346h-6.473V12.88h6.345v-1.345h-6.345v-3.91h6.473V6.277h-7.991V18.41h7.991zm11.265 0l-3.292-4.947c1.664-.145 3.182-1.345 3.182-3.528 0-2.237-1.61-3.656-3.84-3.656h-4.901V18.41h1.518v-4.82h2.45l3.09 4.82h1.793zm-4.133-6.147h-3.2V7.624h3.2c1.445 0 2.45.928 2.45 2.31 0 1.364-1.005 2.328-2.45 2.328zm10.77 6.147V7.624h3.877V6.278h-9.253v1.346h3.859V18.41h1.518zm9.784.218c3.292 0 4.499-1.818 4.499-3.564 0-4.529-7.224-2.965-7.224-5.693 0-1.146 1.061-1.928 2.506-1.928 1.335 0 2.615.437 3.529 1.455l.914-1.109c-1.024-1.073-2.468-1.71-4.315-1.71-2.414 0-4.206 1.383-4.206 3.383 0 4.329 7.223 2.583 7.223 5.71 0 .947-.695 2.11-2.871 2.11a5.042 5.042 0 0 1-3.822-1.745l-.914 1.164c1.005 1.127 2.578 1.927 4.681 1.927z" fill="#888"/></g></symbol><symbol viewBox="0 0 184 20" id="woorank-experts-nocolor"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M49.578 12.34c0 3.63-2.796 6.377-6.559 6.377-3.762 0-6.545-2.746-6.545-6.377 0-3.632 2.783-6.377 6.545-6.377 3.763 0 6.559 2.745 6.559 6.377zm-10.371 0c0 2.29 1.639 3.884 3.812 3.884 2.174 0 3.826-1.594 3.826-3.884s-1.652-3.885-3.826-3.885c-2.173 0-3.812 1.594-3.812 3.885z"/><path d="M61.258 12.34c0 3.63-2.796 6.377-6.558 6.377s-6.545-2.746-6.545-6.377c0-3.632 2.783-6.377 6.545-6.377s6.558 2.745 6.558 6.377zm-10.37 0c0 2.29 1.639 3.884 3.812 3.884s3.826-1.594 3.826-3.884-1.653-3.885-3.826-3.885-3.813 1.594-3.813 3.885zM68.842 8.602a5.217 5.217 0 0 0-1.09-.122c-1.69 0-2.923 1.716-2.897 4.429V18.4h-2.657V6.28h2.631v.974c.711-.949 1.83-1.29 3.534-1.29.897 0 1.682.164 2.303.422a7.147 7.147 0 0 0-1.824 2.217zM78.992 18.4v-1.063c-.597.728-2.097 1.38-3.826 1.38-3.406 0-6.087-2.67-6.087-6.377s2.681-6.377 6.087-6.377c1.73 0 3.274.72 3.826 1.391V6.28h2.656V18.4h-2.656zm-3.508-2.176c2.199 0 3.673-1.67 3.673-3.884 0-2.215-1.474-3.885-3.673-3.885-2.287 0-3.673 1.759-3.673 3.885 0 2.125 1.386 3.884 3.673 3.884zM94.557 10.783V18.4h-2.67v-6.743c0-2.038-1.055-3.177-2.834-3.177-1.716 0-3.152 1.126-3.152 3.202V18.4h-2.669V6.28h2.644v1.48c.978-1.43 2.491-1.796 3.736-1.796 2.898 0 4.945 1.986 4.945 4.82M99.473 10.863l4.016-4.584h3.343l-5.097 5.706.19.236 4.957 6.18h-3.368l-4.054-5.068h-.663V18.4h-2.669V2.837L98.798.18v10.683h.675zM38.386 12.444c0-1.713.939-3.206 2.33-4.003l1.057-2.139-4.709 3.29-1.765 3.85-3.49-8.217-3.516 8.219-3.274-7.142h-3.2l6.496 13.15 3.493-7.885 3.468 7.887 3.156-6.39a4.654 4.654 0 0 1-.046-.62M7.863 20c6.478 0 11.795-7.843 11.795-7.843S14.341 4.314 7.863 4.314C3.626 4.314 0 7.93 0 12.157 0 16.383 3.626 20 7.863 20zm-1.088-5.19l.695.694.695-.693 3.932-3.922a.979.979 0 0 0 0-1.386.985.985 0 0 0-1.39 0l-3.222 3.243-1.286-1.282a.985.985 0 0 0-1.39 0 .979.979 0 0 0 0 1.386l1.966 1.96zM118.47 18.41v-1.347h-6.474V12.88h6.346v-1.345h-6.346v-3.91h6.474V6.277h-7.991V18.41h7.99zm12.69 0l-4.754-6.239 4.48-5.893h-1.865l-3.602 4.838-3.62-4.838h-1.848l4.48 5.911-4.754 6.22h1.847l3.895-5.165 3.895 5.165h1.847zm3.164 0v-4.82h3.383c2.433 0 3.822-1.674 3.822-3.656 0-1.982-1.371-3.656-3.822-3.656h-4.9V18.41h1.517zm3.2-6.166h-3.2v-4.62h3.2c1.445 0 2.433.946 2.433 2.31s-.988 2.31-2.432 2.31zm14.008 6.165v-1.346h-6.473V12.88h6.345v-1.345h-6.345v-3.91h6.473V6.277h-7.991V18.41h7.991zm11.265 0l-3.292-4.947c1.664-.145 3.182-1.345 3.182-3.528 0-2.237-1.61-3.656-3.84-3.656h-4.901V18.41h1.518v-4.82h2.45l3.09 4.82h1.793zm-4.133-6.147h-3.2V7.624h3.2c1.445 0 2.45.928 2.45 2.31 0 1.364-1.005 2.328-2.45 2.328zm10.77 6.147V7.624h3.877V6.278h-9.253v1.346h3.859V18.41h1.518zm9.784.218c3.292 0 4.499-1.818 4.499-3.564 0-4.529-7.224-2.965-7.224-5.693 0-1.146 1.061-1.928 2.506-1.928 1.335 0 2.615.437 3.529 1.455l.914-1.109c-1.024-1.073-2.468-1.71-4.315-1.71-2.414 0-4.206 1.383-4.206 3.383 0 4.329 7.223 2.583 7.223 5.71 0 .947-.695 2.11-2.871 2.11a5.042 5.042 0 0 1-3.822-1.745l-.914 1.164c1.005 1.127 2.578 1.927 4.681 1.927z"/></g></symbol><symbol viewBox="0 0 152 20" id="woorank-help"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M120.078 18V6.661h-1.411v4.879h-6.63V6.661h-1.411V18h1.411v-5.202h6.63V18h1.411zm10.881 0v-1.258h-6.018v-3.91h5.899v-1.258h-5.899V7.919h6.018V6.661h-7.429V18h7.429zm9.538 0v-1.258h-5.27V6.661h-1.411V18h6.681zm4.098 0v-4.505h3.145c2.261 0 3.553-1.564 3.553-3.417 0-1.853-1.275-3.417-3.553-3.417h-4.556V18h1.411zm2.975-5.763h-2.975V7.919h2.975c1.343 0 2.261.884 2.261 2.159s-.918 2.159-2.261 2.159z" id="jmHELP" fill="#888"/><path d="M49.578 12.34c0 3.63-2.796 6.377-6.559 6.377-3.762 0-6.545-2.746-6.545-6.377 0-3.632 2.783-6.377 6.545-6.377 3.763 0 6.559 2.745 6.559 6.377zm-10.371 0c0 2.29 1.639 3.884 3.812 3.884 2.174 0 3.826-1.594 3.826-3.884s-1.652-3.885-3.826-3.885c-2.173 0-3.812 1.594-3.812 3.885z" fill="#000"/><path d="M61.258 12.34c0 3.63-2.796 6.377-6.558 6.377s-6.545-2.746-6.545-6.377c0-3.632 2.783-6.377 6.545-6.377s6.558 2.745 6.558 6.377zm-10.37 0c0 2.29 1.639 3.884 3.812 3.884s3.826-1.594 3.826-3.884-1.653-3.885-3.826-3.885-3.813 1.594-3.813 3.885zM68.842 8.602a5.217 5.217 0 0 0-1.09-.122c-1.69 0-2.923 1.716-2.897 4.429V18.4h-2.657V6.28h2.631v.974c.711-.949 1.83-1.29 3.534-1.29.897 0 1.682.164 2.303.422a7.147 7.147 0 0 0-1.824 2.217zM78.992 18.4v-1.063c-.597.728-2.097 1.38-3.826 1.38-3.406 0-6.087-2.67-6.087-6.377s2.681-6.377 6.087-6.377c1.73 0 3.274.72 3.826 1.391V6.28h2.656V18.4h-2.656zm-3.508-2.176c2.199 0 3.673-1.67 3.673-3.884 0-2.215-1.474-3.885-3.673-3.885-2.287 0-3.673 1.759-3.673 3.885 0 2.125 1.386 3.884 3.673 3.884zM94.557 10.783V18.4h-2.67v-6.743c0-2.038-1.055-3.177-2.834-3.177-1.716 0-3.152 1.126-3.152 3.202V18.4h-2.669V6.28h2.644v1.48c.978-1.43 2.491-1.796 3.736-1.796 2.898 0 4.945 1.986 4.945 4.82M99.473 10.863l4.016-4.584h3.343l-5.097 5.706.19.236 4.957 6.18h-3.368l-4.054-5.068h-.663V18.4h-2.669V2.837L98.798.18v10.683h.675zM38.386 12.444c0-1.713.939-3.206 2.33-4.003l1.057-2.139-4.709 3.29-1.765 3.85-3.49-8.217-3.516 8.219-3.274-7.142h-3.2l6.496 13.15 3.493-7.885 3.468 7.887 3.156-6.39a4.654 4.654 0 0 1-.046-.62" fill="#000"/><path d="M7.863 20c6.478 0 11.795-7.843 11.795-7.843S14.341 4.314 7.863 4.314C3.626 4.314 0 7.93 0 12.157 0 16.383 3.626 20 7.863 20z" fill="#428BCA"/><path d="M6.775 14.81l.695.694.695-.693 3.932-3.922a.979.979 0 0 0 0-1.386.985.985 0 0 0-1.39 0l-3.222 3.243-1.286-1.282a.985.985 0 0 0-1.39 0 .979.979 0 0 0 0 1.386l1.966 1.96z" fill="#FFF"/></g></symbol><symbol viewBox="0 0 152 20" id="woorank-help-nocolor"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M120.078 18V6.661h-1.411v4.879h-6.63V6.661h-1.411V18h1.411v-5.202h6.63V18h1.411zm10.881 0v-1.258h-6.018v-3.91h5.899v-1.258h-5.899V7.919h6.018V6.661h-7.429V18h7.429zm9.538 0v-1.258h-5.27V6.661h-1.411V18h6.681zm4.098 0v-4.505h3.145c2.261 0 3.553-1.564 3.553-3.417 0-1.853-1.275-3.417-3.553-3.417h-4.556V18h1.411zm2.975-5.763h-2.975V7.919h2.975c1.343 0 2.261.884 2.261 2.159s-.918 2.159-2.261 2.159zM49.578 12.34c0 3.63-2.796 6.377-6.559 6.377-3.762 0-6.545-2.746-6.545-6.377 0-3.632 2.783-6.377 6.545-6.377 3.763 0 6.559 2.745 6.559 6.377zm-10.371 0c0 2.29 1.639 3.884 3.812 3.884 2.174 0 3.826-1.594 3.826-3.884s-1.652-3.885-3.826-3.885c-2.173 0-3.812 1.594-3.812 3.885z"/><path d="M61.258 12.34c0 3.63-2.796 6.377-6.558 6.377s-6.545-2.746-6.545-6.377c0-3.632 2.783-6.377 6.545-6.377s6.558 2.745 6.558 6.377zm-10.37 0c0 2.29 1.639 3.884 3.812 3.884s3.826-1.594 3.826-3.884-1.653-3.885-3.826-3.885-3.813 1.594-3.813 3.885zM68.842 8.602a5.217 5.217 0 0 0-1.09-.122c-1.69 0-2.923 1.716-2.897 4.429V18.4h-2.657V6.28h2.631v.974c.711-.949 1.83-1.29 3.534-1.29.897 0 1.682.164 2.303.422a7.147 7.147 0 0 0-1.824 2.217zM78.992 18.4v-1.063c-.597.728-2.097 1.38-3.826 1.38-3.406 0-6.087-2.67-6.087-6.377s2.681-6.377 6.087-6.377c1.73 0 3.274.72 3.826 1.391V6.28h2.656V18.4h-2.656zm-3.508-2.176c2.199 0 3.673-1.67 3.673-3.884 0-2.215-1.474-3.885-3.673-3.885-2.287 0-3.673 1.759-3.673 3.885 0 2.125 1.386 3.884 3.673 3.884zM94.557 10.783V18.4h-2.67v-6.743c0-2.038-1.055-3.177-2.834-3.177-1.716 0-3.152 1.126-3.152 3.202V18.4h-2.669V6.28h2.644v1.48c.978-1.43 2.491-1.796 3.736-1.796 2.898 0 4.945 1.986 4.945 4.82M99.473 10.863l4.016-4.584h3.343l-5.097 5.706.19.236 4.957 6.18h-3.368l-4.054-5.068h-.663V18.4h-2.669V2.837L98.798.18v10.683h.675zM38.386 12.444c0-1.713.939-3.206 2.33-4.003l1.057-2.139-4.709 3.29-1.765 3.85-3.49-8.217-3.516 8.219-3.274-7.142h-3.2l6.496 13.15 3.493-7.885 3.468 7.887 3.156-6.39a4.654 4.654 0 0 1-.046-.62M7.863 20c6.478 0 11.795-7.843 11.795-7.843S14.341 4.314 7.863 4.314C3.626 4.314 0 7.93 0 12.157 0 16.383 3.626 20 7.863 20zm-1.088-5.19l.695.694.695-.693 3.932-3.922a.979.979 0 0 0 0-1.386.985.985 0 0 0-1.39 0l-3.222 3.243-1.286-1.282a.985.985 0 0 0-1.39 0 .979.979 0 0 0 0 1.386l1.966 1.96z"/></g></symbol><symbol viewBox="0 0 411 51" id="woorank-index"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M126.1 31.466c0 9.26-7.112 16.261-16.682 16.261-9.568 0-16.647-7.001-16.647-16.26 0-9.26 7.08-16.262 16.647-16.262 9.57 0 16.682 7.001 16.682 16.261zm-26.379 0c0 5.84 4.17 9.905 9.697 9.905 5.529 0 9.732-4.065 9.732-9.905 0-5.84-4.203-9.906-9.732-9.906-5.528 0-9.697 4.066-9.697 9.906z" fill="#000"/><path d="M155.809 31.466c0 9.26-7.112 16.261-16.681 16.261-9.568 0-16.648-7.001-16.648-16.26 0-9.26 7.08-16.262 16.648-16.262 9.57 0 16.68 7.001 16.68 16.261zm-26.379 0c0 5.84 4.171 9.905 9.698 9.905 5.528 0 9.73-4.065 9.73-9.905 0-5.84-4.202-9.906-9.73-9.906-5.527 0-9.698 4.066-9.698 9.906zM175.099 21.936a13.237 13.237 0 0 0-2.772-.312c-4.3 0-7.435 4.376-7.37 11.294V46.92H158.2v-30.91h6.692v2.484c1.808-2.42 4.656-3.29 8.987-3.29 2.283 0 4.279.42 5.859 1.077a18.215 18.215 0 0 0-4.64 5.654zM200.915 46.921V44.21c-1.518 1.856-5.334 3.517-9.731 3.517-8.663 0-15.484-6.808-15.484-16.26 0-9.454 6.82-16.262 15.484-16.262 4.397 0 8.327 1.837 9.731 3.548v-2.742h6.755v30.91h-6.755zm-8.923-5.55c5.593 0 9.342-4.258 9.342-9.905 0-5.647-3.75-9.906-9.342-9.906-5.817 0-9.342 4.485-9.342 9.906 0 5.42 3.525 9.905 9.342 9.905zM240.503 27.497V46.92h-6.789V29.724c0-5.195-2.684-8.1-7.209-8.1-4.364 0-8.016 2.871-8.016 8.165V46.92H211.7v-30.91h6.724v3.776c2.488-3.647 6.336-4.582 9.503-4.582 7.37 0 12.576 5.064 12.576 12.292M253.006 27.7l10.216-11.689h8.502l-12.963 14.55a773695.868 773695.868 0 0 0 13.092 16.36h-8.568L252.975 34h-1.686v12.921H244.5V7.235L251.289.46V27.7h1.717zM97.633 31.732c0-4.37 2.389-8.174 5.928-10.208l2.687-5.453-11.976 8.389-4.489 9.817-8.876-20.954-8.944 20.96-8.327-18.212h-8.14l16.521 33.532 8.885-20.108 8.821 20.113 8.028-16.293c-.07-.52-.118-1.046-.118-1.583" fill="#000"/><path d="M20 51c16.475 0 30-20 30-20S36.475 11 20 11C9.223 11 0 20.223 0 31c0 10.778 9.223 20 20 20zm-2.768-13.232L19 39.536l1.768-1.768 10-10a2.5 2.5 0 0 0-3.536-3.536l-8.194 8.27-3.27-3.27a2.5 2.5 0 0 0-3.536 3.536l5 5z" fill="#428BCA"/><path d="M284.862 46.943V16.01H281v30.933h3.862zm32.94 0V16.01h-3.862v24.162L296.074 16.01h-3.955v30.933h3.862V22.271l18.098 24.672h3.722zm17.865 0c9.677 0 15.911-6.631 15.911-15.443 0-8.765-6.234-15.49-15.911-15.49h-10.608v30.933h10.608zm0-3.431h-6.746v-24.07h6.746c7.676 0 11.91 5.38 11.91 12.058 0 6.632-4.373 12.012-11.91 12.012zm42.29 3.431v-3.431h-16.47V32.845h16.145v-3.432h-16.144v-9.971h16.47V16.01h-20.332v30.933h20.332zm32.289 0L398.15 31.036l11.398-15.026h-4.745l-9.166 12.336-9.212-12.336h-4.699l11.399 15.073-12.097 15.86h4.7l9.91-13.17 9.909 13.17h4.699z" fill="#888"/></g></symbol><symbol viewBox="0 0 411 51" id="woorank-index-nocolor"><g stroke="none" stroke-width="1" fill-rule="evenodd"><path d="M126.1 31.466c0 9.26-7.112 16.261-16.682 16.261-9.568 0-16.647-7.001-16.647-16.26 0-9.26 7.08-16.262 16.647-16.262 9.57 0 16.682 7.001 16.682 16.261zm-26.379 0c0 5.84 4.17 9.905 9.697 9.905 5.529 0 9.732-4.065 9.732-9.905 0-5.84-4.203-9.906-9.732-9.906-5.528 0-9.697 4.066-9.697 9.906z"/><path d="M155.809 31.466c0 9.26-7.112 16.261-16.681 16.261-9.568 0-16.648-7.001-16.648-16.26 0-9.26 7.08-16.262 16.648-16.262 9.57 0 16.68 7.001 16.68 16.261zm-26.379 0c0 5.84 4.171 9.905 9.698 9.905 5.528 0 9.73-4.065 9.73-9.905 0-5.84-4.202-9.906-9.73-9.906-5.527 0-9.698 4.066-9.698 9.906zM175.099 21.936a13.237 13.237 0 0 0-2.772-.312c-4.3 0-7.435 4.376-7.37 11.294V46.92H158.2v-30.91h6.692v2.484c1.808-2.42 4.656-3.29 8.987-3.29 2.283 0 4.279.42 5.859 1.077a18.215 18.215 0 0 0-4.64 5.654zM200.915 46.921V44.21c-1.518 1.856-5.334 3.517-9.731 3.517-8.663 0-15.484-6.808-15.484-16.26 0-9.454 6.82-16.262 15.484-16.262 4.397 0 8.327 1.837 9.731 3.548v-2.742h6.755v30.91h-6.755zm-8.923-5.55c5.593 0 9.342-4.258 9.342-9.905 0-5.647-3.75-9.906-9.342-9.906-5.817 0-9.342 4.485-9.342 9.906 0 5.42 3.525 9.905 9.342 9.905zM240.503 27.497V46.92h-6.789V29.724c0-5.195-2.684-8.1-7.209-8.1-4.364 0-8.016 2.871-8.016 8.165V46.92H211.7v-30.91h6.724v3.776c2.488-3.647 6.336-4.582 9.503-4.582 7.37 0 12.576 5.064 12.576 12.292M253.006 27.7l10.216-11.689h8.502l-12.963 14.55a773695.868 773695.868 0 0 0 13.092 16.36h-8.568L252.975 34h-1.686v12.921H244.5V7.235L251.289.46V27.7h1.717zM97.633 31.732c0-4.37 2.389-8.174 5.928-10.208l2.687-5.453-11.976 8.389-4.489 9.817-8.876-20.954-8.944 20.96-8.327-18.212h-8.14l16.521 33.532 8.885-20.108 8.821 20.113 8.028-16.293c-.07-.52-.118-1.046-.118-1.583M20 51c16.475 0 30-20 30-20S36.475 11 20 11C9.223 11 0 20.223 0 31c0 10.778 9.223 20 20 20zm-2.768-13.232L19 39.536l1.768-1.768 10-10a2.5 2.5 0 0 0-3.536-3.536l-8.194 8.27-3.27-3.27a2.5 2.5 0 0 0-3.536 3.536l5 5zM284.862 46.943V16.01H281v30.933h3.862zm32.94 0V16.01h-3.862v24.162L296.074 16.01h-3.955v30.933h3.862V22.271l18.098 24.672h3.722zm17.865 0c9.677 0 15.911-6.631 15.911-15.443 0-8.765-6.234-15.49-15.911-15.49h-10.608v30.933h10.608zm0-3.431h-6.746v-24.07h6.746c7.676 0 11.91 5.38 11.91 12.058 0 6.632-4.373 12.012-11.91 12.012zm42.29 3.431v-3.431h-16.47V32.845h16.145v-3.432h-16.144v-9.971h16.47V16.01h-20.332v30.933h20.332zm32.289 0L398.15 31.036l11.398-15.026h-4.745l-9.166 12.336-9.212-12.336h-4.699l11.399 15.073-12.097 15.86h4.7l9.91-13.17 9.909 13.17h4.699z"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-report"><g id="jqWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><path id="jqShape" d="M21 23H4V3h1.5V2H3v22h19V2h-2.5v1H21z"/><path d="M12.5 0c-1.209 0-2.218.86-2.45 2H7v3h11V2h-3.05a2.501 2.501 0 0 0-2.45-2zM17 4H8V3h3v-.5a1.5 1.5 0 0 1 3 0V3h3v1zM11 18h6v-1h-6zM8 18h.5v-1H8zM11 15h6v-1h-6zM8 15h.5v-1H8zM11 12h6v-1h-6zM8 12h.5v-1H8zM11 9h6V8h-6zM8 9h.5V8H8z" id="jqShape"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-serp"><g id="jrWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd"><g id="jr02-SERP-alt-2"><g id="jrOutline_Icons_1_"><path d="M18.46 1.873C16.477.66 14.284 0 12 0 9.717 0 7.524.66 5.54 1.873a.5.5 0 1 0 .52.854C7.895 1.607 9.908 1 12 1c2.093 0 4.106.607 5.94 1.727a.5.5 0 1 0 .52-.854zM22.127 18.46C23.34 16.477 24 14.284 24 12c0-2.283-.66-4.476-1.873-6.46a.5.5 0 1 0-.854.52C22.393 7.895 23 9.908 23 12c0 2.093-.607 4.106-1.727 5.94a.5.5 0 1 0 .854.52zM1.873 5.54C.66 7.523 0 9.716 0 12c0 2.283.66 4.476 1.873 6.46a.5.5 0 1 0 .854-.52C1.607 16.105 1 14.092 1 12c0-2.093.607-4.106 1.727-5.94a.5.5 0 1 0-.854-.52zM5.54 22.127C7.523 23.34 9.716 24 12 24c2.283 0 4.476-.66 6.46-1.873a.5.5 0 1 0-.52-.854C16.105 22.393 14.092 23 12 23c-2.093 0-4.106-.607-5.94-1.727a.5.5 0 1 0-.52.854zM23.854 23.146l-4.5-4.5a.5.5 0 0 0-.708.708l4.5 4.5a.5.5 0 0 0 .708-.708zM.854 23.854l4.5-4.5a.5.5 0 0 0-.708-.708l-4.5 4.5a.5.5 0 0 0 .708.708zM23.146.146l-4.5 4.5a.5.5 0 0 0 .708.708l4.5-4.5a.5.5 0 0 0-.708-.708zM.146.854l4.5 4.5a.5.5 0 1 0 .708-.708l-4.5-4.5a.5.5 0 0 0-.708.708z" id="jrShape"/></g><path d="M8.916 19h6.168l-1.033-6.611C15.246 11.73 16 10.446 16 9c0-2.176-1.824-4-4-4S8 6.824 8 9c0 1.446.754 2.73 1.949 3.389L8.916 19zm1.168-1l.97-6.21-.362-.152C9.668 11.212 9 10.186 9 9c0-1.624 1.376-3 3-3s3 1.376 3 3c0 1.186-.668 2.212-1.692 2.638l-.363.151.97 6.211h-3.83z" id="jrShape"/></g></g></symbol><symbol viewBox="21 5 24 24" id="woorank-serp-hash"><g id="jsWoorank-Icon" stroke="none" stroke-width="1" fill-rule="evenodd" transform="translate(21 5)"><g id="jswoorank-serp-hash"><g id="jsWoorank-Icon"><path d="M9.573 1.016c-2.175.573-4.068 1.572-5.527 3.03-1.458 1.46-2.457 3.352-3.03 5.527a.5.5 0 0 0 .968.254c.53-2.013 1.446-3.75 2.77-5.073 1.323-1.324 3.06-2.24 5.073-2.77a.5.5 0 1 0-.254-.968zm12.41 8.557c-.572-2.175-1.57-4.068-3.03-5.527-1.458-1.458-3.351-2.457-5.526-3.03a.5.5 0 1 0-.254.968c2.013.53 3.75 1.446 5.073 2.77 1.324 1.323 2.24 3.06 2.77 5.073a.5.5 0 0 0 .968-.254zM1.017 13.427c.573 2.175 1.572 4.068 3.03 5.527 1.46 1.458 3.352 2.457 5.527 3.03a.5.5 0 0 0 .254-.968c-2.013-.53-3.75-1.446-5.073-2.77-1.324-1.323-2.24-3.06-2.77-5.073a.5.5 0 1 0-.968.254zm12.411 8.557c2.175-.573 4.068-1.572 5.527-3.03 1.458-1.46 2.457-3.352 3.03-5.527a.5.5 0 0 0-.968-.254c-.53 2.013-1.446 3.75-2.77 5.073-1.323 1.324-3.06 2.24-5.073 2.77a.5.5 0 0 0 .254.968zM22.487 11h-2.974a.507.507 0 0 0-.513.5c0 .276.23.5.513.5h2.974a.507.507 0 0 0 .513-.5c0-.276-.23-.5-.513-.5zM12 22.487v-2.974a.507.507 0 0 0-.5-.513c-.276 0-.5.23-.5.513v2.974c0 .283.224.513.5.513s.5-.23.5-.513zM11 .513v2.974c0 .283.224.513.5.513s.5-.23.5-.513V.513A.507.507 0 0 0 11.5 0c-.276 0-.5.23-.5.513zM.513 12h2.974A.507.507 0 0 0 4 11.5c0-.276-.23-.5-.513-.5H.513a.507.507 0 0 0-.513.5c0 .276.23.5.513.5z" id="jsGroup"/></g></g><path d="M8.993 17.582l2-12a.5.5 0 0 0-.986-.164l-2 12a.5.5 0 0 0 .986.164zM12.993 17.582l2-12a.5.5 0 0 0-.986-.164l-2 12a.5.5 0 0 0 .986.164z"/><path d="M6.5 10h11a.5.5 0 1 0 0-1h-11a.5.5 0 0 0 0 1zM5.5 14h11a.5.5 0 1 0 0-1h-11a.5.5 0 1 0 0 1z"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-success"><g id="jtWoorank-Icon" stroke="none" fill-rule="evenodd"><path id="jtShape" d="M0 12.5l3.115-3.045 5.583 5.458L20.888 3 24 6.045 8.698 21z"/></g></symbol><symbol viewBox="0 0 24 24" id="woorank-warning"><g id="juWoorank-Icon" stroke="none" fill-rule="evenodd"><g id="juGroup" transform="translate(10 2)"><path id="juShape" d="M0 14h5v5H0zM0 0h5v12.5H0z"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="wrench"><g id="jvOutline_Icons_1_"><path d="M23.073 3.96a.498.498 0 0 0-.798-.127L19.11 6.988h-1.958V4.883l3.087-3.166a.498.498 0 0 0-.131-.794C17.422-.451 14.06.077 11.931 2.205 9.856 4.28 9.29 7.373 10.47 10.009L.893 19.577A2.498 2.498 0 0 0 .16 21.35c0 .666.259 1.292.73 1.761a2.48 2.48 0 0 0 1.766.733c.667 0 1.294-.26 1.767-.733l9.565-9.567a6.975 6.975 0 0 0 7.803-1.438 6.99 6.99 0 0 0 1.282-8.146zm-1.989 7.438a5.978 5.978 0 0 1-6.971 1.097.5.5 0 0 0-.581.092l-9.816 9.817c-.566.567-1.55.569-2.119 0a1.497 1.497 0 0 1 .005-2.119l9.827-9.819a.503.503 0 0 0 .092-.582c-1.186-2.315-.736-5.118 1.119-6.972 1.146-1.146 2.709-1.75 4.284-1.75.709 0 1.42.123 2.097.373L16.295 4.33a.502.502 0 0 0-.142.349v2.809a.5.5 0 0 0 .5.5h2.664a.503.503 0 0 0 .353-.146l2.796-2.787a5.989 5.989 0 0 1-1.382 6.343z" id="jvOutline_Icons"/></g></symbol><symbol viewBox="0 0 64 64" id="wrench-colourfull"><g id="jwPage-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="jwwrench-colourfull"><path d="M59.645 7.772V4.849l-.788.59-1.55 1.163-9.014 5.981 8.828-7.52.894-.67.454-.34-.4-.402-.79-.79c-.405-.405-1.046-.85-1.835-1.244C53.973.88 52.286.492 50.427.492c-9.235 0-15.034 5.232-15.034 13.096 0 3.034-.618 5.74-1.784 8.072a12.849 12.849 0 0 1-1.195 1.958 6.45 6.45 0 0 1-.463.563c-.045.04-.045.04-.272.25l-.304.281-.561.518a13460.22 13460.22 0 0 0-12.462 11.524C10.192 44.31 5.605 48.588 4.8 49.394 1.476 52.718.492 54.64.492 58.184c0 2.746 2.594 5.34 5.34 5.34 3.545 0 5.467-.984 8.79-4.306.805-.806 5.083-5.394 12.577-13.486a11715.965 11715.965 0 0 0 11.587-12.53l.518-.56.281-.305c.22-.239.22-.239.27-.291a30.866 30.866 0 0 1 .886-.83 33.95 33.95 0 0 1 2.323-1.916c1.05-.788 2.035-1.415 2.927-1.861 1.002-.501 1.855-.755 2.498-.755 1.857 0 3.545-.388 5.016-1.124.788-.394 1.43-.839 1.834-1.243l.613-.614.312-.311-.275-.344-.542-.678-1.15-1.524c3.656-2.456 5.348-7.095 5.348-13.074z" id="jwCombined-Shape" fill="#FFF"/><path d="M50.427 13.588H46.55l-5.817-1.938v5.817l3.878 5.816h3.878v-1.939c5.816 0 9.694-5.816 9.694-13.572l-7.756 5.816z" id="jwShape" fill="#999"/><path d="M48.489 9.71l7.755-5.816s-1.939-1.94-5.817-1.94c-9.694 0-13.572 5.818-13.572 11.634 0 7.756-3.878 11.634-3.878 11.634l5.817 5.817s5.817-5.817 9.695-5.817c3.877 0 5.816-1.939 5.816-1.939l-7.755-9.695 1.939-3.878zm0 11.634s-4.848 1.94-5.817 1.94c-.97 0-1.94-.97-1.94-1.94s3.879-5.816 3.879-5.816l3.878 5.816z" id="jwShape" fill="#CCC"/><path d="M32.977 25.222S7.771 48.49 5.832 50.427c-1.939 1.94-3.878 3.878-3.878 7.757 0 1.94 1.939 3.878 3.878 3.878 3.878 0 5.817-1.939 7.756-3.878S38.794 31.04 38.794 31.04l-5.817-5.817zM7.771 58.184a1.94 1.94 0 1 1 .001-3.88 1.94 1.94 0 0 1-.001 3.88z" id="jwShape" fill="#5CB85C"/></g></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="yelp"><g id="jxOutline_Icons"><path d="M10.657 12.148a.5.5 0 0 0 .866-.314L12.108.551a.504.504 0 0 0-.199-.426.493.493 0 0 0-.463-.072L3.062 2.928a.497.497 0 0 0-.204.812l7.799 8.408zm.414-10.911l-.485 9.364-6.472-6.978 6.957-2.386zM21.119 11.85l-3.112-5.236a.502.502 0 0 0-.418-.244.484.484 0 0 0-.429.226l-4.064 6.195a.5.5 0 1 0 .418.774c.022 0 .044 0 .066-.005l7.177-.958a.5.5 0 0 0 .362-.752zm-6.588.574l3.025-4.611 2.317 3.897-5.342.714zM20.465 17.553l-6.991-2.458a.498.498 0 0 0-.631.655l2.655 6.736a.503.503 0 0 0 .466.317c.13 0 .257-.051.351-.145l4.336-4.278a.502.502 0 0 0 .137-.466.507.507 0 0 0-.323-.361zm-4.315 3.861l-1.977-5.012 5.204 1.828-3.227 3.184zM11.328 15.644a.5.5 0 0 0-.527.119L5.73 20.932a.502.502 0 0 0 .175.816l5.675 2.218a.497.497 0 0 0 .68-.507l-.604-7.387a.497.497 0 0 0-.328-.428zm-4.354 5.447l3.775-3.847.449 5.499-4.224-1.652zM10.283 14.337a.502.502 0 0 0-.324-.433l-6.784-2.527a.506.506 0 0 0-.469.064.506.506 0 0 0-.205.428l.283 6.086a.498.498 0 0 0 .74.414l6.501-3.559a.497.497 0 0 0 .258-.473zm-6.537 2.771l-.211-4.53 5.05 1.882-4.839 2.648z"/></g></symbol><symbol viewBox="0 0 24 24" xml:space="preserve" id="youtube"><g id="jyOutline_Icons"><path d="M9.77 7.358a.501.501 0 0 0-.77.421v8.662a.5.5 0 0 0 .77.421l6.769-4.331a.498.498 0 0 0 0-.842L9.77 7.358zm.23 8.17V8.692l5.341 3.418L10 15.528z"/><path d="M20.062 4H3.938A3.944 3.944 0 0 0 0 7.939v9.121A3.944 3.944 0 0 0 3.938 21h16.125A3.944 3.944 0 0 0 24 17.061V7.939A3.944 3.944 0 0 0 20.062 4zM23 17.061A2.942 2.942 0 0 1 20.062 20H3.938A2.942 2.942 0 0 1 1 17.061V7.939A2.942 2.942 0 0 1 3.938 5h16.125A2.941 2.941 0 0 1 23 7.939v9.122z"/></g></symbol></svg>
            
<div id="top">
    <header class="header navbar navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Navigation mobile trigger button -->
                <button type="button"
                    class="navbar-toggle navbar-toggle-left collapsed js-navbar-toggle hidden"
                    data-toggle="collapse"
                    data-target="#top-nav-collapse">
                                <svg class="icon icon-menu fill-grey" role="img" style="">
                <use xlink:href="#menu"></use>
            </svg>                </button>

                
                    <!-- Review mobile trigger button -->
                    <button type="button"
                        class="navbar-toggle-like toggle-genbar js-toggle-genbar visible-xs">
                                    <svg class="icon icon-plus fill-grey" role="img" style="">
                <use xlink:href="#plus"></use>
            </svg>                    </button>
                
                                <a class="navbar-brand woorank-logo"
                    href="/"
                    title="SEO Audit Tool & Website Review - WooRank">
                    <span class="sr-only">SEO Audit Tool & Website Review - WooRank</span>
                                <svg class="icon icon-logo" role="img" style="">
                <use xlink:href="#logo"></use>
            </svg>                </a>
                
            </div>

            <div class="navbar-collapse collapse" id="top-nav-collapse" aria-expanded="false">
                <ul class="nav navbar-nav">
                                    <li class="generation-bar-in-header-container">
                        <span class="arrow visible-xs"></span>
                                                        <form class="generation-bar ajax-generate-report generate-form   generation-bar-in-header js-generation-bar-in-header  unlogged  "
            id="generation-bar-in-header"
            action="/en/report/generate"
            method="post"
            data-popup=""
            novalidate>
            <div class="input-group">
                <div class="input-container">
                    <input type="url"
                        class="form-control   required js-validate-review-url"
                        name="url"
                        value=""
                        placeholder="Website URL to review"
                        id="generation-bar-in-header-input"
                        tabindex="1"
                        
                        >
                </div>

                <div class="input-group-btn">

                    <div class="generation-bar-options js-generation-bar-options hidden">
    <button type="button" class="btn btn-link btn-xs options-btn js-options-btn">
        <span class="options-btn-text">Options</span>
                    <svg class="icon icon-chevron-down icon-xs closed-icon" role="img" style="">
                <use xlink:href="#chevron-down"></use>
            </svg>                    <svg class="icon icon-chevron-up icon-xs opened-icon" role="img" style="">
                <use xlink:href="#chevron-up"></use>
            </svg>    </button>
</div>


                    <button class="btn btn-default  generation-bar-btn"
                    id="generation-bar-in-header-submit"
                    name="generate"
                    value="free "
                    type="submit"
                    tabindex="2"
                    >
                        <span class="ready">Review</span>
                        <span class="wait">Reviewing...</span>
                    </button>
                </div>
            </div>
            
    <div class="options-content options-content-not-logged js-options-content">
        <button type="button"
            class="btn btn-close"
            title="Close"
            tabindex="4">
                        <svg class="icon icon-cross icon-xs" role="img" style="">
                <use xlink:href="#cross"></use>
            </svg>        </button>
        <p>
            Monitor competitors directly inside your Review, and check out <a href="/en#features-home">loads of other features</a>        </p>
        <a href="/en/register/plan/"
            class="btn btn-warning btn-start-trial"
            tabindex="3">
            Start My 14-Day Free Trial        </a>
    </div>

            
        </form>                    </li>
                                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
    <span class="icon-text language-value">English</span>

                        <svg class="icon icon-chevron-down" role="img" style="">
                <use xlink:href="#chevron-down"></use>
            </svg>    </a>

<ul class="dropdown-menu js-lang-dropdown" role="menu">
                                                            <li>
                    <a href="/es/www/virtualization.com">
                        Español                    </a>
                </li>
                                                <li>
                    <a href="/fr/www/virtualization.com">
                        Français                    </a>
                </li>
                                                <li>
                    <a href="/de/www/virtualization.com">
                        Deutsch                    </a>
                </li>
                                                <li>
                    <a href="/pt/www/virtualization.com">
                        Português                    </a>
                </li>
                                                <li>
                    <a href="/nl/www/virtualization.com">
                        Nederlands                    </a>
                </li>
                        </ul>
                    </li>
                        <li id="login-container">
        <a class="btn btn-default btn-sm navbar-btn link" href="/en/login">
            Log In        </a>
    </li>
    <li id="signup-container">
        <a class="btn btn-warning btn-sm navbar-btn js-signup-page"
           href="/en/register/plan/">
            Free Trial        </a>
    </li>
                                    </ul>
            </div>
        </div>
    </header>
</div>

    <div id="content"
        class=""
                >

                    <div id="grid">
                    <!--[if lte IE 9]>
                <div id="browser-not-supported"><p>Unfortunately your browser is not supported by WooRank. We strongly recommend you to switch to <a href="http://www.mozilla.org/firefox/" target="_blank" rel="nofollow" title="get Firefox">Firefox</a> or <a href="http://chrome.google.com/" target="_blank" rel="nofollow" title="get Chrome">Chrome</a> for an optimal experience. You can also upgrade to the <a href="http://www.microsoft.com/ie" target="_blank" rel="nofollow" title="upgrade">latest version</a> of your current browser. </p></div>
            <![endif]-->
            

<div id="left-nav">
    <div id="flying">
        <div class="nav-section">
            <nav>
                <a
                class="current inpage-link flying-tooltip"
                href="#right-panel"
                data-placement="top"
                data-container="body"
                rel="tooltip"
                data-original-title="Return to top"
                data-html="true">
                    <span class="icon-container">
                                    <svg class="icon icon-chevron-up icon-sm" role="img" style="">
                <use xlink:href="#chevron-up"></use>
            </svg>                    </span>
                    <span class="icon-text">Return to top</span>
                </a>
            </nav>
        </div>

                    <div class="nav-section" id="nav-section-markting-checklist">
                <nav>
                    <a
                    class="inpage-link flying-tooltip"
                    href="#marketing-checklist"
                    data-placement="top"
                    data-container="body"
                    rel="tooltip"
                    data-original-title="Marketing Checklist"
                    data-html="true">
                        <span class="icon-container">
                                        <svg class="icon icon-box-check icon-md" role="img" style="">
                <use xlink:href="#box-check"></use>
            </svg>                        </span>
                        <span class="icon-text">Marketing Checklist</span>
                                    <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                    </a>
                </nav>
            </div>
        
                    <div class="nav-section">
                <nav>
                    <a class="section-title inpage-link" href="#module-section-title-optimize" >
                        Optimize                    </a>
                                                                    <a
                        class="seo inpage-link flying-tooltip"
                        href="#module-seo"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="SEO"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-seo icon-md" role="img" style="">
                <use xlink:href="#seo"></use>
            </svg>                            </span>
                            <span class="icon-text">SEO</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="mobile inpage-link flying-tooltip"
                        href="#module-mobile"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Mobile"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-mobile icon-md" role="img" style="">
                <use xlink:href="#mobile"></use>
            </svg>                            </span>
                            <span class="icon-text">Mobile</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="usability inpage-link flying-tooltip"
                        href="#module-usability"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Usability"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-usability icon-md" role="img" style="">
                <use xlink:href="#usability"></use>
            </svg>                            </span>
                            <span class="icon-text">Usability</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="technologies inpage-link flying-tooltip"
                        href="#module-technologies"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Technologies"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-technologies icon-md" role="img" style="">
                <use xlink:href="#technologies"></use>
            </svg>                            </span>
                            <span class="icon-text">Technologies</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="crawl_errors inpage-link flying-tooltip"
                        href="#module-crawl_errors"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Crawl Errors"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-crawl_errors icon-md" role="img" style="">
                <use xlink:href="#crawl_errors"></use>
            </svg>                            </span>
                            <span class="icon-text">Crawl Errors</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                                                                                                                                                                                                                        </nav>
            </div>
                    <div class="nav-section">
                <nav>
                    <a class="section-title inpage-link" href="#module-section-title-promote" >
                        Promote                    </a>
                                                                                                                                                                                                                                                                                                <a
                        class="backlinks inpage-link flying-tooltip"
                        href="#module-backlinks"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Backlinks"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-backlinks icon-md" role="img" style="">
                <use xlink:href="#backlinks"></use>
            </svg>                            </span>
                            <span class="icon-text">Backlinks</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="social inpage-link flying-tooltip"
                        href="#module-social"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Social"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-social icon-md" role="img" style="">
                <use xlink:href="#social"></use>
            </svg>                            </span>
                            <span class="icon-text">Social</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="local_visibility inpage-link flying-tooltip"
                        href="#module-local_visibility"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Local"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-local_visibility icon-md" role="img" style="">
                <use xlink:href="#local_visibility"></use>
            </svg>                            </span>
                            <span class="icon-text">Local</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                                                                                    </nav>
            </div>
                    <div class="nav-section">
                <nav>
                    <a class="section-title inpage-link" href="#module-section-title-measure" >
                        Measure                    </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                    <a
                        class="pj_serp inpage-link flying-tooltip"
                        href="#module-pj_serp"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Keyword Tool"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-pj_serp icon-md" role="img" style="">
                <use xlink:href="#pj_serp"></use>
            </svg>                            </span>
                            <span class="icon-text">Keyword Tool</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                                                            <a
                        class="visitors inpage-link flying-tooltip"
                        href="#module-visitors"
                        data-placement="top"
                        data-container="body"
                        rel="tooltip"
                        data-original-title="Visitors"
                        data-html="true">
                            <span class="icon-container">
                                            <svg class="icon icon-visitors icon-md" role="img" style="">
                <use xlink:href="#visitors"></use>
            </svg>                            </span>
                            <span class="icon-text">Visitors</span>
                                        <svg class="icon icon-chevron-right icon-xs" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        </a>
                                                            </nav>
            </div>
        

                                </div>
</div>

<div id="right-panel" class="free-rev  free-stored-rev">

<!-- DASHBOARD -->

<div id="young-message" class="message hidden">
    <span class="icn icn-conversation">  </span>
    We are collecting data and creating a prioritized Marketing Checklist for virtualization.com. Please allow up to 24 hours for all of your data to be processed.</div>

<div id="dashboard" class="">

    
    <div class="module-content">

        <div id="dashboard-content" class="">
            <div id="dashboard-web">
                
<div class="hidden-xs wootip"
  data-placement="left"
  data-container="body"
  rel="tooltip"
  data-original-title="<p>The WooRank score is a dynamic grade on a 100-point scale that represents your Internet Marketing Effectiveness at a given time.</p><p>Improve your score by working on the red and orange criteria in your Review. <br />
<br />
Check the green criteria to find out how your score is being positively affected. Gray criteria are notable, but do not affect your score.</p>"
  data-html="true">
</div>
<div id="holder" class="holder"></div>
<div id="score-regular" class="value dashboard-score rating">
    <div>
        <span id="score-value" class="score-value">
            77<span class="decimal">.10</span>
        </span>
        <span class="value-title hidden" title="4.425"></span>
    </div>
    <span class="best hidden">
        <span class="value-title" title="5"></span>
    </span>
</div>
            </div>

            <div id="dashboard-screenshot">
                                    <img src="https://s3.amazonaws.com/woothumbs/virtualization.com.png"
                        alt="virtualization.com Screenshot"
                        width="202"
                        height="114" />
                
                <div class="screen"></div>

                            </div>

            <div id="dashboard-site">
                <h1 class="item">
                    <a class="fn js-external-link"
                       data-href="http://virtualization.com"
                       rel="nofollow noreferrer noopener"
                       target="_blank"
                       title="virtualization.com"
                       data-url="virtualization.com">
                        <span class="domain">virtualization.com</span>
                    </a>
                </h1>

                <div class="generated-time dtreviewed">
                    <span data-datetime="1478714745000" class="js-format-time"></span>
                    <span class="value-title hidden" title="2016-11-09"></span>
                </div>

                
                <div id="dashboard-bars" class="dashboard-bars">
    <div id="green-bar-counter" class="section">
                    <svg class="icon icon-bullet-success icon-md" role="img" style="">
                <use xlink:href="#bullet-success"></use>
            </svg>        <div class="progress-container" >
                    <span class="progress-label">Passed</span>
                    <div class="progress progress-xs progress-success">
                        <div class="progress-bar" role="progressbar"
                            aria-valuemin="0"
                            aria-valuenow="0"
                            aria-valuemax="100"
                            style=" width: 0%;">
                            <span class="progress-value">0%</span>
                        </div>
                    </div>
                    
                </div>    </div>

    <div id="orange-bar-counter" class="section">
                    <svg class="icon icon-bullet-warning icon-md" role="img" style="">
                <use xlink:href="#bullet-warning"></use>
            </svg>        <div class="progress-container" >
                    <span class="progress-label">To Improve</span>
                    <div class="progress progress-xs progress-warning">
                        <div class="progress-bar" role="progressbar"
                            aria-valuemin="0"
                            aria-valuenow="0"
                            aria-valuemax="100"
                            style=" width: 0%;">
                            <span class="progress-value">0%</span>
                        </div>
                    </div>
                    
                </div>    </div>

    <div id="red-bar-counter" class="section">
                    <svg class="icon icon-bullet-danger icon-md" role="img" style="">
                <use xlink:href="#bullet-danger"></use>
            </svg>        <div class="progress-container" >
                    <span class="progress-label">Errors</span>
                    <div class="progress progress-xs progress-error">
                        <div class="progress-bar" role="progressbar"
                            aria-valuemin="0"
                            aria-valuenow="0"
                            aria-valuemax="100"
                            style=" width: 0%;">
                            <span class="progress-value">0%</span>
                        </div>
                    </div>
                    
                </div>    </div>
</div>
            </div>
        </div>
    </div>
    

<div id="dashboard-footer">

            <div class="item pdf-download-container">
            <a href="#" class="inline-modal-opener grey" >
                Download            </a>
            <div class="inline-modal">
                <div class="inner">
                    <h3>Take a plan to unlock this feature</h3>
                    <a href="/en/register/plan/" class="btn btn-sm btn-block btn-warning">
                        14-Day Free Trial                    </a>
                </div>
            </div>
            <span class="inline-modal-pointer-bg"></span><span class="inline-modal-pointer"></span>        </div>

        <div class="item slides-download-container">
            <a href="#" class="inline-modal-opener grey" >
                Download as Slides            </a>
            <div class="inline-modal">
                <div class="inner">
                    <h3>Take a plan to unlock this feature</h3>
                    <a href="/en/register/plan/" class="btn btn-sm btn-block btn-warning">
                        14-Day Free Trial                    </a>
                </div>
            </div>
            <span class="inline-modal-pointer-bg"></span><span class="inline-modal-pointer"></span>        </div>

        <div class="item item-right item-link social-sharing-container">
            <a href="#" class="inline-modal-opener" >
                <span class="icon-text-left">Share</span>
                            <svg class="icon icon-chevron-down icon-sm" role="img" style="">
                <use xlink:href="#chevron-down"></use>
            </svg>            </a>
            <div class="inline-modal">
                <div class="inner">
                    <ul>
                        <li class="short-link" id="short-url">
                            <a href="#" id="short-label" >
                                <span class="icn icn-link"></span>
                                Get short URL                            </a>
                            <pre id="short-val"
                                class="hidden simple-tooltip"
                                title="Copy the URL to share this review">
                            </pre>
                        </li>
                        <li><a class="facebook" href="http://www.facebook.com/sharer/sharer.php?s=100&p[images][0]=http%3A%2F%2Fstatic1.woorank.com%2Fassets%2Fimg%2Fwoorank-logo-glyph.png&p[url]=https%3A%2F%2Fwww.woorank.com%2Fen%2Fwww%2Fvirtualization.com&p[title]=I+just+got+a+quick+guide+to+improving+my+website%21&p[summary]=Check+out+my+%23WooRank+website+review%21+Want+to+see+how+your+website+ranks%2C+too%3F+Make+one+for+your+site+at+www.WooRank.com+today%21" rel="nofollow" target="_blank"><span class="icn icn-facebook"></span>Share on Facebook</a></li><li><a class="twitter" href="http://twitter.com/home?status=Check+out+my+%40WooRank+website+review%21+woo.lv%2Fe%2Fvirtualization.com+Make+one+for+your+site+at+WooRank.com+today%21+%23WooRank" rel="nofollow" target="_blank"><span class="icn icn-twitter"></span>Share on Twitter</a></li><li><a class="googleplus" href="https://plus.google.com/share?url=https%3A%2F%2Fwww.woorank.com%2Fen%2Fwww%2Fvirtualization.com" rel="nofollow" target="_blank"><span class="icn icn-google-plus"></span>Share on Google+</a></li><li><a class="linkedin" href="http://www.linkedin.com/shareArticle?mini=true&source=WooRank&url=https%3A%2F%2Fwww.woorank.com%2Fen%2Fwww%2Fvirtualization.com&title=I+just+got+a+quick+guide+to+improving+my+website%21&summary=Check+out+my+%23WooRank+website+review%21+Want+to+see+how+your+website+ranks%2C+too%3F+Make+one+for+your+site+at+www.WooRank.com+today%21" rel="nofollow" target="_blank"><span class="icn icn-linkedin"></span>Share on LinkedIn</a></li>                    </ul>
                </div>
            </div>
            <span class="inline-modal-pointer-bg"></span><span class="inline-modal-pointer"></span>        </div>

    
</div>



</div>



<div id="marketing-checklist" class="marketing-checklist module-lookalike experts">
    <div class="module-content">
        <div class="marketing-checklist-header">
            <h2 class="marketing-checklist-title">
                Marketing Checklist                <span class="hidden">Top priorities for virtualization.com :</span>
            </h2>
        </div>

        <div class="marketing-checklist-list">
            <div class="loader js-loader">
                            <svg class="icon icon-loader" role="img" style="">
                <use xlink:href="#loader"></use>
            </svg>            </div>

            <div class="list-of-tasks marketing-checklist-list-alldone hidden">
                            <svg class="icon icon-sign-success icon-md" role="img" style="">
                <use xlink:href="#sign-success"></use>
            </svg>            </div>
        </div>

        <div class="show-links hidden over-max-list">
            <a href="#"
                class="fake-show-more"
                data-toggle="popover"
                data-container="#marketing-checklist"
                data-trigger="focus"
                data-placement="bottom"
                data-ga="more-link">
                Show more            </a>
        </div>

        <!-- EXPERTS -->
        <div id="experts" class="experts-banner">
    <h3 class="experts-title">
        Get help from a Certified Expert        <a href="https://experts.woorank.com/en/become-expert" class="experts-register">
            Become an Expert        </a>
    </h3>

    
    <div class="business-card">
        <a href="https://experts.woorank.com/en/experts?sortFirstExpertId=638"
            target="_blank"
            class="photo-wrapper">

                    <img class="photo"
                src="https://experts.woorank.com/images/avatar.svg"
                alt="Certified WooRank Experts"
            />
                </a>

        <span class="name">
                        <a href="https://experts.woorank.com/en/experts?sortFirstExpertId=638" target="_blank">
                Assaad                Ghanem            </a>
        </span>

        <address>
            <span class="locality">
                Mtaileb, Metn            </span>

            
            <span class="country-name">
                (<span><!--
                    -->Lebanon<!--
                --></span>)
            </span>

                    </address>
    </div>
    
    <div class="business-card">
        <a href="https://experts.woorank.com/en/experts?sortFirstExpertId=929"
            target="_blank"
            class="photo-wrapper">

                    <img src="https://s3.amazonaws.com/experts.woorank.com/photos/929_thumb.jpg"
                class="photo"
                alt="Ali Elsa'dany"
            />
                </a>

        <span class="name">
                        <a href="https://experts.woorank.com/en/experts?sortFirstExpertId=929" target="_blank">
                Ali                Elsa'dany            </a>
        </span>

        <address>
            <span class="locality">
                Egypt            </span>

            
            <span class="country-name">
                (<span><!--
                    -->Egypt<!--
                --></span>)
            </span>

                    </address>
    </div>
    
    <div class="business-card">
        <a href="https://experts.woorank.com/en/experts?sortFirstExpertId=265"
            target="_blank"
            class="photo-wrapper">

                    <img src="https://s3.amazonaws.com/experts.woorank.com/photos/265_thumb.jpg"
                class="photo"
                alt="Mehmet Yalcin Parmaksiz"
            />
                </a>

        <span class="name">
                        <a href="https://experts.woorank.com/en/experts?sortFirstExpertId=265" target="_blank">
                Mehmet Yalcin                Parmaksiz            </a>
        </span>

        <address>
            <span class="locality">
                Istanbul            </span>

            
            <span class="country-name">
                (<span><!--
                    -->Turkey<!--
                --></span>)
            </span>

                    </address>
    </div>
    
    <div class="business-card see-all-experts">
                <a href="https://experts.woorank.com/en/experts?latitude=32.0667&amp;longitude=34.7667"
            target="_blank"
            class="photo-wrapper no-photos">
            <img class="photo"
                src="https://experts.woorank.com/images/avatar.svg"
                alt="Certified WooRank Experts"
            />
        </a>
        <a href="https://experts.woorank.com/en/experts?latitude=32.0667&amp;longitude=34.7667"
            target="_blank"
            class="link-all">
            See all Certified Experts        </a>
    </div>
</div>

    </div>

    <span id="top-priorities-label"
        class="hidden"
        data-content="Top Priority"></span>

    <div id="tasks-popover-content" class="hidden" data-isfree="true">
                    <p>79 personalized tasks for<br />online marketing success!</p>
        <a href="/en/p/pricing"
            id="marketing-checklist-popover-link"
            class="btn btn-sm btn-block btn-warning">
            14-Day Free Trial        </a>
        </div>
</div>
        <div class="free-rev-banner text-center">
            <a
            href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=banner&utm_campaign=public_reviews"
            target="_top">
                <img
                src="//dz17jvmxa7kn9.cloudfront.net/assets/img/free-banner/728x80_en.jpg"
                alt="Free Trial">
            </a>
        </div>
    <div class="module-container" id="report-content">
            <div class="module-section" id="module-section-title-optimize">
                Optimize
            </div>

        <div class="module" id="module-seo">
            <div class="module-content">
                <h2 class="module-title" id="module-seo-anchor">
                    SEO
                    <svg class="icon icon-seo hidden">
                      <use xlink:href="#seo"></use>
                    </svg>
                </h2>
                        <div id="criterium-title" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Title Tag
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-3 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="High impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">High impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      Virtualization.com
      
    </p>
    <p>
      <span class="bold">Length:</span> 18 character(s)
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p><br />Your HTML title tag appears in browser tabs, bookmarks and in search result pages.<br /><br />Make your title tags clear, concise (50-60 characters) and include your most important keywords.<br /></p>
                                </div>
                                <div class="criterium-quicktips">Check the title of your website</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-description" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Meta Description
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-3 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="High impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">High impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      News and insights from the vibrant world of virtualization and cloud computing
      
    </p>
    <p>
      <span class="bold">Length:</span> 78 character(s)
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Great, your <a rel="nofollow" href="https://www.woorank.com/en/blog/the-importance-of-meta-descriptions" target="_blank">meta description</a> contains between 70 and 160 characters (spaces included).</p><p>A good meta description acts as an organic advertisement, so use enticing messaging with a clear call to action to maximize click-through rate. They allow you to influence how your web pages are described and displayed in search results.</p><p>Ensure that all of your web pages have a unique meta description that is explicit and contains your <a  rel="nofollow" href="https://www.woorank.com/en/blog/the-key-to-your-keyword-strategy" target="_blank">most important keywords</a> (these appear in bold when they match part or all of the user’s search query).</p><p>Check your Google Search Console account (Click 'Search Appearance', then 'HTML Improvements') to identify any issues with your meta descriptions, for example, they are too short/long, or duplicated across more than one page.</p>
                                </div>
                                <div class="criterium-quicktips">Improve the Meta Description</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-google_preview" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Google Preview
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text google-preview">
    <p>
      <span class="bold">Virtualization.com</span>
      
    </p>
    <p>
      <span class="bold">virtualization.com</span>/
      
    </p>
    <p>
      News and insights from the vibrant world of virtualization and cloud computing
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    This is a representation of what your Title Tag and Meta Description will look like in Google search results.<br /><br />Search engines may create their own titles and descriptions if they are missing, poorly written and/or not relevant to the content on the page and cut short if they go over the character limit. So it’s important to be clear, concise and within the suggested character limit.
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-headings" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Headings
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part table ">
    <table class="table table-thinhead ">
        <thead>
            <tr>
                <th class="text-center">
                        &lt;H1&gt;
                </th>
                <th class="text-center">
                        &lt;H2&gt;
                </th>
                <th class="text-center">
                        &lt;H3&gt;
                </th>
                <th class="text-center">
                        &lt;H4&gt;
                </th>
                <th class="text-center">
                        &lt;H5&gt;
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="">
                <td class="text-center">
                    <span title="0">0</span>
                </td>
                <td class="text-center">
                    <span title="11">11</span>
                </td>
                <td class="text-center">
                    <span title="21">21</span>
                </td>
                <td class="text-center">
                    <span title="0">0</span>
                </td>
                <td class="text-center">
                    <span title="0">0</span>
                </td>
            </tr>
        </tbody>
    </table>
</div>

                                        <div class="part table ">
    <table class="table table-thinhead headings-list no-header table-striped">
        <tbody>
            <tr class="">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Insight Venture Partners outbids Dell for Quest Software at $25.75 per share in cash">Insight Venture Partners outbids Dell for Quest Software at $25.75 per share in cash</span>
                </td>
            </tr>
            <tr class="">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Aqua Connect Sues Code Rebel, Alleging Reverse-Engineering Shenanigans">Aqua Connect Sues Code Rebel, Alleging Reverse-Engineering Shenanigans</span>
                </td>
            </tr>
            <tr class="">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Virtual Bridges Appoints CFO; Iser Cukierman Joins Executive Team">Virtual Bridges Appoints CFO; Iser Cukierman Joins Executive Team</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Virtacore Names Phill Lawson-Shanks As CTO">Virtacore Names Phill Lawson-Shanks As CTO</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Red Hat Launches Virtual Storage Appliance For Amazon Web Services">Red Hat Launches Virtual Storage Appliance For Amazon Web Services</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="VMware Debuts VMware vCloud Integration Manager">VMware Debuts VMware vCloud Integration Manager</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Insight Venture Partners outbids Dell for Quest Software at $25.75 per share in cash">Insight Venture Partners outbids Dell for Quest Software at $25.75 per share in cash</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Nicira Comes Out Of Stealth Mode With &amp;#8220;Game-Changing&amp;#8221; Network Virtualization Platform">Nicira Comes Out Of Stealth Mode With &amp;#8220;Game-Changing&amp;#8221; Network Virtualization Platform</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Puppet Labs Scores $8.5M In New Funding From Cisco, Google Ventures And VMware">Puppet Labs Scores $8.5M In New Funding From Cisco, Google Ventures And VMware</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="How Citrix Aims To Drag SMBs Into The &amp;#8216;Cloud Era&amp;#8217;">How Citrix Aims To Drag SMBs Into The &amp;#8216;Cloud Era&amp;#8217;</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H2&gt;">&lt;H2&gt;</span>
                </td>
                <td class="">
                    <span title="Cisco, Citrix Join Forces To Deliver Rich Media-Enabled Virtual Desktops">Cisco, Citrix Join Forces To Deliver Rich Media-Enabled Virtual Desktops</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Recent Posts">Recent Posts</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Featured Posts">Featured Posts</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Sun Microsystems To Acquire Parallels For $ 205 Million (Updated)">Sun Microsystems To Acquire Parallels For $ 205 Million (Updated)</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Breaking: Diane Greene Leaves VMware, Paul Maritz To Become CEO and President">Breaking: Diane Greene Leaves VMware, Paul Maritz To Become CEO and President</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="NComputing Debuts X350">NComputing Debuts X350</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Video Interview: Werner Vogels, CTO Amazon on Virtualization and the VC Threat">Video Interview: Werner Vogels, CTO Amazon on Virtualization and the VC Threat</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Video: Interview Mike Grandinetti, VP &amp;#038; Chief Marketing Officer with Virtual Iron (VMworld Europe 2008)">Video: Interview Mike Grandinetti, VP &amp;#038; Chief Marketing Officer with Virtual Iron (VMworld Europe 2008)</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Insight Venture Partners outbids Dell for Quest Software at $25.75 per share in cash">Insight Venture Partners outbids Dell for Quest Software at $25.75 per share in cash</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Aqua Connect Sues Code Rebel, Alleging Reverse-Engineering Shenanigans">Aqua Connect Sues Code Rebel, Alleging Reverse-Engineering Shenanigans</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Virtual Bridges Appoints CFO; Iser Cukierman Joins Executive Team">Virtual Bridges Appoints CFO; Iser Cukierman Joins Executive Team</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Virtacore Names Phill Lawson-Shanks As CTO">Virtacore Names Phill Lawson-Shanks As CTO</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Red Hat Launches Virtual Storage Appliance For Amazon Web Services">Red Hat Launches Virtual Storage Appliance For Amazon Web Services</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Hamzaoui: I don&#39;t think it matters wehther you use OEM, FPP (Retail) or Volume L...">Hamzaoui: I don&#39;t think it matters wehther you use OEM, FPP (Retail) or Volume L...</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="vijay kumar: Sir I want to know price of model x550 of n computing. pls conform ...">vijay kumar: Sir I want to know price of model x550 of n computing. pls conform ...</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Samar: Hi aeglxr,yupp, you&amp;#8217;re right on that. I just want to point out t...">Samar: Hi aeglxr,yupp, you&amp;#8217;re right on that. I just want to point out t...</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Meo: About Virtual Appliances. You can eilsay convert any Virtual Appliance...">Meo: About Virtual Appliances. You can eilsay convert any Virtual Appliance...</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Maryy: Should we now use sun-block if using Oracle, or will we be cnonrofted ...">Maryy: Should we now use sun-block if using Oracle, or will we be cnonrofted ...</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="About Virtualization.com">About Virtualization.com</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Latest Tweets">Latest Tweets</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Recent Comments">Recent Comments</span>
                </td>
            </tr>
            <tr class="over-max">
                <td class="bold">
                    <span title="&lt;H3&gt;">&lt;H3&gt;</span>
                </td>
                <td class="">
                    <span title="Tags">Tags</span>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="show-links">
        <a href="#" class="show-more">Show more</a>
        <a href="#" class="show-less">Show less</a>
    </div>
    <div class="pdf-count">
        and <strong>29</strong> more.
    </div>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Great, your website is structured using HTML headings (<a rel="nofollow" class="noxref" href="https://www.woorank.com/en/edu/seo-guides/html-header" target="_blank">&lt;H1&gt; to &lt;H6&gt;</a>).</p><p>Use your keywords in the headings and make sure the first level (&lt;H1&gt;) includes your most important keywords. Never duplicate your title tag content in your header tag.</p><p>While it is important to ensure every page has an &lt;H1&gt; tag, only include more than one per page if you're <a rel="nofollow" class="noxref" href="https://www.woorank.com/en/edu/seo-guides/html-header" target="_blank">using HTML5</a>. Instead, use multiple &lt;H2&gt; - &lt;H6&gt; tags.</p>
                                </div>
                                <div class="criterium-quicktips">Add the important keywords in &lt;H&gt; headings</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-keywords_cloud" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Keywords Cloud
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part tags ">
    <ul class="tags-container">
        <li>
            
                <span class="text">comments</span>
                <span class="number">17</span>
            
        </li>
        <li>
            
                <span class="text">virtualization</span>
                <span class="number">15</span>
            
        </li>
        <li>
            
                <span class="text">virtual</span>
                <span class="number">13</span>
            
        </li>
        <li>
            
                <span class="text">february</span>
                <span class="number">10</span>
            
        </li>
        <li>
            
                <span class="text">vmware</span>
                <span class="number">9</span>
            
        </li>
        <li>
            
                <span class="text">citrix</span>
                <span class="number">9</span>
            
        </li>
        <li>
            
                <span class="text">vmworld</span>
                <span class="number">7</span>
            
        </li>
        <li>
            
                <span class="text">dell</span>
                <span class="number">5</span>
            
        </li>
        <li>
            
                <span class="text">oracle</span>
                <span class="number">5</span>
            
        </li>
        <li>
            
                <span class="text">cisco</span>
                <span class="number">5</span>
            
        </li>
    </ul>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>This Keyword Cloud provides an insight into the frequency of keyword usage within the page. </p><p>It's important to carry out keyword research to get an understanding of the keywords that your audience is using. There are a number of <a rel="nofollow" href="https://www.woorank.com/en/blog/free-keyword-research-tools" target="_blank">keyword research tools</a> available online to help you choose which keywords to target.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-inpage_keywords" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Keyword Consistency
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part table ">
    <table class="table table-thinhead inpage-keywords table-striped">
        <thead>
            <tr>
                <th class="column-rating">
                        
                </th>
                <th class="">
                        Keywords
                </th>
                <th class="text-right">
                        Freq
                </th>
                <th class="text-center">
                        Title
                </th>
                <th class="text-center">
                        Desc
                </th>
                <th class="text-center">
                        &lt;H&gt;
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="comments">comments</span>
                </td>
                <td class="text-right">
                    <span title="17">17</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="virtualization">virtualization</span>
                </td>
                <td class="text-right">
                    <span title="15">15</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="virtual">virtual</span>
                </td>
                <td class="text-right">
                    <span title="13">13</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="february">february</span>
                </td>
                <td class="text-right">
                    <span title="10">10</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="vmware">vmware</span>
                </td>
                <td class="text-right">
                    <span title="9">9</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
        </tbody>
    </table>
</div>

                                        <div class="part table ">
    <table class="table table-thinhead inpage-keywords table-striped">
        <thead>
            <tr>
                <th class="column-rating">
                        
                </th>
                <th class="">
                        Keywords (2 words)
                </th>
                <th class="text-right">
                        Freq
                </th>
                <th class="text-center">
                        Title
                </th>
                <th class="text-center">
                        Desc
                </th>
                <th class="text-center">
                        &lt;H&gt;
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="february comments">february comments</span>
                </td>
                <td class="text-right">
                    <span title="7">7</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="venture partners">venture partners</span>
                </td>
                <td class="text-right">
                    <span title="4">4</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="share cash">share cash</span>
                </td>
                <td class="text-right">
                    <span title="4">4</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="cisco citrix">cisco citrix</span>
                </td>
                <td class="text-right">
                    <span title="4">4</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="column-rating">
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary ">
  <use xlink:href="#star"></use>
</svg>
<svg role="img" class="icon icon-star icon-xs fill-primary-light ">
  <use xlink:href="#star"></use>
</svg>
                </td>
                <td class="">
                    <span title="vmworld vmworld">vmworld vmworld</span>
                </td>
                <td class="text-right">
                    <span title="4">4</span>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-danger icon-xs fill-error ">
  <use xlink:href="#woorank-danger"></use>
</svg>
                </td>
                <td class="text-center">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
        </tbody>
    </table>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p><a rel="nofollow" href="https://www.woorank.com/en/blog/how-to-maintain-keyword-consistency" target="_blank">Keyword consistency</a> is the use of keywords throughout the different elements of the webpage. Consistent keyword use helps crawlers index your site and determine relevancy to search queries.<br /><br />The table above highlights the most frequently used keywords on your page and how consistently you're using them.</p>
                                    
                                </div>
                                <div class="criterium-quicktips">Be more consistent with your keywords</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-images" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Alt Attribute
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      We found <strong>14</strong> images on this web page.
      
    </p>
    <p>
      <strong>5</strong> ALT attributes are empty or missing.
      
    </p>
</div>

                                        <div class="part table ">
    <table class="table table-thinhead no-header table-striped">
        <tbody>
            <tr class="">
                <td class="">
                  <span class="cropable-url">http:&#x2F;&#x2F;1.gravatar.com&#x2F;avatar&#x2F;1f183b12f1cf2a1d7a740fa5fa55a927?s&#x3D;55&amp;d&#x3D;http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D55&amp;r&#x3D;G</span>
                </td>
            </tr>
            <tr class="">
                <td class="">
                  <span class="cropable-url">http:&#x2F;&#x2F;0.gravatar.com&#x2F;avatar&#x2F;6918e87f65dca3a4d93b445f1ffc7be5?s&#x3D;55&amp;d&#x3D;http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D55&amp;r&#x3D;G</span>
                </td>
            </tr>
            <tr class="">
                <td class="">
                  <span class="cropable-url">http:&#x2F;&#x2F;1.gravatar.com&#x2F;avatar&#x2F;5b1811e320835e76bf8b24e2b095d387?s&#x3D;55&amp;d&#x3D;http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D55&amp;r&#x3D;G</span>
                </td>
            </tr>
            <tr class="">
                <td class="">
                  <span class="cropable-url">http:&#x2F;&#x2F;1.gravatar.com&#x2F;avatar&#x2F;9f60a8180d94c9d7a045d2197e60f0a6?s&#x3D;55&amp;d&#x3D;http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D55&amp;r&#x3D;G</span>
                </td>
            </tr>
            <tr class="">
                <td class="">
                  <span class="cropable-url">http:&#x2F;&#x2F;0.gravatar.com&#x2F;avatar&#x2F;c09d15049e2b2705409cc0e9bdbcff44?s&#x3D;55&amp;d&#x3D;http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D55&amp;r&#x3D;G</span>
                </td>
            </tr>
        </tbody>
    </table>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p><a rel="nofollow" href="http://en.wikipedia.org/wiki/Alt_attribute" target="_blank">Alternative text</a> allows you to add a description to an image. Since search engine crawlers cannot see images, <a href="https://www.woorank.com/en/blog/image-alt-text-relevant-for-seo-and-usability" target="_blank">they rely on alternative text attributes to determine relevance to a search query</a>. Alternative text also helps makes an image more likely to appear in a Google image search and is used by screen readers to provide context for visually impaired users.</p><p>It looks like most or all of your images have alternative text. Check the images on your website to make sure accurate and relevant alternative text is specified for each image on the page. Try to minimize the number of alt text characters to 150 or less (including spaces!) to optimize page load times.</p>
                                </div>
                                <div class="criterium-quicktips">Set a name for all your images</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-www_resolve" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      WWW Resolve
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-3 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="High impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">High impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      Great, a redirect is in place to redirect traffic from your non-preferred domain.
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Search engines see <a rel="nofollow" class="js-external-link" data-href="http://www.virtualization.com" target="_blank">www.virtualization.com</a> and <a rel="nofollow" class="js-external-link" data-href="http://virtualization.com" target="_blank">virtualization.com</a> as different websites. This means they could see a large amount of <a rel="nofollow" href="https://www.woorank.com/en/blog/duplicate-content-7-ways-to-get-rid-of-it" target="_blank">duplicate content</a>, which they don't like.</p><p>Fortunately your website redirects <a rel="nofollow" class="js-external-link" data-href="http://www.virtualization.com" target="_blank">www.virtualization.com</a> and <a rel="nofollow" class="js-external-link" data-href="http://virtualization.com" target="_blank"> virtualization.com</a> to the same site.</p>
                                </div>
                                <div class="criterium-quicktips">Redirect non-www to www</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-robots_txt" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Robots.txt
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      
      
        <a
          
          class="js-external-link" data-href="http:&#x2F;&#x2F;www.virtualization.com&#x2F;robots.txt" rel="nofollow" 
          title="http:&#x2F;&#x2F;www.virtualization.com&#x2F;robots.txt" target="_blank">http:&#x2F;&#x2F;www.virtualization.com&#x2F;robots.txt</a>
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>A <a rel="nofollow" href="https://www.woorank.com/en/blog/robots-txt-a-beginners-guide" target="_blank">robots.txt file</a> allows you to restrict the access of search engine crawlers to prevent them from accessing specific pages or directories. They also point the web crawler to your page’s XML sitemap file.</p><p>Your site currently has a robot.txt file. You can use Google Search Console's Robots.txt Tester to submit and test your robot.txt file and to make sure Googlebot isn't crawling any restricted files.</p>
                                </div>
                                <div class="criterium-quicktips">Add a robots.txt file</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-xml_sitemaps" class="criterium result-3 ">
                            <div class="criterium-head">
                                <span class="prio-score hidden">50</span>

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Errors">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      XML Sitemap
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      <span class="italic">Missing</span>
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>We checked virtualization.com but couldn't find an XML sitemap.<a rel="nofollow" href="https://www.woorank.com/en/edu/seo-guides/xml-sitemaps" target="_blank">XML sitemaps</a> contain the list of your URLs that are available to index and allows the search engines to read your pages more intelligently. They can also include information like your site’s latest updates, frequency of changes and the importance of URLs.</p><p>Your site is currently missing an XML sitemap. We recommend you generate one for your site and submit it through both <a rel="nofollow" href="http://www.google.com/webmasters/tools/" target="_blank">Google Search Console</a> and <a rel="nofollow" href="http://www.bing.com/toolbox/webmaster" target="_blank">Bing Webmaster Tools. </a><br />Normally, your XML sitemap would be found at virtualization.com/sitemap.</p><p>Make sure to only include the pages you want search engines to crawl, so leave out any that have been blocked in a robots.txt file. Avoid using any URLs that cause redirects or error codes and be consistent in using your preferred URLs (with or without www.), correct protocols (http vs. https) and trailing slashes. You should also <a rel="nofollow" href="https://www.woorank.com/en/blog/how-to-locate-a-sitemap-in-a-robots-txt-file" target="_blank">use your robots.txt</a> file to point search engine crawlers to the location of your sitemap.</p>
                                </div>
                                <div class="criterium-quicktips">Add and Optimize your XML sitemap</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-clean_url" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      URL Parameters
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      Good, the URLs look clean.
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    URL parameters are used to track user behaviors on site (session IDs), traffic sources (referrer IDs) or to give users control over the content on the page (sorting and filtering). The issue with URL parameters is that Google sees each unique parameter value as a new URL hosting the same thing - meaning you could have a duplicate content problem. Sometimes, it’s able to <a href="https://support.google.com/webmasters/answer/6080548">recognize these URLs</a> and group them together. It then algorithmically decides which URL is the best representation of the group and uses it to consolidate ranking signals and display in search results. You can help Google recognize the best URL by using the rel=”canonical” tag.<br /><br />Use the <a href="https://www.google.com/webmasters/tools/crawl-url-parameters">URL Parameters Tool</a> in Google Search Console to tell Google how your URL parameters affect page content and how to to crawl URLs with parameters. Use this tool very carefully - you can easily prevent Google from crawling pages you want indexed through overly restrictive crawling settings, especially if you have URLs with <a href="https://support.google.com/webmasters/answer/6080551">multiple parameters</a>.
                                    
                                </div>
                                <div class="criterium-quicktips">Rewrite your URLs and clean them up.</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-underscores_url" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Underscores in the URLs
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Low impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Low impact</span>
                                            <span class="icon-container solvability rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Hard to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Hard to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      Great, you are not using ‪underscores (these_are_underscores) in your URLs.
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Great, you aren't using ‪<a rel="nofollow" href="https://www.woorank.com/en/blog/underscores-in-urls-why-are-they-not-recommended" target="_blank">underscores</a> (these_are_underscores) in your URLs. </p><p>Google sees hyphens as word separators while underscores aren't recognized. So the search engine sees www.example.com/green_dress as www.example.com/greendress. The bots will have a hard time determining this URL's relevance to a keyword.</p>
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-blocking_factors" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Blocking Factors
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Hard to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Hard to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part ">
  <p>
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
      <span class="icon-text"><strong>Flash: </strong>No</span>

  </p>
</div>

                                        <div class="part ">
  <p>
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
      <span class="icon-text"><strong>Frames: </strong>No</span>

  </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Great, you aren't using Flash or frames on your site.</p><p>While it often looks nicer, Flash content can't be <a rel="nofollow" href="https://support.google.com/webmasters/bin/answer.py?hl=en&answer=72746" target="_blank">properly indexed</a> by search engines. Maximize your SEO efforts by avoiding Flash.</p><p><a rel="nofollow" href="https://support.google.com/webmasters/answer/34445?hl=en" target="_blank">Search engines also have problems with frames</a> because they can't crawl or index the content within them. Avoid them if you can and use a <a rel="nofollow" href="https://www.w3.org/TR/REC-html40/present/frames.html#h-16.4." target="_blank">NoFrames tag</a> when you can't.</p>
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-domain_registration" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Domain Registration
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Low impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Low impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part ">
  <p>
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
      <span class="icon-text">Created 14 years ago</span>

  </p>
</div>

                                        <div class="part ">
  <p>
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
      <span class="icon-text">Expires in 2 months</span>

  </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Your domain is the human-readable address of your website on the Internet. How long your domain name has been registered does have a limited impact on your rankings in search results. The newer your domain the harder it can be to achieve a higher rank. To help offset this, consider buying a <a rel="nofollow" href="https://sedo.com/us/?language=us" target="_blank">second-hand domain name</a>.</p><p>Do you know that you can register your domain for up to 10 years? By doing so, you will show the world that you are serious about your business.<br /></p>
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-blog" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Blog
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Hard to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Hard to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      We found a Blog on this website.
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Starting a blog is a great way to engage with your audience and increase your online visibility by attracting qualified traffic from new sources.</p><p>Use our tips to <a rel="nofollow" href="https://www.woorank.com/en/blog/promoting-your-blog-on-social-media" target="_blank">optimize your blog</a> to <a rel="nofollow" href="https://www.youtube.com/watch?v=i8bRsIkyBEw" target="_blank">build links</a> and improve performance.</p>
                                </div>
                                <div class="criterium-quicktips">Consider starting a blog</div>
                        <div class="delimiter"></div></div>
            </div>
        </div>

        <div class="module" id="module-mobile">
            <div class="module-content">
                <h2 class="module-title" id="module-mobile-anchor">
                    Mobile
                    <svg class="icon icon-mobile hidden">
                      <use xlink:href="#mobile"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="pj_ga_mobVisits">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Mobile visits
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade to see the number of monthly visits from mobile users.</div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div id="criterium-mobile_rendering" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Mobile Rendering
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part image iphone-thumb">
    <img src="https:&#x2F;&#x2F;s3.amazonaws.com&#x2F;woothumbs&#x2F;virtualization.com.iphone.png"  alt="virtualization.com on an iPhone" />
</div>

                                        <div class="part image ipad-thumb">
    <img src="https:&#x2F;&#x2F;s3.amazonaws.com&#x2F;woothumbs&#x2F;virtualization.com.ipad.png"  alt="virtualization.com on an iPad" />
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p><a rel="nofollow" href="https://techcrunch.com/2015/01/12/80-of-all-online-adults-now-own-a-smartphone-less-than-10-use-wearables/" target="_blank">80% of adult Internet users now have a smartphone</a>. You should definitely be optimizing your website to render on the most popular mobile devices.</a></p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
            </div>
        </div>

        <div class="module" id="module-usability">
            <div class="module-content">
                <h2 class="module-title" id="module-usability-anchor">
                    Usability
                    <svg class="icon icon-usability hidden">
                      <use xlink:href="#usability"></use>
                    </svg>
                </h2>
                        <div id="criterium-url" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      URL
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      virtualization.com
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p><a rel="nofollow" href="https://www.woorank.com/en/blog/guide-to-clean-urls-for-seo-and-usability" target="_blank">Keep your URLs short and clean</a> and avoid long domain names when possible.</p><p>A descriptive URL is better recognized by search engines. A user should be able to look at the address bar and make an accurate guess about the content of the page before reaching it (e.g., http://www.mysite.com/en/products).</p><p>Keep in mind that URLs are also an important part of a comprehensive <a rel="nofollow" href="https://www.woorank.com/en/blog/url-optimization-5-best-practices-for-seo" target="_blank">SEO strategy</a>. Use clean URLs to <a rel="nofollow" href="https://support.google.com/webmasters/answer/6080548?hl=en&rd=2" target="_blank">make your site more "crawlable" by Google&trade;</a>.</p><p>Resource: Search for a <a rel="nofollow" href="https://instantdomainsearch.com/" target="_blank">good domain name</a>. If no good names are available, consider a <a rel="nofollow" href="https://sedo.com/us/?language=us" target="_blank">second hand domain</a>. To prevent brand theft, you might consider trademarking your domain name.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-favicon" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Favicon
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part favicon">
  <p>
<i style="background-image: url(https:&#x2F;&#x2F;www.google.com&#x2F;s2&#x2F;favicons?domain&#x3D;http:&#x2F;&#x2F;virtualization.com&#x2F;wp-content&#x2F;uploads&#x2F;2011&#x2F;05&#x2F;favicon.ico)" class="icon icon-16-16 " alt="Favicon"></i>
      <span class="icon-text">Great, your website has a favicon.</span>

  </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>Favicons are the small icons that appear next to your site’s name or URL in a browser. They can be displayed in the address bar, a browser tab title or bookmarks. Make sure it is <a rel="nofollow" href="https://www.woorank.com/en/blog/favicons-for-branding-and-usability" target="_blank">consistent with your brand</a>.</p><p><a rel="nofollow" href="https://www.youtube.com/watch?v=0KDjjePkd2U" target="_blank">Here</a> is a way one company used a special favicon to improve user experience.</p>
                                    <p>Favicons are the small icons that appear next to your site’s name or URL in a browser. They can be displayed in the address bar, a browser tab title or bookmarks. Make sure this favicon is <a rel="nofollow" href="https://www.woorank.com/en/blog/favicons-for-branding-and-usability" target="_blank">consistent with your brand</a>.</p><p><a rel="nofollow" href="https://www.youtube.com/watch?v=0KDjjePkd2U" target="_blank">Here</a> is a way one company used a special favicon to improve user experience.</p>
                                </div>
                                <div class="criterium-quicktips">Add a Favicon</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-page_size" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Page Size
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      52.4 KB (World Wide Web average is 2 Mb)
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>Two of the main reasons for an increase in page size are images and JavaScript files. Large page size contributes to slow page speeds so try to keep your page size below 2 Mb.</p><p>Tip: Use images with a small size and optimize their download with <a rel="nofollow" href="http://en.wikipedia.org/wiki/Gzip" target="_blank">gzip</a>.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-load_time" class="criterium result-3 ">
                            <div class="criterium-head">
                                <span class="prio-score hidden">25</span>

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Errors">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Load Time
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-3 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="High impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">High impact</span>
                                            <span class="icon-container solvability rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Hard to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Hard to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      1.18 second(s) (44.47 kB/s)
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Site speed is an <a rel="nofollow" href="https://www.woorank.com/en/blog/website-speed-test-tools" target="_blank">important factor</a> for ranking in Google search results. Load time affects not only visitor engagement, retention, and conversion rates, but it can also affect your rankings. <br /><br />virtualization.com took 1.18 seconds to load at a speed of 44.47 kb per second.</p><p>This is too slow and it is likely impacting your search rankings and user experience.</p><p>High load times can be caused by a number of things, including pages with poor code optimization (cache, Mysql queries, etc.), server problems, network problems, or third-party issues (advertising codes, analytics codes, etc.).</p><p>Site speed is an <a rel="nofollow" href="https://www.woorank.com/en/blog/website-speed-test-tools" target="_blank">important factor</a> for ranking high in Google search results.</p><p>Resources:<br /><br />Check out Google&trade;'s developer tutorials <a rel="nofollow" href="http://developers.google.com/speed/pagespeed/insights/" target="_blank">for tips </a>on how to to make your website run faster.</p><p>WooRank subscribers who have an Advanced Review can sign up for uptime notifications. <a rel="nofollow" href="https://www.internetvista.com/en/website-test.htm" target="_blank">We'll monitor your server and send you an email alert whenever your site goes down</a>.</p>
                                </div>
                                <div class="criterium-quicktips">Speed-up your website</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-language" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Language
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      <span class="bold">Declared:</span> <i>English</i>
      
    </p>
    <p>
      <span class="bold">Detected: </span><i>English</i>
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p>Great, your declared language matches the language detected on the page. </p><p>Make sure your declared language is the same as the <a rel="nofollow" href="https://www.google.com.au/language_tools" target="_blank">language detected by Google</a>.</p><p><a rel="nofollow" href="https://www.sitepoint.com/international-seo-an-in-depth-checklist/" target="_blank">Tips</a> for multilingual websites:<ul><li><a rel="nofollow" href="https://www.w3.org/International/questions/qa-html-language-declarations" target="_blank">Define the language</a> of the content in each page's HTML code.</li><li>Specify the language code in the URL as well (e.g., "mywebsite.com/fr/mycontent.html").</li><li>Use <a rel="nofollow" href="https://www.woorank.com/en/blog/top-9-pitfalls-of-international-seo" target="_blank">hreflang tags</a> to specify language and country for Google, and the <a rel="nofollow" href="https://www.w3.org/International/questions/qa-http-and-lang" target="_blank">"content-language" meta tag</a> to specify the language and country for Bing.</li></ul></p>
                                </div>
                                <div class="criterium-quicktips">Declare the language used</div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-metadata" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Structured Data Markup
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part tags ">
    <ul class="tags-container">
        <li>
            <a data-href="http:&#x2F;&#x2F;microformats.org&#x2F;wiki&#x2F;h-feed" class="js-external-link" target="_blank">
                <span class="text">microformats h-feed</span>
                
            </a>
        </li>
    </ul>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    Structured Data Markup is used to generate <a rel="nofollow" href="https://www.woorank.com/en/blog/rich-snippets-what-why-and-how-to-implement" target="_blank">Rich Snippets</a> in search engine results. It is a way for website owners to send structured data to search engine robots; helping them to understand your content and create well-presented search results.<br /><br />Get the most out of Google's <a rel="nofollow" href="https://developers.google.com/structured-data/rich-snippets/" target="_blank">rich snippets</a> for content types such as: <a rel="nofollow" href="https://developers.google.com/structured-data/rich-snippets/reviews" target="_blank">Reviews</a>, <a rel="nofollow" href="https://schema.org/Person" target="_blank">People</a>, <a rel="nofollow" href="https://developers.google.com/structured-data/rich-snippets/products" target="_blank">Products</a>, <a rel="nofollow" href="https://schema.org/Organization" target="_blank">Businesses and Organizations</a>, <a rel="nofollow" href="https://developers.google.com/structured-data/rich-snippets/recipes" target="_blank">Recipes</a>, <a rel="nofollow" href="https://developers.google.com/structured-data/rich-snippets/events" target="_blank">Events</a>, <a rel="nofollow" href="https://developers.google.com/structured-data/rich-snippets/videos" target="_blank">Videos</a> and <a rel="nofollow" href="https://schema.org/MusicRecording" target="_blank">Music</a>. If your website covers one of these topics, then we suggest that you annotate it with <a rel="nofollow" href="https://schema.org/docs/gs.html" target="_blank">Schema.org</a> using <a rel="nofollow" href="https://developers.google.com/structured-data/schema-org" target="_blank">microdata</a>.
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-tld_cybersquating_prevention" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Domain Availability
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part table ">
    <table class="table table-thinhead table-striped">
        <thead>
            <tr>
                <th class="">
                        
                            <a href="https:&#x2F;&#x2F;en.wikipedia.org&#x2F;wiki&#x2F;Country_code_top-level_domain" title="https:&#x2F;&#x2F;en.wikipedia.org&#x2F;wiki&#x2F;Country_code_top-level_domain" target="_blank">Domains</a>
                </th>
                <th class="">
                        Status
                </th>
                <th class="column-icon">
                        
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="">
                <td class="">
                    <span title="virtualization.net">virtualization.net</span>
                </td>
                <td class="">
                    <span title="Expires in 4 years">Expires in 4 years</span>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-lock icon-xs fill-grey ">
  <use xlink:href="#lock"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virtualization.org">virtualization.org</span>
                </td>
                <td class="">
                    <span title="This domain is booked">This domain is booked</span>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-lock icon-xs fill-grey ">
  <use xlink:href="#lock"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virtualization.info">virtualization.info</span>
                </td>
                <td class="">
                    <span title="This domain is booked">This domain is booked</span>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-lock icon-xs fill-grey ">
  <use xlink:href="#lock"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virtualization.biz">virtualization.biz</span>
                </td>
                <td class="">
                    <span title="Expires a year ago">Expires a year ago</span>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-lock icon-xs fill-grey ">
  <use xlink:href="#lock"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virtualization.eu">virtualization.eu</span>
                </td>
                <td class="">
                    <span title="This domain is booked">This domain is booked</span>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-lock icon-xs fill-grey ">
  <use xlink:href="#lock"></use>
</svg>
                </td>
            </tr>
        </tbody>
    </table>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p><a rel="nofollow" href="https://be.godaddy.com/?isc=cjc30arch&cvosrc=affiliate.cj.5475951" target="_blank">Register</a> the various extensions of your domain to protect your brand from <a rel="nofollow" href="https://en.wikipedia.org/wiki/Cybersquatting" target="_blank">cybersquatters</a>.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-typo_cybersquating_prevention" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Typo Availability
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part table ">
    <table class="table table-thinhead table-striped">
        <thead>
            <tr>
                <th class="">
                        
                            <a href="https:&#x2F;&#x2F;en.wikipedia.org&#x2F;wiki&#x2F;Country_code_top-level_domain" title="https:&#x2F;&#x2F;en.wikipedia.org&#x2F;wiki&#x2F;Country_code_top-level_domain" target="_blank">Domains</a>
                </th>
                <th class="">
                        Status
                </th>
                <th class="column-icon">
                        
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="">
                <td class="">
                    <span title="cirtualization.com">cirtualization.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="vurtualization.com">vurtualization.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="vietualization.com">vietualization.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virrualization.com">virrualization.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virtjalization.com">virtjalization.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="">
                <td class="">
                    <span title="virtualiation.com">virtualiation.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
            <tr class="over-max">
                <td class="">
                    <span title="virtualizatiom.com">virtualizatiom.com</span>
                </td>
                <td class="">
                    <span title="Available.">Available.</span>
                    <a
                      href="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" 
                      
                      title="http:&#x2F;&#x2F;bit.ly&#x2F;1qKTAle" target="_blank">Register it now!</a>
                </td>
                <td class="column-icon">
<svg role="img" class="icon icon-woorank-success icon-xs fill-success ">
  <use xlink:href="#woorank-success"></use>
</svg>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="show-links">
        <a href="#" class="show-more">Show more</a>
        <a href="#" class="show-less">Show less</a>
    </div>
    <div class="pdf-count">
        and <strong>1</strong> more.
    </div>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p><a rel="nofollow" href="http://bit.ly/1qKTAle" target="_blank">Register</a> the various typos of your domain to protect your brand from cybersquatters.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
            </div>
        </div>

        <div class="module" id="module-technologies">
            <div class="module-content">
                <h2 class="module-title" id="module-technologies-anchor">
                    Technologies
                    <svg class="icon icon-technologies hidden">
                      <use xlink:href="#technologies"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="pj_uptime">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Server Uptime
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade now and get notified when <strong>virtualization.com</strong> goes down.</div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div id="criterium-ip_information" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Server IP
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      72.47.224.111
      
    </p>
    <p>
      <span class="bold">Server location:</span> <span></span> Culver City
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>Your server's IP address <a rel="nofollow" href="https://www.woorank.com/en/blog/how-will-changing-ip-address-impact-seo" target="_blank">has little impact</a> on your SEO. Nevertheless, try to host your website on a server which is geographically close to your visitors. Search engines take the geolocation of a server into account as well as the server speed. </p><p>Use <a rel="nofollow" href="http://www.dnsstuff.com/tools" target="_blank">DNSstuff</a> for comprehensive reports on your server.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-technologies" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Technologies
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part technologies">
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=apache">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/apache.png')"></span>
            <span class="application">
            Apache
            </span>
            <span class="category">
            Web server
            </span>
        </a>
    </div>
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=google-adsense">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/google-adsense.png')"></span>
            <span class="application">
            Google AdSense
            </span>
            <span class="category">
            Advertising network
            </span>
        </a>
    </div>
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=gravatar">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/gravatar.png')"></span>
            <span class="application">
            Gravatar
            </span>
            <span class="category">
            Miscellaneous
            </span>
        </a>
    </div>
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=jquery">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/jquery.png')"></span>
            <span class="application">
            jQuery
            </span>
            <span class="category">
            JavaScript framework
            </span>
        </a>
    </div>
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=php">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/php.png')"></span>
            <span class="application">
            PHP
            </span>
            <span class="category">
            Programming language
            </span>
        </a>
    </div>
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=wordpress">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/wordpress.png')"></span>
            <span class="application">
            WordPress
            </span>
            <span class="category">
            CMS
            </span>
        </a>
    </div>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>Get to know the technologies used for your website. Some codes might slow down your website. Ask your webmaster to take a look at this.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-analytics_technologies" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Analytics
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-2 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Medium impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Medium impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part technologies">
    <div class="technology">
        <a target="_blank" href="https://index.woorank.com/en/reviews?technology=google-analytics">
            <span class="tech-icon" style="background-image: url('https:&#x2F;&#x2F;dz17jvmxa7kn9.cloudfront.net/tech-icons/google-analytics.png')"></span>
            <span class="application">
            Google Analytics
            </span>
            <span class="category">
            
            </span>
        </a>
    </div>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>Web analytics let you measure visitor activity on your website. You should have at least one analytics tool installed, but It can also be good to install a second in order to cross-check the data.</p><p>Popular Analytics Tools Include: <a rel="nofollow" href="http://www.google.com/analytics/" target="_blank">Google Analytics</a>, <a rel="nofollow" href="https://www.quantcast.com/" target="_blank">Quantcast&trade;</a>, <a rel="nofollow" href="http://www.adobe.com/marketing-cloud/web-analytics.html" target="_blank">AdobeAnalytics&trade;</a>, <a rel="nofollow" href="http://piwik.org/" target="_blank">Piwik&trade;</a>, <a rel="nofollow" href="http://www.chartbeat.com" target="_blank">chartbeat&trade;</a>, <a rel="nofollow" href="http://clicky.com/" target="_blank">Clicky&trade;</a>, <a rel="nofollow" href="http://www.clicktale.com/" target="_blank">ClickTale&trade;</a>, etc.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-doctype" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Doctype
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      XHTML 1.0 Strict
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    <p>The Doctype is used to instruct web browsers about the document type being used. For example, what version of HTML the page is written in.</p><p>Declaring a <a rel="nofollow" href="http://www.w3schools.com/tags/tag_DOCTYPE.asp" target="_blank">doctype</a> helps web browsers to render content correctly.</p>
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
                        <div id="criterium-encoding" class="criterium result-1 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Passed">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Encoding
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Low impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Low impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      Great, language/character encoding is specified:  UTF-8
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    <p></p><p>Specifying language/character encoding can prevent problems with the rendering of <a rel="nofollow" href="http://en.wikipedia.org/wiki/Character_encoding" target="_blank">special characters</a>.</p>
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
            </div>
        </div>

        <div class="module" id="module-crawl_errors">
            <div class="module-content">
                <h2 class="module-title" id="module-crawl_errors-anchor">
                    Crawl Errors
                    <svg class="icon icon-crawl_errors hidden">
                      <use xlink:href="#crawl_errors"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="gwt_crawl_errors">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            URL Errors
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">The Crawl Errors report for websites provides details about the site URLs that Google could not successfully crawl or that returned an HTTP error code.</div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
            <div class="module-section" id="module-section-title-promote">
                Promote
            </div>

        <div class="module" id="module-backlinks">
            <div class="module-content">
                <h2 class="module-title" id="module-backlinks-anchor">
                    Backlinks
                    <svg class="icon icon-backlinks hidden">
                      <use xlink:href="#backlinks"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="pj_backlinks_quality">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Backlink Quality
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade to get detailed insights into the quality and source of your backlinks, including:<ul><li>Source Pages</li><li>Target URLs</li><li>Backlink Quality Score and more!</li></ul></div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
            </div>
        </div>

        <div class="module" id="module-social">
            <div class="module-content">
                <h2 class="module-title" id="module-social-anchor">
                    Social
                    <svg class="icon icon-social hidden">
                      <use xlink:href="#social"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="pj_fb_insight_reach">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Facebook Views
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade to connect your Facebook Page and get in-depth insights about:<ul><li>Views</li><li>Activity</li><li>Demographics and more!</li></ul></div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div id="criterium-facebook_brand_page" class="criterium result-0 ">
                            <div class="criterium-head">

                                <h3 class="criterium-head-title simple-tooltip" data-placement="left" rel="tooltip" data-original-title="Informational">
                                    <span class="icon-container">
                                      <svg class="icon icon-bullet-plain" role="img">
                                        <use xlink:href="#bullet-plain"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-success" role="img">
                                        <use xlink:href="#bullet-success"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-warning" role="img">
                                        <use xlink:href="#bullet-warning"></use>
                                    </svg>
                                      <svg class="icon icon-bullet-danger" role="img">
                                        <use xlink:href="#bullet-danger"></use>
                                    </svg>
                                      <svg class="icon icon-loader" role="img">
                                        <use xlink:href="#loader"></use>
                                    </svg>
                                    </span>
                                    <span class="icon-text">
                                      Facebook Page
                                    </span>
                                </h3>

                                    <div class="criterium-head-icons">
                                            <span class="icon-container importance rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Low impact">
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                              <svg class="icon icon-impact icon-xs" role="img">
                                                <use xlink:href="#impact"></use>
                                            </svg>
                                            </span>
                                            <span class="icon-text hidden">Low impact</span>
                                            <span class="icon-container solvability rating-1 simple-tooltip" data-placement="top" rel="tooltip" data-original-title="Easy to solve">
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                                <svg class="icon icon-gear icon-xs" role="img">
                                                    <use xlink:href="#gear"></use>
                                                </svg>
                                            </span>
                                            <span class="icon-text hidden">Easy to solve</span>
                                    </div>
                            </div>
                            <div class="criterium-content">
                                        <div class="part text ">
    <p>
      <span class="italic">Not found</span>
      
    </p>
</div>

                                        <div class="part text user-input-message">
    <p>
      <a data-href="https://help.woorank.com/hc/en-us/articles/206139331-How-to-Force-Social-Local-Detection" class="js-external-link" target="_blank" rel="nofollow">Add your Facebook Page</a> or <a data-href="https://www.facebook.com/pages/create/" class="js-external-link" target="_blank" rel="nofollow">create one</a>
      
    </p>
</div>

                                    
                            </div>
                                <div class="criterium-advice-click"><span>?</span></div>
                                <div class="criterium-advice">
                                    
                                    
                                </div>
                                <div class="criterium-quicktips"></div>
                        <div class="delimiter"></div></div>
            </div>
        </div>

        <div class="module" id="module-local_visibility">
            <div class="module-content">
                <h2 class="module-title" id="module-local_visibility-anchor">
                    Local
                    <svg class="icon icon-local_visibility hidden">
                      <use xlink:href="#local_visibility"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="local_directories">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Local Directories
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade to see the latest reviews of <strong>virtualization.com</strong> in local directories</div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
            <div class="module-section" id="module-section-title-measure">
                Measure
            </div>

        <div class="module" id="module-pj_serp">
            <div class="module-content">
                <h2 class="module-title" id="module-pj_serp-anchor">
                    Keyword Tool
                    <svg class="icon icon-pj_serp hidden">
                      <use xlink:href="#pj_serp"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="weekly_ranking">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Google Ranking
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade to monitor <strong>virtualization.com</strong>’s Google ranking for custom keywords</div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
            </div>
        </div>

        <div class="module" id="module-visitors">
            <div class="module-content">
                <h2 class="module-title" id="module-visitors-anchor">
                    Visitors
                    <svg class="icon icon-visitors hidden">
                      <use xlink:href="#visitors"></use>
                    </svg>
                </h2>
                        <div class="review-cta hidden-print" data-cta-id="pj_ga_audience_visitors">
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <h3 class="cta-title">
                                        <span class="icon-container">
                                            <svg class="icon icon-bullet-plain icon-md" role="img">
                                                <use xlink:href="#bullet-plain"></use>
                                            </svg>
                                        </span>
                                        <span class="icon-text">
                                            Sessions
                                        </span>
                                    </h3>
                                </div>
                                <div class="col-xs-10 col-xs-offset-1 col-md-9 col-md-offset-0 cta-content">
                                    <div class="cta-inner-content">Upgrade to sync your Google Analytics account and find significant metrics like:<br />
<ul><li>  Traffic Source</li><li>  Source Domains</li><li>  Pageviews and more!</li></ul></div>
                                    <a href="/en/register/plan/" class="btn btn-sm btn-warning" target="_top">
                                        Free Trial
                                    </a>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
</div>
    <div class="hidden" id="get-manycontact-quick-wins">
        <a class="external-link"
            href="https://www.manycontacts.com/?utm_source=woorank&amp;utm_medium=review&amp;utm_campaign=TopPriority"
            rel="nofollow" target="_blank">
            <li><i></i>Add a Conversion Form or use ManyContacts </li>
        </a>
    </div>
    
    <div class="hidden" id="translations-glossary">
        <span class="set_or_create_twitter">[YML:set_or_create_twitter]</span>
        <span class="field_placeholder_twitter">[YML:field_placeholder_twitter]</span>
        <span class="set">Set</span>
    </div>
</div>
                    </div>
            </div>

    
    
    <footer class="container page-footer" id="footer">
    <ul class="footer-columns">
      <li class="footer-logo-container">
        <a class="footer-logo"
            href="/"
            title="SEO Audit Tool & Website Review - WooRank">
                        <svg class="icon icon-logo-nocolor fill-grey" role="img" style="">
                <use xlink:href="#logo-nocolor"></use>
            </svg>        </a>
        <span class="sr-only">Copyright &copy; 2017</span>
      </li>
      <li class="footer-menu-container">
        <div class="footer-menu-columns">
          <div class="mobile-menu-column">
            <ul class="footer-menu-column">
              <li class="footer-menu-title">Company</li>
              <li>
                  <a href="/en/p/about">
                        About Us                  </a>
              </li>
              <li>
                  <a href="/en/jobs">
                      Jobs
                  </a>
              </li>
              <li>
                <a href="/en/p/privacy">Privacy</a>
              </li>
              <li>
                <a href="/en/p/tos">Terms of Service</a>
              </li>
            </ul>
            <ul class="footer-menu-column">
              <li class="footer-menu-title">WooRank</li>
              <li class="">
                  <a href="/en/p/pricing">
                        Pricing                  </a>
              </li>
              <li>
                  <a href="https://experts.woorank.com/en/experts" target="_blank">
                      Experts
                  </a>
              </li>
              <li>
                  <a href="https://index.woorank.com/" target="_blank">
                        Review Index                  </a>
              </li>
              <li class="hidden">
                  <a
                  href="https://chrome.google.com/webstore/detail/seo-website-analysis/hlngmmdolgbdnnimbmblfhhndibdipaf"
                  class="extension-link"
                  data-url-firefox="https://addons.mozilla.org/en-us/firefox/addon/seo-website-analysis/"
                  data-url-chrome="https://chrome.google.com/webstore/detail/seo-website-analysis/hlngmmdolgbdnnimbmblfhhndibdipaf"
                  target="_blank">
                        Extension                  </a>
              </li>
            </ul>
          </div>
          <div class="mobile-menu-column">
            <ul class="footer-menu-column">
              <li class="footer-menu-title">Resources</li>
              <li>
                  <a href="/en/blog" target="_blank">
                        Blog                  </a>
              </li>
              <li>
                  <a href="/en/edu/seo-guides">
                        SEO Guides                  </a>
              </li>
              <li>
                  <a href="https://www.youtube.com/user/WooRankTV">
                      Videos
                  </a>
              </li>
            </ul>
            <ul class="footer-menu-column">
              <li class="footer-menu-title">Support</li>
              <li>
                  <a href="https://help.woorank.com/hc/en-us" target="_blank">
                        Need Help?                  </a>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li class="footer-social-container">
        <ul>
          <li>
              <a href="https://www.facebook.com/woorank/" target="_blank" title="Facebook">
                                <svg class="icon icon-facebook icon-xs fill-white" role="img" style="">
                <use xlink:href="#facebook"></use>
            </svg>              </a>
          </li>
          <li>
              <a
              href="https://twitter.com/woorank?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
              target="_blank"
              title="Twitter">
                                <svg class="icon icon-twitter icon-xs fill-white" role="img" style="">
                <use xlink:href="#twitter"></use>
            </svg>              </a>
          </li>
          <li>
              <a
              href="https://www.linkedin.com/company/woorank"
              target="_blank"
              title="Linked In">
                                <svg class="icon icon-linkedin icon-xs fill-white" role="img" style="">
                <use xlink:href="#linkedin"></use>
            </svg>              </a>
          </li>
          <li>
              <a
              href="https://www.youtube.com/user/WooRankTV"
              target="_blank"
              title="YouTube">
                                <svg class="icon icon-youtube icon-xs fill-white" role="img" style="">
                <use xlink:href="#youtube"></use>
            </svg>              </a>
          </li>
          <li>
            <a
            href="https://www.instagram.com/woorank/?hl=en"
            target="_blank"
            title="Instagram">
                            <svg class="icon icon-instagram icon-xs fill-white" role="img" style="">
                <use xlink:href="#instagram"></use>
            </svg>            </a>
          </li>
          <li>
            <a
            href="https://plus.google.com/+woorank"
            target="_blank"
            title="Google Plus">
                            <svg class="icon icon-googleplus icon-xs fill-white" role="img" style="">
                <use xlink:href="#googleplus"></use>
            </svg>            </a>
          </li>
        </ul>
      </li>
    </ul>
</footer>

    
<div class="modal exit-page-modal exit-page-modal-register js-exit-modal"
     data-exit-page="register"
     id="exit-page-modal-register">
    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <svg class="icon icon-cross" role="img" style="">
                <use xlink:href="#cross"></use>
            </svg>            </button>
            <div class="modal-header">
                <h4 class="modal-title">Don’t go! We have so much more to offer!</h4>
                <p class="text-center modal-sub-title">Sign up now to unlock all of WooRank’s features</p>
            </div>
            <div class="modal-body">
                <div class="carousel slide exit-page-carousel-parners" id="exit-page-carousel-parners" data-ride="carousel">
                    <ol class="carousel-indicators">
                                                                                <li data-target="#exit-page-carousel-parners"
                                data-slide-to="0"
                                class="active"></li>
                                                                                <li data-target="#exit-page-carousel-parners"
                                data-slide-to="1"
                                class=""></li>
                                                                                <li data-target="#exit-page-carousel-parners"
                                data-slide-to="2"
                                class=""></li>
                                                                                <li data-target="#exit-page-carousel-parners"
                                data-slide-to="3"
                                class=""></li>
                                                                                <li data-target="#exit-page-carousel-parners"
                                data-slide-to="4"
                                class=""></li>
                                                                                <li data-target="#exit-page-carousel-parners"
                                data-slide-to="5"
                                class=""></li>
                                            </ol>
                    <div class="carousel-inner" role="listbox">
                                                                                <div class="item active 1"
                                id="uptime">
                                <img src="//dz17jvmxa7kn9.cloudfront.net/assets/img/exit-page/1_Exit_Page_Uptime_Monitoring.jpg"
                                     alt="Uptime monitoring"
                                     class="img-uptime"/>
                                <div class="carousel-caption">
                                    <h6>Uptime monitoring</h6>
                                    <p>Get email notifications whenever your site goes down</p>
                                </div>
                                <a class="btn btn-warning carousel-cta js-carousel-cta"
                                   href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=free_review&utm_campaign=exit_page"
                                   id="uptime">
                                                <svg class="icon icon-unlock fill-white" role="img" style="">
                <use xlink:href="#unlock"></use>
            </svg>                                    Start My 14-Day Free Trial                                </a>
                            </div>
                                                                                <div class="item  "
                                id="serp">
                                <img src="//dz17jvmxa7kn9.cloudfront.net/assets/img/exit-page/2_Exit_Page_Serp_Checker.jpg"
                                     alt="Keyword Tool"
                                     class="img-serp"/>
                                <div class="carousel-caption">
                                    <h6>Keyword Tool</h6>
                                    <p>Track keywords and benchmark your performance against your competitors </p>
                                </div>
                                <a class="btn btn-warning carousel-cta js-carousel-cta"
                                   href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=free_review&utm_campaign=exit_page"
                                   id="serp">
                                                <svg class="icon icon-unlock fill-white" role="img" style="">
                <use xlink:href="#unlock"></use>
            </svg>                                    Start My 14-Day Free Trial                                </a>
                            </div>
                                                                                <div class="item  "
                                id="backlinks">
                                <img src="//dz17jvmxa7kn9.cloudfront.net/assets/img/exit-page/3_Exit_Page_Backlink_Analysis.jpg"
                                     alt="Backlink Analysis"
                                     class="img-backlinks"/>
                                <div class="carousel-caption">
                                    <h6>Backlink Analysis</h6>
                                    <p>Monitor backlinks and check for quality and efficiency</p>
                                </div>
                                <a class="btn btn-warning carousel-cta js-carousel-cta"
                                   href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=free_review&utm_campaign=exit_page"
                                   id="backlinks">
                                                <svg class="icon icon-unlock fill-white" role="img" style="">
                <use xlink:href="#unlock"></use>
            </svg>                                    Start My 14-Day Free Trial                                </a>
                            </div>
                                                                                <div class="item  "
                                id="traffic">
                                <img src="//dz17jvmxa7kn9.cloudfront.net/assets/img/exit-page/4_Exit_Page_Traffic_&_Crawl.jpg"
                                     alt="Monitor Traffic & Crawl Errors"
                                     class="img-traffic"/>
                                <div class="carousel-caption">
                                    <h6>Monitor Traffic & Crawl Errors</h6>
                                    <p>Sync Google accounts to pull in traffic & crawl error data</p>
                                </div>
                                <a class="btn btn-warning carousel-cta js-carousel-cta"
                                   href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=free_review&utm_campaign=exit_page"
                                   id="traffic">
                                                <svg class="icon icon-unlock fill-white" role="img" style="">
                <use xlink:href="#unlock"></use>
            </svg>                                    Start My 14-Day Free Trial                                </a>
                            </div>
                                                                                <div class="item  "
                                id="email">
                                <img src="//dz17jvmxa7kn9.cloudfront.net/assets/img/exit-page/5_Exit_Page_Weekly_Email_Updates.jpg"
                                     alt="Weekly Email Updates"
                                     class="img-email"/>
                                <div class="carousel-caption">
                                    <h6>Weekly Email Updates</h6>
                                    <p>Get weekly updates with keyword position changes and traffic data straight to your inbox</p>
                                </div>
                                <a class="btn btn-warning carousel-cta js-carousel-cta"
                                   href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=free_review&utm_campaign=exit_page"
                                   id="email">
                                                <svg class="icon icon-unlock fill-white" role="img" style="">
                <use xlink:href="#unlock"></use>
            </svg>                                    Start My 14-Day Free Trial                                </a>
                            </div>
                                                                                <div class="item  "
                                id="custom">
                                <img src="//dz17jvmxa7kn9.cloudfront.net/assets/img/exit-page/6_Exit_Page_Custom_Reports.jpg"
                                     alt="Custom Reports"
                                     class="img-custom"/>
                                <div class="carousel-caption">
                                    <h6>Custom Reports</h6>
                                    <p>Use our white-label PDF reports to generate custom reports for your managers or clients</p>
                                </div>
                                <a class="btn btn-warning carousel-cta js-carousel-cta"
                                   href="/en/signup?plan=v3pro&utm_source=woorank&utm_medium=free_review&utm_campaign=exit_page"
                                   id="custom">
                                                <svg class="icon icon-unlock fill-white" role="img" style="">
                <use xlink:href="#unlock"></use>
            </svg>                                    Start My 14-Day Free Trial                                </a>
                            </div>
                                            </div>
                    <a class="left carousel-control" href="#exit-page-carousel-parners" role="button" data-slide="prev">
                                    <svg class="icon icon-chevron-left" role="img" style="">
                <use xlink:href="#chevron-left"></use>
            </svg>                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#exit-page-carousel-parners" role="button" data-slide="next">
                                    <svg class="icon icon-chevron-right" role="img" style="">
                <use xlink:href="#chevron-right"></use>
            </svg>                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="modal fade" id="generic-error-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <svg class="icon icon-cross" role="img" style="">
                <use xlink:href="#cross"></use>
            </svg>            </button>
            <div class="modal-header">
                <h4 class="modal-title">Oops, something went wrong!</h4>
            </div>
            <div class="modal-body text-center">
                <p>An unexpected error has occurred. Your action has not been completed. Please try again or contact <a rel="nofollow" href="http://help.woorank.com" target="_blank">WooRank Support</a>.</p>
            </div>
        </div>
    </div>
</div>

    
        <script type="text/javascript" src="//dz17jvmxa7kn9.cloudfront.net/assets/script/lib/jquery-c068ef64f353.min.js" ></script>
<script type="text/javascript" src="//dz17jvmxa7kn9.cloudfront.net/assets/script/lib/bootstrap-f43677ea7082.min.js" ></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/mailcheck/1.1/mailcheck.min.js" ></script>
<script type="text/javascript" src="https://cdn.ravenjs.com/1.1.20/jquery,native/raven.min.js" ></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/URI.js/1.15.1/URI.min.js" ></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/highcharts/4.1.4/highcharts.js" ></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.7.2/mustache.min.js" ></script>
<script type="text/javascript" src="//dz17jvmxa7kn9.cloudfront.net/assets/script/lib/jquery-vmap-2a265095c1a8.min.js" ></script>
<script type="text/javascript" src="//dz17jvmxa7kn9.cloudfront.net/assets/script/lib/jquery-vmap-world-3887539de2c6.min.js" ></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js" ></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment-range/2.0.3/moment-range.min.js" ></script>
<script type="text/javascript" src="//dz17jvmxa7kn9.cloudfront.net/assets/script/woorank-front-b219e7e038c6.min.js" ></script>
                        <script>
          eval(function(p,a,c,k,e,d){e=function(c){return c};if(!''.replace(/^/,String)){while(c--){d[c]=k[c]||c}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('0(!1)2.3.4=\'\';',5,5,'if|bashjgasbfahjfabjk|document|body|innerHTML'.split('|'),0,{}))
        </script>
                        <!-- Adwords Remarketing Tracking -->
        <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 940478370;
        var google_custom_params = window.google_tag_params;
        var google_remarketing_only = true;
        /* ]]> */
        </script>
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
        <noscript>
          <img
          height="1"
          width="1"
          style="border-style:none;"
          alt=""
          src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/940478370/?guid=ON&script=0"
          />
        </noscript>
    <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"f000c2d7df","applicationID":"6016918","transactionName":"blcHbRBVCEcFVkxeVlcdJkwRQAlZS0ddR1ZLRkpPC1ER","queueTime":0,"applicationTime":199,"atts":"QhAEG1hPG0k=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
