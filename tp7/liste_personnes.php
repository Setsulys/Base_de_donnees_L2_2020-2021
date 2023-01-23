<?php 

include "connexion.php";

$results = $cnx->query("SELECT * FROM t_personne  JOIN t_service on t_personne.service = t_service.code_service;");

foreach ($results as $line) {
    if($line['titre']==1) {
            printf("Mr ");
    else if($line['titre']==2) {
            printf("Mme ");
    else if($line['titre']==3) {
            printf"Mlle ");
            break;
    }
    printf("%s %s ", $line['prenom'], $line['nom']);
    if($line['titre']==2) {
        printf("est né : ");
    else
        printf("est née : ");
    printf("le %s et travaille dans le service %s.<br>", $line['date_n'], $line["lib_service"]);
}

$cnx = null;
