<?php
// Teste si les données attendues du formulaire sont toutes présentes ou non
if (empty($_POST['prenom']) || empty($_POST['nom']) || empty($_POST['CB']) || empty($_POST['crypto'])) {
    $ok = 0;
} else if (!isset($_COOKIE) OR !isset($_COOKIE['donnees_cb'])) {
    $ok = 1;
    $prenom = $_POST['prenom'];
    $nom = $_POST['nom'];
    $cb = $_POST['CB'];
    $crypto = $_POST['crypto'];
    setcookie("donnees_cb", json_encode(array(
        "prenom" => $prenom,
        "nom" => $nom,
        "CB" => $cb,
        "crypto" => $crypto
    )), time() + 5 * 60 * 1000);
} else {
    $ok = 2;
    $cookie = json_decode($_COOKIE['donnees_cb'], true);
    $prenom = $cookie['prenom'];
    $nom = $cookie['nom'];
    $cb = $cookie['CB'];
    $crypto = $cookie['crypto'];
}
/* RAPPEL: Si vous souhaitez utiliser des cookies, ils doivent être définis avant le début du flux HTML ici le <!DOCTYPE */
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF8"/>
    <title>Formulaire d'affichage des informations bancaires</title>
    <style type="text/css">
        body {
            background-color: #ffd;
            font-family: Verdana, Helvetica, Arial, sans-serif;
        }
    </style>
</head>

<body>
<h1>
    Affichage de données pour débugger
</h1>
<h2>
    Les données dans $_POST:
</h2>

<?php
if (isset($_POST)) {
    foreach ($_POST as $cle => $valeur) {
        echo "$cle => $valeur<br/>\n";
    }
} else {
    echo "Aucune données stockées";
}
?>


<h2>
    Les données dans $_COOKIE:
</h2>

<?php
if (isset($_COOKIE)) {
    foreach ($_COOKIE as $cle => $valeur) {
        echo "$cle => $valeur<br/>\n";
    }
} else {
    echo "Aucune données stockées";
}
?>

<h2>
    Les données dans $_SESSION:
</h2>

<?php
if (isset($_SESSION)) {
    foreach ($_SESSION as $cle => $valeur) {
        echo "$cle => $valeur<br/>\n";
    }
} else {
    echo "Aucune données stockées";
}
?>


<h1>Informations bancaires :</h1>
<p>
    <?php
    if (!$ok)
        echo("Vos coordonnées bancaires nous sont inconnues, merci de remplir <a href=form_cb.html>ce formulaire</a>");
    elseif ($ok == 1) {
        echo($prenom . " " . $nom . ", on connaît votre numéro de carte: " . $cb . " et votre cryptogramme: " . $crypto);
    } else {
        echo($prenom . " " . $nom . ", on connaît votre numéro de carte: " . $cb . " et votre cryptogramme: " . $crypto
            . '<br />Nous avons retrouvé ces informations bancaires dans les cookies de votre ordinateur !!!');
    }
    ?>
</p>

</body>
</html>