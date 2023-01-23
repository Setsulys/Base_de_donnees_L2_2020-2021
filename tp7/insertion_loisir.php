<?php

include "connexion.php";
$query = 'INSERT INTO t_loisir values (:code, :lib)';

if (isset($_POST['submit'])) {
    if (!empty($_POST['code_loisir']) AND !empty($_POST['lib_loisir'])) {
        $insert = $cnx->prepare($query);
        $success = $insert->execute(array(":code" => $_POST['code_loisir'], ":lib" => $_POST['lib_loisir']));
        if ($success)
            echo "Le loisir de code " . $_POST['code_loisir'] . " et de libellé " . $_POST['lib_loisir'] . " a bien été ajouté !";
        else
            printf("Erreur lors de l'ajout de votre loisir, ce loisir existe déjà !");
    } else {
        printf("Erreur lors de l'ajout de votre loisir !");
    }
} else {
    echo 'Merci de passer par <code>form_loisir.html</code>.';
}

$cnx = null;
