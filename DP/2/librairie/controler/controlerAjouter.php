<?php

    // ajout de la vue
    require '../vue/vueAjouter.php';

    // connexion à la bdd
    require '../connectDatabase.php';

    // vérification des champs de formulaire
    if(isset(
        $_POST['titre_livre'],
        $_POST['auteur_livre'],
        $_POST['editeur_livre'],
        $_POST['nbr_pages_livre'],
        $_POST['prix_livre'],
        $_POST['stock_livre'],
        $_POST['etat_livre'],
        $_POST['genre_livre'],
        $_FILES['file']
        )){
            $titre = $_POST['titre_livre'];
            $auteur = $_POST['auteur_livre'];
            $editeur = $_POST['editeur_livre'];
            $nbrPages = $_POST['nbr_pages_livre'];
            $prix = $_POST['prix_livre'];

            // transformation champ stock
            if($_POST['stock_livre'] == "En stock"){
                $stock = 1;
            } else {
                $stock = 0;
            }

            // transformation champ etat
            if($_POST['etat_livre'] == "Excellent"){
                $etat = 1;
            } else if($_POST['etat_livre'] == "Bon"){
                $etat = 2;
            } else{
                $etat = 3;
            }

            // transformation champ genre
            if($_POST['genre_livre'] == "Science-fiction"){
                $genre = 1;
            } else if($_POST['genre_livre'] == "Fantastique"){
                $genre = 2;
            } else if($_POST['genre_livre'] == "Littérature Classique"){
                $genre = 3;
            } else if($_POST['genre_livre'] == "Historique"){
                $genre = 4;
            } else{
                $genre = 5;
            }

            // import image
            //stocke le chemin et le nom temporaire du fichier importé (ex /tmp/125423.pdf)
            $tmpName = $_FILES['file']['tmp_name'];
            //stocke le nom du fichier
            $name = $_FILES['file']['name'];
            //stocke la taille du fichier en octets
            $size = $_FILES['file']['size'];
            //stocke les erreurs
            $error = $_FILES['file']['error'];
            //déplacer le fichier importé dans le dossier image à la racine du projet
            $file = move_uploaded_file($tmpName, "../img/$name");

        require '../model/modelAjouter.php';
    }
    
?>