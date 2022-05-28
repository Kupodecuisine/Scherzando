<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stocks librairie</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        body{
            display: grid;
            grid-template-columns: repeat(3, 4fr);
        }
        
        div:nth-child(1){
            width: 40%;
            margin:10% auto;
            grid-column: 1 / span 3;
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

        label{
            font-size: 1.2em;
            color: #6165D7;
        }

        input[type=search]{
            width: 100%;
            margin: 20px 0 20px 0;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
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
        
        div{
            width: 100%;
            margin: 2vw;
            padding-left: 5vw;
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
	<div>
        <button><a href="../controler/controlerStocks.php">Retour</a></button>
		<form action="" method="post">
            <label for="search">Rechercher un ouvrage</label>
            <input type="search" name="search" placeholder="Titre, auteur, éditeur, genre...">
            <input type="submit" value="Rechercher">
		</form>
	</div>
</body>
</html>