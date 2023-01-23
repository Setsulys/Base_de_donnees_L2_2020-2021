<?php

include "connexion.php";
$employe_query = 'INSERT INTO t_personne (nom, prenom, titre, date_n, service) VALUES (:nom, :prenom, :titre, :date_n, :service) RETURNING num;';
$loisir_query = 'INSERT INTO pratique (num, code_loisir) VALUES (:num, :code);';

if (isset($_POST['submit'])) {
    if (!empty($_POST['nom']) AND !empty($_POST['prenom']) AND !empty($_POST['titre']) AND !empty($_POST['date_n']) AND !empty($_POST['service'])) {
        $gender = ($_POST['titre'] > 1 ? "e" : "");

        $insert = $cnx->prepare($employe_query);
        $success = $insert->execute(array(
            ":nom" => strtoupper($_POST['nom']),
            ":prenom" => $_POST['prenom'],
            ":titre" => $_POST['titre'],
            ":date_n" => $_POST['date_n'],
            ":service" => $_POST['service']
        ));

        $num = $insert->fetch()['num'];

        foreach ($_POST['loisirs'] as $loisir) {
            $insert = $cnx->prepare($loisir_query);
            $insert->execute(array(
                ":num" => $num,
                ":code" => $loisir
            ));
        }

        if ($success) {
            printf("L'employé" . $gender . " %s %s a été ajouté" . $gender . " avec succès !",
                $_POST['prenom'], $_POST['nom']);
        } else {
            echo 'Erreur lors de l\'ajout de votre employé !';
        }
    } else {
        echo 'Erreur lors de l\'ajout de votre employé !';
    }
} else {
    echo 'Merci de passer par <code>form_BD.html</code>.';
}

$cnx = null;
