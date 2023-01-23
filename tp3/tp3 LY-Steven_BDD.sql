--Exercice 1-- LY Steven

/*P1*/ SELECT  nom_usine FROM usine WHERE ville ='Bordeaux';
/*P2*/ SELECT DISTINCT nom_prod FROM produit WHERE nom_prod LIKE '%e';
/*P3*/ SELECT ref_prod FROM produit WHERE couleur ='rouge' AND nom_prod ='bottes';

/*Q1*/ SELECT nom_prod,couleur FROM produit NATURAL JOIN provenance WHERE ref_usine=302;
/*Q2*/ SELECT * FROM produit WHERE couleur <> 'NULL';
/*Q3*/ SELECT couleur FROM produit WHERE ref_prod = 22;
/*Q4*/ SELECT * FROM produit WHERE couleur <> 'bleu';
--Oui c'est normal car tout les produit ayant pour couleur NULL ne sont pas répertorié dans cette requette--
/*Q5*/ SELECT * FROM produit WHERE couleur<>'NULL' AND poids<> 0;
/*Q5*/ SELECT * FROM produit WHERE couleur IS NOT NULL AND poids IS NOT NULL; /*Alternative*/
/*Q6*/ SELECT * FROM produit WHERE couleur IS NULL OR poids IS NULL;
/*Q7*/ SELECT * FROM produit WHERE (couleur IS NULL AND poids IS NOT NULL) OR (couleur IS NOT NULL AND  poids IS NULL);
/*Q8*/ SELECT nom_usine,nom_mag FROM usine NATURAL JOIN magasin WHERE magasin.ville = usine.ville;
/*Q9*/ SELECT DISTINCT nom_prod FROM produit NATURAL JOIN provenance NATURAL JOIN usine WHERE ville = 'Nantes' AND couleur='rouge';
/*Q10*/ SELECT DISTINCT nom_prod,nom_mag FROM produit NATURAL JOIN provenance NATURAL JOIN magasin;
/*Q11*/ SELECT nom_prod,nom_mag	FROM produit NATURAL JOIN provenance NATURAL JOIN magasin WHERE couleur='bleu'
		UNION
		SELECT nom_prod,nom_mag	FROM produit NATURAL JOIN provenance NATURAL JOIN magasin WHERE couleur='rouge';
/*Q12*/SELECT DISTINCT (provenance1.ref_mag, provenance2.ref_mag)FROM provenance AS provenance1, provenance AS provenance2 WHERE provenance1.ref_mag <> provenance2.ref_mag AND provenance1.ref_prod = provenance2.ref_prod AND provenance1.ref_usine = provenance2.ref_usine;
/*Q13*/SELECT DISTINCT (provenance1.ref_mag, provenance2.ref_mag) FROM provenance AS provenance1, provenance AS provenance2 WHERE provenance1.ref_mag <> provenance2.ref_mag AND provenance1.ref_prod = provenance2.ref_prod AND provenance1.ref_usine = provenance2.ref_usine AND provenance1.ref_mag < provenance2.ref_mag;
/*Q14*/ SELECT nom_prod	FROM produit NATURAL JOIN provenance NATURAL JOIN usine WHERE nom_prod LIKE '%lampe%' AND nom_usine='peugeot'
		INTERSECT
		SELECT nom_prod	FROM produit NATURAL JOIN provenance NATURAL JOIN magasin WHERE ville='Bordeaux';
/*Q15*/ SELECT DISTINCT ref_prod,couleur FROM produit NATURAL JOIN provenance NATURAL JOIN usine NATURAL JOIN magasin WHERE magasin.ville=usine.ville;
--Requetes plus techniques--
/*Q16*/
/*Q17*/
/*Q18*/