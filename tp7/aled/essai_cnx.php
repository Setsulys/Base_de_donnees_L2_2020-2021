<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
/* Si le script connexion.inc.php ne se trouve pas dans le même répertoire que
 * ce script, utilisez la commande suivante pour changer de répertoire courant
 * */
//chdir("chemin");

include("connexion.inc.php");
?>


<h2>Si la connexion n'a pas échouée, on va maintenant pouvoir faire des choses...</h2>


</body>
</html>
