// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self
//= require bootstrap
//= bootstrap-js  
//= bootstrap-css

//= bootstrap-alert 
//= bootstrap-affix 
//= bootstrap-dropdown 
//= bootstrap-modal 
//= bootstrap-popover 
//= bootstrap-scrollspy 
//= bootstrap-tab 
//= bootstrap-tooltip 
//= bootstrap-button 
//= bootstrap-carousel 
//= bootstrap-typeahead 
//= bootstrap-collapse 
//= bootstrap-transition 
//= bootstrap-less 

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
