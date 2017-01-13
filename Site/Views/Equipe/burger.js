$(function(){
	// Plus facile de se reservir de tous les boutons par la suite (non, le $ n'est pas une réf au php, mais juste que cela aide à "repérer" les éléments jQuery)
	var $allBoutons = $(".btn-menu");
	var $sousMenus = $(".nav-sub");
	
	// La fonction .hover() a 2 paramètres, un comportement à l'entrée et un comportement à la sortie.
	// Si y a pas de comportement à la sortie, c'est la première fonction qui est exécutée 2x
	$allBoutons.hover(function() {
		// Le "this", c'est l'élément qui a déclenché l'événement
		var o = $(this);

		// On récupère le data-target de l'élément car c'est la cible qu'on veut slider
		var attr = o.attr("data-target");
		
		// On enlève le toggled de tous les boutons et de tous les menus
		$allBoutons.toggleClass("toggled", false);
		$sousMenus.toggleClass("toggled", false);
		// Et on le met sur celui où on est situé
		o.toggleClass( "toggled", true);
		// il y a une 2ème méthode qui existe plus "propre" mais qui implique + de ticks, mais les .each selon mon CDP c'est bof
		// $allBoutons.each(function() {
		// 		$(this).toggleClass("toggled", ($(this).attr("data-target") == attr));	
		// });
						
		// On slide le bon élément
		$("[data-menu=" + attr + "]").toggleClass( "toggled", true);

	}, function(e) {
		// Le preventDefault empêche le comportement par défaut ouéoué
		e.preventDefault();
	});
	
	// Quand on quitte le (ou les) sous-menus :
	$sousMenus.mouseleave(function() {
		// On récupère le nom de là où on est
		var target = $(this).attr("data-menu");
		// On cache le sous-menu
		$(this).toggleClass("toggled", false);
		// Et on enlève le toggled du bouton du menu de gauche
		$("[data-target=" + target + "]").toggleClass("toggled", false); 
	});
});