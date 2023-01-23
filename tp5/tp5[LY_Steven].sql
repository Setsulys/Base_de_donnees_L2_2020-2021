---TP 5 Sous requetes---

-- Exercice 1 - Sous-requetes simples--

--1--La liste des identifiants et noms de magasins qui ne vendent pas de bureaux.--
--(8 réponses)--

SELECT DISTINCT nom, idmag 
FROM magasin
WHERE  idmag NOT IN
(
SELECT idmag 
FROM magasin NATURAL JOIN stocke NATURAL JOIN produit
WHERE libelle LIKE 'bureau%'
);


--2--La liste des magasins dont tous les produits sont à moins de 100 euros.--
--(6 réponses)--
SELECT DISTINCT nom,idmag
FROM magasin
WHERE idmag NOT IN
(
SELECT idmag
FROM magasin NATURAL JOIN stocke NATURAL JOIN produit
WHERE stocke.prixunit>=100
);
--3--La liste des produits qu’aucun client n’a acheté--
--(9 réponses)--

SELECT DISTINCT idpro,libelle
FROM produit
WHERE produit.idpro NOT IN
(
SELECT produit.idpro
FROM produit NATURAL JOIN contient NATURAL JOIN facture
);

--4--Le montant moyen des factures de la base de données--
SELECT sum(contient.prixunit*quantite)/count(contient.prixunit) AS moyenne_fact 
FROM contient NATURAL JOIN facture

--5-- La liste des noms et prénoms de clients qui ont acheté un produit au moins 20 euros plus cher que son prix de vente moyen, avec les libellés des produits en question.--
--(11réponses)--
SELECT nom,prenom,libelle,prixunit 
FROM (client NATURAL JOIN facture NATURAL JOIN contient NATURAL JOIN produit) AS prix40
WHERE prixUnit-20>
(
SELECT avg(prixunit)
FROM stocke GROUP BY idpro HAVING prix40.idpro=idpro
);





--Exercice 2 - Sous-requetes intermediaires--


--1.-- La liste des identifiants et libellés de produits qui ont été vendus au moins 40% plus cher que leur prix moyen sur le marché.-- 
--(2 réponses)--

SELECT idpro,libelle 
FROM (produit NATRUAL JOIN contient )AS R1
WHERE prixunit>=ALL
(
SELECT  avg(prixunit)+(avg(prixunit)*40/100)
FROM stocke
WHERE r1.idpro=idpro
);

--2--La liste des produits (idpro, libelle) les moins chers de chaque type avec pourchacun son meilleur prix sur le marché et le(s) magasin(s) qui le vend(ent) à ce prix-là.-- 
--(32 réponses)--
SELECT DISTINCT libelle,idpro,nom,prixUnit
FROM (stocke NATURAL JOIN magasin NATURAL JOIN produit) as r1
WHERE prixUnit=(
SELECT min(prixUnit)
FROM stocke NATURAL JOIN produit
WHERE libelle=r1.libelle
);

--3-- pour chaque client la valeur totale des produits qu’il a commandé mais qui ne sont pas en stock--

SELECT nom, prenom, sum(contient.prixunit*contient.quantite) AS notinstock
FROM client, facture, contient
WHERE client.numcli = facture.numcli AND facture.idfac = contient.idfac AND contient.idpro NOT IN 
(
SELECT DISTINCT idpro 
FROM stocke
)
GROUP BY client.nom, client.prenom ORDER BY client.nom;


--4-- La liste des magasins qui vendent des produits de toutes les couleurs.--

SELECT idmag,nom
FROM magasin AS r1
WHERE NOT EXISTS
(
SELECT * 
FROM produit AS r2
WHERE couleur IS NOT NULL AND couleur NOT IN
(
SELECT DISTINCT couleur
FROM stocke NATURAL JOIN produit
WHERE couleur IS NOT NULL AND idmag=r1.idmag
)
);