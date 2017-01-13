<?php 

if (empty($_GET)) {

	require_once('Controller/accueilController.php');
	$home = new AccueilController();
	$home->accueil();

}

?>