<?php

/*
 * Création d'objet PDO de la connexion qui sera représentée par la variable $cnx.
 */
$user = 'sly10';
$pass = 'q7Luyuyu6c';
try {
    $cnx = new PDO('pgsql:host=sqletud.u-pem.fr;dbname=sly10_db', $user, $pass);
    echo "connexion reussie\n";
} catch (PDOException $e) {
    echo "ERREUR : Connexion échouée";
}
