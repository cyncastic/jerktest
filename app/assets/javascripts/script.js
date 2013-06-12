$(document).ready(function() {

	/* Apply fancybox to multiple items */
	$("a.fancy").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',
		
		prevEffect	: 'elastic',
		nextEffect	: 'elastic',

    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });
	/* end */
		
	$(".fancy").hover(
		function(){ $(this).stop().animate({boxShadow: '0 0 30px #000'});},
		function(){ $(this).stop().animate({boxShadow: '0 0 0px #000'}); }
	);

});















