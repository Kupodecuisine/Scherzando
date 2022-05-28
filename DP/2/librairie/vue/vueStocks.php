<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stocks librairie</title>
    <link rel="icon" href="../img/logo.svg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>

        body{
            display: grid;
            grid-template-columns: repeat(4, 3fr);
        }

        nav{
            top: 0;
            left: 0;
            width: 80%;
            height: 100%;
            background-color: #f9f9f9;
            grid-column: 1;
            grid-row: 1 / 50;
        }

        ul{
            position: fixed;
            margin-top: 2vh;
            margin-left: 2.5vw;
            list-style: none;
            text-decoration: none;
        }

        input{
            width: 100%;
            margin: 8px 0;
            padding: 14px;
            border: 1px solid #6165D7;
            border-radius: 10px;
            background-color: white;
            cursor: pointer;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
        }

        input:hover{
            background-color: #6165D7; 
            color: white;
        }

        div{
            width: 100%;
            margin: 2vw;
        }

        div img{
            width: 50%;
            margin: 2vw;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.7);
        }

        section{
            padding: 2vw;
        }

        p{
            margin: 0;
        }

    </style>
</head>
<body>
    <nav>
        <ul>
		
		
		
		
		<!-- ENLEVER LES A -->
		
		
		
		
		
            <li><img src="../img/logo.svg" id="logo" alt="logo"></li>
            <li><a href="../controler/controlerRechercher.php"><input type="submit" value="Rechercher"></a></li>
            <li><a href="../controler/controlerAjouter.php"><input type="submit" value="Ajouter"></a></li>
            <li><a href="../controler/controlerModifier.php"><input type="submit" value="Modifier"></a></li>
            <li><a href="../controler/controlerSupprimer.php"><input type="submit" value="Supprimer"></a></li>
            <li><a href="../controler/controlerConnexion.php"><input type="submit" value="Se déconnecter"></a></li>
        </ul>
    </nav>
</body>
</html>