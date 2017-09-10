/*
	Filename: Xpander.js
	Version:  0.3.1
	Date:     10/02/06
	Author:   jmcclure @ activespotlight . com 
	Updates:
		10/09/06 - Added Support for both div and iframe content holders
		10/09/06 - Switched plugin to object notation (at least closer to)
*/

jQuery.Xpander = {

	build : function(o) {

	// Define Defaults 
        var s = {
		height: 	'auto',		// valid css height declaration
		width:  	'100%',		// valid css width declaration
		fx:		false,		// false, slow, fast, etc...
		style:  	false,		// class name
		overflow: 	'hidden',	// auto, scroll, hidden, visable
		show:		'Show',		// Link Content (Image, Text, etc)
		hide:		'Hide',		// Link Content (image, Text, etc)
		display: 	'none',		// block, none (initial state)
		element:	'div'		// Element Block Type (div/iframe)
        };
	// Update Defaults with Settings
        if(o) $.extend(s, o);

	// Loop Through Each Matched Item
  	return this.each(function(){

		// Make Sure Link is Valid (VERY basic skip of # and empty attrs)
		if($(this).attr('href').length < 2) return false;

		// Control value
		if(s.element != 'iframe') s.element = 'div';

		// Create Content Block
		var ptr = document.createElement(s.element);
		ptr.style.height = s.height;
		ptr.style.width = s.width;
		ptr.style.display = s.display
		$(this).after(ptr);

		// Update Link based on Starting State
		if(s.display=='none') 
			$(this).html(s.show) 
		else 
			$(this).html(s.hide);

		// Load Content into Payload	
		if(s.element == 'iframe')
			$(this).next(s.element).attr('src',$(this).attr('href'));
		else
			$(this).next(s.element).load($(this).attr('href'));

		// Assign Class
		if(s.style)
			$(this).next(s.element).addClass(s.style); 

		// Define Toggle Action
		$(this).click(function() {
			if($(this).next(s.element).css('display') == 'none')
			{
				if(s.fx)
					{ $(this).next(s.element).animate({ height: 'show', opacity:'show' }, s.fx); } 
				else 
					{ $(this).next(s.element).show().overflow(s.overflow); }
				$(this).html(s.hide);
			}
			else
			{	
				if(s.fx)
					{ $(this).next(s.element).animate({ height: 'hide', opacity:'hide' }, s.fx); } 
				else 
					{ $(this).next(s.element).hide().overflow('hidden'); }
                                $(this).html(s.show);
			}	
  			this.blur();
  			return false;
		});
  	});
	}
};

jQuery.fn.Xpander = jQuery.Xpander.build;
