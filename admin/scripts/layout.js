(function($){
	var initLayout = function() {
		var hash = window.location.hash.replace('#', '');
		var currentTab = $('ul.navigationTabs a')
							.bind('click', showTab)
							.filter('a[rel=' + hash + ']');
		if (currentTab.size() == 0) {
			currentTab = $('ul.navigationTabs a:first');
		}
		showTab.apply(currentTab.get(0));
		$('#colorpickerHolder').ColorPicker({flat: true});
		$('#colorpickerHolder2').ColorPicker({
			flat: true,
			color: '#00ff00',
			onSubmit: function(hsb, hex, rgb) {
				$('#colorSelector2 div').css('backgroundColor', '#' + hex);
			}
		});
		$('#colorpickerHolder2>div').css('position', 'absolute');
		var widt = false;
		$('#colorSelector2').bind('click', function() {
			$('#colorpickerHolder2').stop().animate({height: widt ? 0 : 173}, 500);
			widt = !widt;
		});
		$('#obg_picker').ColorPicker({
			onSubmit: function(hsb, hex, rgb) {
				$('#obg').val(hex);
				$('#PageWrap2').css('background-Color', '#'+ hex);
				$(colpkr).fadeOut(500);
				return false;
				
			},	
			onChange: function (hsb, hex, rgb) {
				$('#PageWrap2').css('backgroundColor', '#' + hex);
			},
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(document.getElementById('obg').value);
			},
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);
		});
		
		$('#ibg_picker').ColorPicker({
			onSubmit: function(hsb, hex, rgb) {
				$('#ibg').val(hex);
				$('div.FullBoxContentBlock').css('background-Color', '#'+ hex);

				
				
			},			
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(document.getElementById('ibg').value);
			},
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);
		});
		/*$('#colorSelector').ColorPicker({
			color: '#0000ff',
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelector div').css('backgroundColor', '#' + hex);
			}
		});*/
			
		$('#fontcolor_picker').ColorPicker({
			onSubmit: function(hsb, hex, rgb) {
				$('#fontcolor').val(hex);
				$("body").css("color",'#' + hex);
				
				
			},			
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(document.getElementById('fontcolor').value);
			},
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);
		});		
		
				
		$('#bgcolor_picker').ColorPicker({
			onSubmit: function(hsb, hex, rgb) {
				$('#bgcolor').val(hex);
				
			},			
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(document.getElementById('bgcolor').value);
			},
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);
		});	
		
		
		$('#bordercolor_picker').ColorPicker({
			onSubmit: function(hsb, hex, rgb) {
				$('#bordercolor').val(hex);
				$(colpkr).fadeOut(500);
				return false;
				
			},			
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(document.getElementById('bordercolor').value);
			},
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);
		});	
		
		
	};
	
	var showTab = function(e) {
		var tabIndex = $('ul.navigationTabs a')
							.removeClass('active')
							.index(this);
		$(this)
			.addClass('active')
			.blur();
		$('div.tab')
			.hide()
				.eq(tabIndex)
				.show();
	};
	
	EYE.register(initLayout, 'init');
})(jQuery)