

/*Exercice 1*/

/*6*/
/*P1*/ SELECT * FROM magasin;
/*P2*/ SELECT nom_mag FROM magasin;
/*P3*/ SELECT DISTINCT nom_mag FROM magasin;	
/*P4*/ SELECT ville FROM usine;
/*P5*/ SELECT couleur FROM produit;
/*P6*/ SELECT nom, couleur FROM produit;
/*P7*/ SELECT ref_prod,quantite FROM provenance WHERE ref_mag = 14;
/*P8*/ SELECT ref_usine,nom_usine,ville FROM usine WHERE ville ='Marseille';
/*P9*/ SELECT ref_mag FROM provenance WHERE ref_prod = 1;
/*P10*/ SELECT ref_prod, nom_prod FROM produit WHERE couleur ='rouge';
/*P11*/ SELECT ref_prod, nom_prod FROM produit WHERE nom_prod LIKE 'casse%';
/*P12*/ SELECT ref_mag, FROM provenance WHERE quantite >= 1;
		SELECT DISTINCT ref_mag FROM provenance WHERE quantite >=1;
/*P13*/	SELECT nom_prod FROM produit WHERE poids >= 15 AND poids <= 45;
/*P14*/ SELECT nom_prod FROM produit WHERE couleur= 'jaune' OR couleur ='bleu'AND poids < 20;
/*P15*/ SELECT nom_prod FROM produit WHERE (couleur = 'bleu' AND poids < 20) OR couleur ='jaune';
/*P16*/ SELECT nom_prod FROM produit WHERE nom_prod LIKE '%lampe%' OR poids > 30;


/*Exercice3*/

/*7*/ SELECT * FROM c_client NATURAL JOIN c_commande;

/*8*/ 
/*Q1*/ SELECT ncli FROM c_commande WHERE ncom = '30179';
/*Q2*/ SELECT nom, localite FROM c_client NATURAL JOIN c_commande WHERE ncom ='30179';
/*Q3*/ SELECT localite FROM c_client;
/*Q4*/ SELECT localite FROM c_client NATURAL JOIN c_commande;
/*Q5*/ SELECT DISTINCT ncom FROM c_client NATURAL JOIN c_commande NATURAL JOIN c_produit WHERE npro ='CS464';
/*Q6*/ SELECT ncom, nom, localite FROM c_client NATURAL JOIN c_commande NATURAL JOIN c_produit WHERE npro = 'CS464';
/*Q7*/ SELECT npro, libelle FROM c_produit NATURAL JOIN c_commande WHERE libelle = 'sapin';