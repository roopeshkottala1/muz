YAHOO.namespace("domark");
function modalClose (dialog) {
	dialog.data.fadeOut('slow', function () {
		dialog.container.hide('slow', function () {
			dialog.overlay.fadeOut('slow', function () {
				$.modal.close();
			});
		});
	});
}
function modalOpen (dialog) {	
	dialog.overlay.fadeIn('slow', function () {
		dialog.container.show('slow', function () {
			dialog.data.hide().slideDown('slow');	 
		});
	});
}
  

 /* confirm box */ 

function confirm(message, callback) {	
	$('#confirm').modal({
		close:false, 
		overlayId:'confirmModalOverlay',
		containerId:'confirmModalContainer', 
		onShow: function (dialog) {
			dialog.data.find('.message').append(message);
		
			// if the user clicks "yes"
			dialog.data.find('.yes').click(function () {
												 
				//// call the callback
				if ($.isFunction(callback)) {
					callback.apply();				
				} else {
					document.location.href = callback;
				}
				// close the dialog
				$.modal.close();
			});
		}
	});
}
  //confirm box  ENDS here  

/*function alert(message, callback) {
	$('#alert').modal({
		close:false, 
		overlayId:'alertModalOverlay',
		containerId:'alertModalContainer', 
		onShow: function (dialog) {
			dialog.data.find('.message').append(message);
						// if the user clicks "yes"
			dialog.data.find('.yes').click(function () {
				// call the callback
				if ($.isFunction(callback)) {
					callback();
				}
				// close the dialog
				$.modal.close();
			});
		}
	});
}*/
 
var init = function() {	
	YAHOO.util.Dom.get('waitDiv').style.display = '';
	YAHOO.domark.wait = new YAHOO.widget.Dialog("waitDiv", { width : "250px", height : "70px", 
															  fixedcenter : true, 
															  visible : false,  
															  constraintoviewport : false,
															  draggable : false,
															  modal : true,
															  zIndex : 999999,
															  close : false
															 } );
	YAHOO.domark.wait.render();
	YAHOO.domark.wait.hide();
	
};
YAHOO.util.Event.addListener(window, "load", init);


var genFailure = function(o){
	if(o.responseText !== undefined){
		alert("Error interacting with server.\n\nHTTP status: " + o.status + "\nStatus code message: " + o.statusText);
	} else
		alert("Error interacting with server.");
}
function errHandler(iname, context) {	 
	  //alert(iname);
	$('#'+ iname).qtip({
		content: context,
		position: {
			corner: {
				 target: 'topRight',
				 tooltip: 'bottomLeft'
			}
		},
	 show: {
				  effect: 'slide',
				  when: false, // Don't specify a show event
				  ready: true // Show the tooltip when ready
			   },
		style: {
			border: {
			width: 1,
			radius: 2
			},
			padding: 3, 
			textAlign: 'center',
			tip: true, // Give it a speech bubble tip with automatic corner detection
			name: 'cream' // Style it according to the preset 'cream' style
		}

		
	});
	  
//	  $('#'+ iname).each(function()
//		  {
//			 // If counter reaches maximum, reset
//			// if(i === corners.length) i = 0;
//			 
//			 // Destroy currrent tooltip if present
//			 if($(this).data("qtip")) $(this).qtip("destroy");         
//			 $(this).html('topRight') // Set the links HTML to the current opposite corner
//				.qtip({
//				   content: context, // Set the tooltip content to the current corner
//				   
//				   position: {
//					  corner: {
//						 tooltip: 'bottomLeft', // Use the corner...
//						 target: 'topRight' // ...and opposite corner
//					  }
//				   },
//				   show: {
//					  effect: 'slide',
//					  when: false, // Don't specify a show event
//					  ready: true // Show the tooltip when ready
//				   },
//				   hide: {
//						when: 'mouseout', fixed: true 
//					}, // Don't specify a hide event
//				   style: {
//					  border: {
//						 width: 1,
//						 radius: 2
//					  },
//					  padding: 3, 
//					  textAlign: 'center',
//					  tip: true, // Give it a speech bubble tip with automatic corner detection
//					  name: 'cream' // Style it according to the preset 'cream' style
//				   }
//				});
//			 
//			// i++; // Increase the counter
//		  });
  }
var actSuccess = function(o){
	if(o.responseText !== undefined){
		var root = o.responseXML.documentElement;
		YAHOO.domark.wait.hide();
		if (root.nodeName == 'error') {	
			var err = new Array();
			for (i = 0; i < root.childNodes.length; i++) {
				if (root.childNodes[i].nodeName != '#text' && root.childNodes[i].hasChildNodes) {	
					str = root.childNodes[i].firstChild.nodeValue;
					err.push(str.replace(/\\'/g,"'"));
					if(tipMsg) 
					  errHandler.call('content', root.childNodes[i].nodeName, root.childNodes[i].firstChild.nodeValue);
				}	
			}
			alert("Some required details are missing from the information you provided:\n\n"+err.join("\n"));
		} else {
			if(successFunc == "local") processResult(o);
				else { 
					alert(value(root, 'msg'));				
					document.location.href = redirectPage;
				}
		}
	}
}

function showBox() {
	if(showPop!='')
		eval('showPop').show();
}
var successFunc = "global";
var dispMsg = "off";
var tipMsg = false;
var showPop = false;
var redirectPage;
function submitForm(form, actPage, redirect, manual, upload, disp, tooltip, showYUI) {	
	YAHOO.domark.wait.show();
	YAHOO.util.Connect.setForm(form, upload);
	if(!actPage) return;
	redirectPage = redirect;
	if(manual) successFunc = "local";
	if(disp) dispMsg = "on";	
	if(tooltip) tipMsg = true;
	if(showYUI) showPop = showYUI;
	
	if(tipMsg) {
		$(document).ready(function(){
			$("input").each(function() {
				 $(this).click(function() {
					  $("#error_"+$(this).attr("id")).animate({height:'hide', opacity:'hide'}, "slow");
				});
			});
		});
	}
	var request = YAHOO.util.Connect.asyncRequest('POST', actPage + "&nohtml="+Math.random(), actHandle);
}
var actHandle =
{ 
	upload:actSuccess,
	success:actSuccess,
	failure:genFailure
};


function value(root, node) {
 	return (root.getElementsByTagName(node) && root.getElementsByTagName(node)[0].hasChildNodes && root.getElementsByTagName(node)[0].firstChild && root.getElementsByTagName(node)[0].firstChild.nodeValue)?root.getElementsByTagName(node)[0].firstChild.nodeValue:'';
}