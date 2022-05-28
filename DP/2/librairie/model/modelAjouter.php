<?php

try {
    $query = $database->prepare("INSERT INTO livre SET 
        titre_livre = :titre_livre,
        auteur_livre = :auteur_livre,
        editeur_livre = :editeur_livre,
        nbr_pages_livre = :nbr_pages_livre,
        prix_livre = :prix_livre,
        stock_livre = :stock_livre,
        id_etat = :etat_livre,
        id_genre = :genre_livre,
        img_livre = :img_livre"
    ); 
    
    $execution = $query->execute(array(
        'titre_livre' => $titre, 
        'auteur_livre' => $auteur, 
        'editeur_livre' => $editeur,
        'nbr_pages_livre' => $nbrPages,
        'prix_livre' => $prix,
        'stock_livre' => $stock,
        'etat_livre' => $etat,
        'genre_livre' => $genre,
        'img_livre' => "../img/$name"
    ));
    if ($execution){
        echo "<script type='text/javascript'>alert('Le livre a bien été ajouté.');</script>";
        echo "<script type='text/javascript'>window.location.replace('../controler/controlerStocks.php');</script>";
    }
} catch (EXCEPTION $e) {
    die("Le livre n'a pas pu être ajouté.");
}

?>