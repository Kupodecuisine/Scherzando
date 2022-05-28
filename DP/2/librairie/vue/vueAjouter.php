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
            width: 40%;
            margin:5% auto;
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
            display: grid;
            grid-template-columns: repeat(2, 6fr);
            width: 100%;
            padding: 30px;
            border: 1px solid #f1f1f1;
            border-radius: 10px;
            background-color: #f9f9f9;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        h5{
            grid-column: 1 / span 2;
            padding: 2%;
            color: #6165D7;
        }

        fieldset{
            display: flex;
        }

        label{
            align-self: center;
            margin: 5px;
            padding: 12px;
            color: grey;
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

        fieldset:nth-child(10){
            grid-column: 1 / span 2;
        }

        input[type=submit] {
            grid-column: 1 / span 2;
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
        <form action="" method="POST" enctype="multipart/form-data">
            <h5>Ajouter un ouvrage</h5>
            <fieldset>
                <input type="text" name="titre_livre" placeholder="Titre" required>
            </fieldset>
            <fieldset>
                <input type="text" name="auteur_livre" placeholder="Auteur" required>
            </fieldset>
            <fieldset>
                <input type="text" name="editeur_livre" placeholder="Éditeur" required>
            </fieldset>
            <fieldset>
                <input type="number" name="nbr_pages_livre" placeholder="Nombre de pages" required>
            </fieldset>
            <fieldset>
                <input type="number" step="any" name="prix_livre" placeholder="Prix" required>
            </fieldset>
            <fieldset>
                <select name="stock_livre" id="stock_livre" required>
                    <option value="" disabled selected hidden>Stock</option>
                    <option value="En stock">En stock</option>
                    <option value="Indisponible">Indisponible</option>
                </select> 
            </fieldset>
            <fieldset>
                <select name="etat_livre" id="etat_livre" required>
                    <option value="" disabled selected hidden>État</option>
                    <option value="Excellent">Excellent</option>
                    <option value="Bon">Bon</option>
                    <option value="Mauvais">Mauvais</option>
                </select>
            </fieldset>
            <fieldset>
                <select name="genre_livre" id="genre_livre" required>
                    <option value="" disabled selected hidden>Genre</option>
                    <option value="Science-fiction">Science-fiction</option>
                    <option value="Fantastique">Fantastique</option>
                    <option value="Littérature Classique">Littérature Classique</option>
                    <option value="Historique">Historique</option>
                    <option value="Cuisine">Cuisine</option>
                </select>   
            </fieldset>
            <fieldset>
                <label for="file">Image</label>
                <input type="file" name="file" accept=".jpg, .png"> 
            </fieldset>
            <input type="submit" value="Ajouter">
        </form>
    </div>
</body>
</html>