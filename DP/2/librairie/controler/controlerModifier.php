<?php
	
	require '../vue/vueModifier.php';
	
	require '../connectDatabase.php';
	
    if(isset(
        $_POST['titre_livre'],
        $_POST['colonne'],
        $_POST['modification']
        )){
            $titre = $_POST['titre_livre'];
            $colonne = $_POST['colonne'];
            $modif = $_POST['modification'];
            
            require '../model/modelModifier.php';
	}

?>