window.onload = function () {
    function hasclass(obj, clsname) {
        var reg = new RegExp('\\b' + clsname + '\\b');
        return reg.test(obj.className)
    }
    function addclass(obj, clsname) {
        if (!hasclass(obj, clsname)) {
            obj.className += '' + clsname;
        }
    }
    function removeclass(obj, clsname) {
        var reg = new RegExp('\\b' + clsname + '\\b');
        obj.className = obj.className.replace(reg, '');
    }
    function toggleclass(obj, clsname) {
        var reg = new RegExp('\\b' + clsname + '\\b');
        if (hasclass(obj, clsname)) {
            removeclass(obj, clsname);
        } else {
            addclass(obj, clsname);
        }
    }
    function getstyle(obj, clsname) {
        if (window.getComputedStyle) {
            return getComputedStyle(obj, null)[styname];
        } else {
            return obj.currentStyle[styname];
        }
    }
    var menuspan = document.querySelectorAll('.menuspan');
    for (var i = 0; i < menuspan.length; i++) {
        menuspan[i].index = i;
        menuspan[i].onclick = function () {
            var parentdiv = this.parentNode;
            toggleclass(parentdiv, 'collapsed');
            for (var j = 0; j < menuspan.length; j++) {
                var otherdiv = menuspan[j].parentNode;
                if (this.index != menuspan[j].index) {
                    addclass(otherdiv, 'collapsed');
                }
            }
        }
    }
}
