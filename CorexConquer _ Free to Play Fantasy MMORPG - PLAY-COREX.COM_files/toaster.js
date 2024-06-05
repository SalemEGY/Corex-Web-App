!function (e, t) {
    if ("object" == typeof exports && "object" == typeof module)
        module.exports = t();
    else if ("function" == typeof define && define.amd)
        define([], t);
    else {
        var o = t();
        for (var n in o)
            ("object" == typeof exports ? exports : e)[n] = o[n]
    }
}(this, function () {
    return function (e) {
        function t(n) {
            if (o[n])
                return o[n].exports;
            var i = o[n] = {
                i: n,
                l: !1,
                exports: {}
            };
            return e[n].call(i.exports, i, i.exports, t),
                i.l = !0,
                i.exports
        }
        var o = {};
        return t.m = e,
            t.c = o,
            t.i = function (e) {
                return e
            }
            ,
            t.d = function (e, o, n) {
                t.o(e, o) || Object.defineProperty(e, o, {
                    configurable: !1,
                    enumerable: !0,
                    get: n
                })
            }
            ,
            t.n = function (e) {
                var o = e && e.__esModule ? function () {
                    return e.default
                }
                    : function () {
                        return e
                    }
                    ;
                return t.d(o, "a", o),
                    o
            }
            ,
            t.o = function (e, t) {
                return Object.prototype.hasOwnProperty.call(e, t)
            }
            ,
            t.p = "",
            t(t.s = 1)
    }([function (e, t, o) {
        "use strict";
        function n() {
            this.toasts = [],
                this.timeouts = new Map
        }
        Object.defineProperty(t, "__esModule", {
            value: !0
        }),
            t.toaster = new n,
            n.prototype.push = function (e, t) {
                var o = this;
                requestAnimationFrame(function () {
                    var n = e.attach(0);
                    o.toasts.forEach(function (e) {
                        e.seek(n)
                    }),
                        o.toasts.push(e),
                        o.timeouts.set(e, setTimeout(function () {
                            return o.remove(e)
                        }, t))
                })
            }
            ,
            n.prototype.remove = function (e) {
                if (this.timeouts.has(e)) {
                    clearTimeout(this.timeouts.get(e)),
                        this.timeouts.delete(e);
                    var t = this.toasts.indexOf(e)
                        , o = this.toasts.splice(t, 1)[0]
                        , n = e.element.offsetHeight;
                    o.detach(),
                        this.toasts.slice(0, t).forEach(function (e) {
                            return e.seek(-n)
                        })
                }
            }
            ,
            n.prototype.removeAll = function () {
                for (; this.toasts.length > 0;)
                    this.remove(this.toasts[0])
            }
    }
        , function (e, t, o) {
            "use strict";
            function n() {
                var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
                Object.assign(a, e)
            }
            function i() {
                return r.toaster.removeAll()
            }
            function s() {
                var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "No text!"
                    , t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : s.TYPE_INFO
                    , o = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : s.TIME_LONG
                    , n = document.createElement("div")
                    , i = document.createElement("div");
                n.className = "toaster",
                    i.className = "body " + t,
                    n.appendChild(i),
                    e instanceof Element ? i.appendChild(e) : i.textContent = "" + e,
                    this.element = n,
                    this.position = 0,
                    r.toaster.push(this, o)
            }
            Object.defineProperty(t, "__esModule", {
                value: !0
            }),
                t.configureToasts = n,
                t.deleteAllToasts = i,
                t.Toast = s;
            var r = o(0);
            s.TYPE_INFO = "info",
                s.TYPE_MESSAGE = "message",
                s.TYPE_WARNING = "warning",
                s.TYPE_ERROR = "error",
                s.TYPE_DONE = "done",
                s.TIME_SHORT = 2e3,
                s.TIME_NORMAL = 4e3,
                s.TIME_LONG = 8e3;
            var a = {
                deleteDelay: 300,
                topOrigin: 0
            };
            s.prototype.attach = function (e) {
                var t = this;
                return this.position = e,
                    this.updateVisualPosition(),
                    document.body.appendChild(this.element),
                    requestAnimationFrame(function () {
                        t.element.classList.add("displayed")
                    }),
                    this.element.offsetHeight
            }
                ,
                s.prototype.seek = function (e) {
                    this.position += e,
                        this.updateVisualPosition()
                }
                ,
                s.prototype.updateVisualPosition = function () {
                    var e = this;
                    requestAnimationFrame(function () {
                        e.element.style.bottom = -a.topOrigin + e.position + "px"
                    })
                }
                ,
                s.prototype.detach = function () {
                    var e = this
                        , t = this;
                    this.element.parentNode && (requestAnimationFrame(function () {
                        e.element.classList.remove("displayed"),
                            e.element.classList.add("deleted")
                    }),
                        setTimeout(function () {
                            requestAnimationFrame(function () {
                                t.element && t.element.parentNode && t.element.parentNode.removeChild(t.element)
                            })
                        }, a.deleteDelay))
                }
                ,
                s.prototype.delete = function () {
                    r.toaster.remove(this)
                }
        }
    ])
});
