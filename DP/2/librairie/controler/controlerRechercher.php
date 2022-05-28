<?php
	
	require '../vue/vueRechercher.php';
	
	require '../connectDatabase.php';
	
	if(isset(
	$_POST['search'])){
		$search = $_POST['search'];
        
        require '../model/modelRechercher.php';

        echo "<script type=“text/javascript”>
        window.onbeforeunload = function() {
        window.name = “reloader”;
        }</script>";
	}

?>