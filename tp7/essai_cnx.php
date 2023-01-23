<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Test de connexion</title>
    <style type="text/css">
      body {
        background-color:#ffd;
        font-family:Verdana,Helvetica,Arial,sans-serif;
      }
    </style>
  </head>

  <body>
    <h1>Test de connexion</h1>

    <p> Mise en place de la connexion. </p>
    <?php
      //chdir("chemin");

      include("connexion.php");
    ?>


    <h2>Si la connexion n'a pas échouée, on va maintenant pouvoir faire des choses...</h2>


  </body>
</html>
