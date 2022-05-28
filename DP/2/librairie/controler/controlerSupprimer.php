<?php
	
	require '../vue/vueSupprimer.php';
	
	require '../connectDatabase.php';
	
	if(isset(
	$_POST['titre_livre'])){
		$titre = $_POST['titre_livre'];

        require '../model/modelSupprimer.php';
	}

?>