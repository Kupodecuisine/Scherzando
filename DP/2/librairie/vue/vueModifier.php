<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stocks librairie</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        
        div{
            width: 30%;
            margin:10% auto;
        }

        button{
            margin: 8px 0;
            padding: 10px;
            border: 1px solid #6165D7;
            border-radius: 10px;
            background-color: white;
        }

        button:hover{
            background-color: #6165D7; 
        }

        button a{
            text-decoration: none;
            color: #6165D7;
        }

        button:hover a{
            color: white;
        }

        form {
            width: 100%;
            padding: 30px;
            border: 1px solid #f1f1f1;
            border-radius: 10px;
            background-color: #f9f9f9;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        h5{
            padding: 2%;
            color: #6165D7;
        }

        input, select{
            width: 100%;
            margin: 5px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        select:required:invalid {
            color: gray;
        }

        option[value=""][disabled] {
            display: none;
        }
        
        option {
            color: black;
        }

        input[type=submit] {
            width: 100%;
            margin: 8px 0;
            padding: 14px;
            border: 1px solid #6165D7;
            border-radius: 10px;
            background-color: #6165D7;
            color: white;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: white;
            color: #6165D7;
        }

    </style>
</head>
<body>
    <div>
        <button><a href="../controler/controlerStocks.php">Retour</a></button>
        <form action="" method="POST">
            <h5>Modifier un ouvrage</h5>
            <fieldset>
                <input type="text" name="titre_livre" placeholder="Titre de l'ouvrage" required>
            </fieldset>
            <fieldset>
                <select name="colonne" id="colonne" required>
                        <option value="" disabled selected hidden>Champ à modifier</option>
                        <option value="titre_livre">Titre</option>
                        <option value="auteur_livre">Auteur</option>
                        <option value="editeur_livre">Éditeur</option>
                        <option value="nbr_pages_livre">Nombre de pages</option>
                        <option value="prix_livre">Prix</option>
                        <option value="stock_livre">Stock</option>
                        <option value="etat_livre">État</option>
                        <option value="genre_livre">Genre</option>
                </select> 
            </fieldset>
            <fieldset>
                <input type="text" name="modification" placeholder="Modification" required>
            </fieldset>
            <input type="submit" value="Modifier">
        </form>
    </div>
</body>
</html>