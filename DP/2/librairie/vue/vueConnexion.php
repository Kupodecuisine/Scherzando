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
            display: flex;
            flex-flow: row nowrap;
            background-color: white;
        }
        
        #container{
            width: 400px;
            margin:10% auto;
        }

        h1{
            font-size: 1.8em;
            text-align: center;
            margin: 0 auto;
            padding: 8%;
            color: #6165D7;
        }

        form {
            width: 100%;
            padding: 30px;
            border: 1px solid #f1f1f1;
            border-radius: 10px;
            background-color: #f9f9f9;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        input[type=text], input[type=password] {
            display: inline-block;
            width: 100%;
            margin: 8px 0;
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

        img{
            width: 50%;
        }

    </style>
</head>
<body>
    <div id="container">
        <form action="" method="POST">
            <h1>Connexion aux stocks</h1>
            <label for="login">Login</label>
            <input type="text" name="login" required>
            <br>
            <label for="mdp">Mot de passe</label>
            <input type="password" name="mdp" required>
            <br>
            <input type="submit" value="Connexion">
        </form>
    </div>
    <img src="../img/library.svg" alt="illustration librairie">
</body>
</html>