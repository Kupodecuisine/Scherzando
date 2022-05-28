<?php

    try {
        $query = $database->prepare("DELETE FROM livre WHERE titre_livre = :titre_livre"); 
        $execution = $query->execute(array(
            'titre_livre' => $titre
        ));
        if ($execution){
            echo "<script type='text/javascript'>alert('Le livre a bien été supprimé.');</script>";
            echo "<script type='text/javascript'>window.location.replace('../controler/controlerStocks.php');</script>";
        }
    } catch (EXCEPTION $e) {
        die("Le livre n'a pas pu être supprimé.");
    }

?>