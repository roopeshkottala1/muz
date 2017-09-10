YAHOO.namespace("domark");
$(document).ready(function(){
	$("input").each(function() {
		 $(this).click(function() {
								//alert("#error_"+$(this).attr("id"));
			 $("#error_"+$(this).attr("id")).hide("slow");
   		});
	});
});
var genFailure = function(o){
	if(o.responseText !== undefined){
		alert("Error interacting with server.\n\nHTTP status: " + o.status + "\nStatus code message: " + o.statusText);
	} else
		alert("Error interacting with server.");
}
var actSuccess = function(o){
	if(o.responseText !== undefined){
		var root = o.responseXML.documentElement;
		if (root.nodeName == 'error') {		
			for (i = 0; i < root.childNodes.length; i++) {
				if (root.childNodes[i].nodeName != '#text' && root.childNodes[i].hasChildNodes) {
					//alert(root.childNodes[i].nodeName);
					if (!items) var items = root.childNodes[i].nodeName;					
					//$("#error_"+root.childNodes[i].nodeName).show("slow");	
					//$("#error_"+root.childNodes[i].nodeName).html(root.childNodes[i].firstChild.nodeValue);
					var divContent = ' <div class="signupBBdiv" id="error_'+root.childNodes[i].nodeName+'" style="display:block;"><div class="signupBBleft"></div><div class="signupBBcontent">'+root.childNodes[i].firstChild.nodeValue+'</div></div>';
					$("#error_"+root.childNodes[i].nodeName).remove();
					var tmpHtml = $("#"+root.childNodes[i].nodeName).parent().html()+divContent;
					//alert($("#error_"+root.childNodes[i].nodeName).html());
					
					$("#"+root.childNodes[i].nodeName).parent().html(tmpHtml);
					//$("#"+root.childNodes[i].nodeName).parent().append('test');
					//alert($("#"+root.childNodes[i].nodeName).children());
					//$("#error_"+root.childNodes[i].nodeName).append('<div class="signupBBleft"></div><div class="signupBBcontent">'+root.childNodes[i].firstChild.nodeValue+'</div>');
					//$("#error_"+root.childNodes[i].nodeName).append($("div"));

				}
			}
			$("input").each(function() {
		 $(this).click(function() {
								//alert("#error_"+$(this).attr("id"));
			 $("#error_"+$(this).attr("id")).hide("slow");
   		});
	});
			
			
			$.scrollTo('#'+items, 800);
		} else {
			if(successFunc == "local") processResult(root);
			else document.location.href = redirectPage;
		}
	}
}
var successFunc = "global";
var redirectPage;
function submitForm(form, actPage, redirect, manual) {	
	YAHOO.util.Connect.setForm(form);
	if(!actPage) return;
	redirectPage = redirect;
	if(manual) successFunc = "local";
	var request = YAHOO.util.Connect.asyncRequest('POST', actPage + "&nohtml="+Math.random(), actHandle);
}
var actHandle =
{
  success:actSuccess,
  failure:genFailure
};
function value(root, node) {
	return root.getElementsByTagName(node)[0].hasChildNodes?root.getElementsByTagName(node)[0].firstChild.nodeValue:'';
}