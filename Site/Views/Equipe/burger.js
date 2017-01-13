$(function(){
	
	var $allBoutons = $(".btn-menu");
	var $sousMenus = $(".nav-sub");
	
	$allBoutons.hover(function() {
		
		var o = $(this);

		var attr = o.attr("data-target");
		
		$allBoutons.toggleClass("toggled", false);
		$sousMenus.toggleClass("toggled", false);
		
		o.toggleClass( "toggled", true);

		$("[data-menu=" + attr + "]").toggleClass( "toggled", true);

	}, function(e) {

		e.preventDefault();
	});
	
	$sousMenus.mouseleave(function() {

		var target = $(this).attr("data-menu");

		$(this).toggleClass("toggled", false);

		$("[data-target=" + target + "]").toggleClass("toggled", false); 
	});
});