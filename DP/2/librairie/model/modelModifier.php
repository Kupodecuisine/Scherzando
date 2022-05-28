<?php

    try {
        $query = $database->prepare(
                "UPDATE livre 
                SET $colonne = '$modif'
                WHERE titre_livre = '$titre' "); 

        $execution = $query->execute();
        
        if ($execution){
            echo "<script type='text/javascript'>alert('Le livre a bien été modifié.');</script>";
            echo "<script type='text/javascript'>window.location.replace('../controler/controlerStocks.php');</script>";
        }
    } catch (EXCEPTION $e) {

        die("Le livre n'a pas pu être modifié.");
    }

?>