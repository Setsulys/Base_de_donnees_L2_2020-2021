<?php

include "connexion.php";
$total = 0;
$query = 'SELECT lib_service, count(*) FROM t_service s JOIN t_personne p ON s.code_service = p.service GROUP BY code_service'

?>

<!DOCTYPE>
<html lang="fr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Formulaire de saisie d'une personne</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>
<h1>Synthèse</h1>

<h3>Synthèse des employés</h3>
<table>
    <tr>
        <th>Service</th>
        <th>Nombre de salariés</th>
    </tr>
    <?php foreach ($cnx->query($query) as $line): ?>
        <?php $total += $line['count'] ?>
        <tr>
            <td><?= $line['lib_service'] ?></td>
            <td><?= $line['count'] ?></td>
        </tr>
    <?php endforeach ?>
    <tr>
        <td class="total">Total</td>
        <td class="total"><?= $total ?></td>
    </tr>
</table>

<h3>Liste des employés</h3>
<table>
    <tr>
        <th>N°</th>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Titre</th>
        <th>Date de naissance</th>
        <th>Service</th>
    </tr>
    <?php foreach ($cnx->query('SELECT * FROM t_personne') as $employe): ?>
        <tr>
            <td><?= $employe['num'] ?></td>
            <td><?= $employe['nom'] ?></td>
            <td><?= $employe['prenom'] ?></td>
            <td><?= $employe['titre'] ?></td>
            <td><?= $employe['date_n'] ?></td>
            <td><?= $employe['service'] ?></td>
        </tr>
    <?php endforeach ?>
</table>

<h1>Synthèse des loisirs</h1>

<?php foreach ($cnx->query('SELECT * FROM t_loisir;') as $loisir): ?>
    <h3><?= $loisir['lib_loisir'] ?></h3>
    <table>
        <tr>
            <th>N°</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Titre</th>
            <th>Date de naissance</th>
            <th>Service</th>
        </tr>
        <?php foreach ($cnx->query('SELECT * FROM t_personne NATURAL JOIN pratique WHERE code_loisir=\'' . $loisir['code_loisir'] . '\';') as $employe): ?>
        <tr>
            <td><?= $employe['num'] ?></td>
            <td><?= $employe['nom'] ?></td>
            <td><?= $employe['prenom'] ?></td>
            <td><?= $employe['titre'] ?></td>
            <td><?= $employe['date_n'] ?></td>
            <td><?= $employe['service'] ?></td>
        </tr>
        <?php endforeach ?>
    </table>
<?php endforeach ?>

</body>
</html>
