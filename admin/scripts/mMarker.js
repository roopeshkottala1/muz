// JavaScript Document
var zIndex = 100;
function delMark(nobj) {
	var obj;
	if (typeof nobj == 'string')
		obj = YAHOO.util.Dom.get(nobj);
	else obj = nobj;
	if (obj != null && typeof obj != 'string') {		
		YAHOO.util.Dom.get("dM_"+((obj.type == 'radio')?obj.name:obj.id)).style.zIndex = 99;
		if (obj.type == 'radio')
			obj.parentNode.parentNode.style.zIndex = 100;
		else
			obj.style.zIndex = 100;
		if (obj.type == 'radio')
			var x = blurHandler(obj.name, obj.id);
		else
			var x = blurHandler(obj.id, 0);

		var xbj = YAHOO.util.Dom.get("dM_"+obj.id);
		obj.style.position = 'static';
		YAHOO.util.Event.removeListener(obj, "change");
		YAHOO.util.Event.removeListener(obj, "focus");
		YAHOO.util.Event.removeListener(obj, "blur");
	} else {
		obj = nobj;
		for (var i=0; i < document.forms.length; i++) {	
			for (var j=0; j < document.forms[i].elements.length; j++) {
				if (document.forms[i].elements[j] && document.forms[i].elements[j].name == obj) {
					delMark(document.forms[i].elements[j].id);
				}
			}				
		}
		xbj = YAHOO.util.Dom.get("dM_"+obj);
	}
	if (xbj)
		xbj.parentNode.removeChild(xbj);
}
var isMark = function(el) {return (el.id.substr(0, 3) == 'dM_'); }
function eraseMark() {
	var rs = YAHOO.util.Dom.getElementsBy(isMark, 'div', document);			
	for (var i=0; i < rs.length; i++) {				
		var x = delMark(rs[i].id.substr(3));
	}
}
var lf = new Object();
function blurHandler(id, nid) {
	if ((lf.id != nid) && (lf.name == id) && nid != 0) {
		return;
	}
	var idiv = YAHOO.util.Dom.get("idM_"+id);
	if (idiv) {
		idiv.style.display = '';
		idiv.parentNode.style.height = (Number(idiv.parentNode.style.height.replace('px', '')) - idiv.offsetHeight)+'px';
		idiv.parentNode.style.top = (Number(idiv.parentNode.style.top.replace('px', '')) + idiv.offsetHeight)+'px';
		idiv.style.display = 'none';
	}
}
function doMark(obj, text) {
	if (typeof obj == 'object')
		obj = obj.id;
	setTimeout("doMarkDelay('" + obj.replace("'","\\'") + "', '" + text.replace(/'/g, "\\\'") + "')", 500);
}
function doMarkDelay(obj, text) {
	if (typeof obj == 'object')
		obj = obj.id;
	var nobj = YAHOO.util.Dom.get(obj);
	if (YAHOO.util.Dom.get("dM_"+nobj.name)) return;
	var gap = 2;
	var ieMargin = gap * Number(Boolean(YAHOO.util.Event.isIE));		
	if (nobj.type == 'radio')
		var r = YAHOO.util.Dom.getRegion(nobj.parentNode.parentNode);
	else
		var r = YAHOO.util.Dom.getRegion(obj);
	var div = document.createElement('DIV');
	div.style.width = (r.right - r.left + (2 * gap))+'px';
	div.style.left = (r.left - gap - 1 - ieMargin)+'px';
	div.style.border = "1px solid #E32129";
	var idiv = document.createElement('div');
	if (nobj.type == 'radio')
		var xbj = nobj.parentNode.parentNode;
	else
		var xbj = YAHOO.util.Dom.get(obj);	
	xbj.parentNode.appendChild(div);
	xbj.style.position = 'relative';
	xbj.style.zIndex = 100;			
	idiv.innerHTML = "<a href='#' style='float:right; padding: 2px 1px 0px 5px;' onclick='delMark(\""+obj+"\"); return false;'><img src='./images/close.jpg' align='absmiddle' style='border:0px' /></a>"+text;	
	idiv.style.padding = (gap + 1)+"px "+gap+"px "+(gap + 3)+"px "+gap+"px";	
	idiv.style.font = "11px Tahoma";
	idiv.style.width = (r.right - r.left)+'px';
	idiv.style.backgroundColor = "#E32129";
	idiv.style.color = "#FFFFFF";
	div.style.position = 'absolute';
	idiv.style.display = 'none';
	div.appendChild(idiv);	
	div.style.height = (r.bottom - r.top + (2 * gap) + 0)+'px';//(r.bottom - r.top + idiv.offsetHeight + (2 * gap) + 1)+'px';
	div.style.top = (r.top - gap - 1 - ieMargin)+'px';//(r.top - idiv.offsetHeight - gap - 1 - ieMargin)+'px';
	div.style.zIndex = 99;
	if (nobj.type == 'radio') {		
		div.id = "dM_"+nobj.name;
		idiv.id = "idM_"+nobj.name;
		xbj = nobj.form[nobj.name];
	} else {
		div.id = "dM_"+obj;
		idiv.id = "idM_"+obj;
	}
	YAHOO.util.Event.addListener(xbj, "change", function(e) {
			var obj = YAHOO.util.Event.getTarget(e);
			delMark((obj.type == 'radio')?obj.name:obj);
		}
	);
	YAHOO.util.Event.addListener(xbj, "focus", function(e) {
			var obj = YAHOO.util.Event.getTarget(e);
			lf.id = obj.id;
			lf.name = obj.name;
			YAHOO.util.Dom.get("dM_"+((obj.type == 'radio')?obj.name:obj.id)).style.zIndex = 199;
			if (obj.type == 'radio')
				obj.parentNode.parentNode.style.zIndex = 200;
			else
				YAHOO.util.Event.getTarget(e).style.zIndex = 200;
			var idiv = YAHOO.util.Dom.get("idM_"+((obj.type == 'radio')?obj.name:obj.id));
			if (idiv.style.display == '') return;
			idiv.style.display = '';
			idiv.parentNode.style.height = (Number(idiv.parentNode.style.height.replace('px', '')) + idiv.offsetHeight)+'px';
			idiv.parentNode.style.top = (Number(idiv.parentNode.style.top.replace('px', '')) - idiv.offsetHeight)+'px';
		}
	);
	YAHOO.util.Event.addListener(xbj, "blur", function(e) {
			var obj = YAHOO.util.Event.getTarget(e);
			YAHOO.util.Dom.get("dM_"+((obj.type == 'radio')?obj.name:obj.id)).style.zIndex = 99;
			if (obj.type == 'radio')
				obj.parentNode.parentNode.style.zIndex = 100;
			else
				obj.style.zIndex = 100;
			if (obj.type == 'radio')
				setTimeout("blurHandler('"+obj.name+"', '"+obj.id+"')", 500);
			else
				setTimeout("blurHandler('"+obj.id+"', 0)", 500);
		}
	);
}