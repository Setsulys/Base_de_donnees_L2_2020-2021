<?php
session_start()
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Formulaire de saisie de login et mot de passe</title>
    <style type="text/css">
        body {
            background-color: #ffd;
            font-family: Verdana, Helvetica, Arial, sans-serif;
        }
    </style>
</head>

<body>
<h1>Formulaire de saisie de login et mot de passe</h1>

<form action="auth.php" method="post">
    <table>
        <tr>
            <td><label for="pseudo">Pseudo</label></td>
            <td><input type="text" name="pseudo"/></td>
        </tr>
        <tr>
            <td><label for="mdp">Mot de passe</label></td>
            <td><input type="password" name="mdp"/></td>
        </tr>
    </table>
    <br/>
    <input type="reset" name="reset" value="Effacer"/>
    <input type="submit" name="submit" value="Valider"/>
</form>

</body>
</html>