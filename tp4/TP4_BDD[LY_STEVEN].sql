---TP4 BASES DE DONNEES--- LY Steven


---EXERCICE 1 : Echauffement -Jointures---
/*1*/ 	SELECT nom,prenom 
		FROM client NATURAL JOIN facture 
		WHERE idmag =17;

/*2*/ 	SELECT DISTINCT idmag,nom,ville 
		FROM magasin NATURAL JOIN stocke NATURAL JOIN produit 
		WHERE libelle='souris';

/*3*/ 	SELECT nom,ville,prixunit 
		FROM magasin NATURAL JOIN stocke NATURAL JOIN produit 
		WHERE libelle='souris' AND couleur='vert' ORDER BY prixunit LIMIT 1;

/*4*/ 	SELECT produit.idpro,produit.libelle,contient.prixunit,client.nom 
		FROM produit NATURAL JOIN contient NATURAL JOIN facture NATURAL JOIN client 
		WHERE  contient.prixunit > 120;---?---

/*5*/ 	SELECT DISTINCT produit.idpro,produit.libelle,stocke.prixunit 
		FROM produit NATURAL JOIN stocke 
		WHERE prixunit < 5 ORDER BY prixunit;

/*6*/ 	SELECT libelle 
		FROM produit 
		WHERE couleur ='bleu'
	  	INTERSECT
	  	SELECT libelle 
	  	FROM produit 
	  	WHERE couleur ='jaune';

/*7*/ 	SELECT DISTINCT numcli,nom,prenom 
		FROM client NATURAL JOIN facture NATURAL JOIN contient NATURAL JOIN produit 
		WHERE libelle ='bureau';

/*8*/ 	SELECT DISTINCT numcli,nom,prenom 
		FROM client NATURAL JOIN facture NATURAL JOIN contient NATURAL JOIN produit
	  	EXCEPT
	 	SELECT DISTINCT numcli,nom,prenom 
	  	FROM client NATURAL JOIN facture NATURAL JOIN contient NATURAL JOIN produit 
	  	WHERE libelle ='bureau';	

---Exercice 2:  Agrégats ---

/*1*/ 	SELECT count(*) 
		FROM facture;

/*2*/ 	SELECT nom,count(ville) AS villes 
		FROM magasin GROUP BY nom;

/*3*/ 	SELECT numcli,nom,count(idfac) AS factures 
		FROM client NATURAL JOIN facture GROUP BY numcli;

/*4*/ 	SELECT avg(prixunit) AS prix_moyen ,min(prixunit) AS prix_minimum ,max(prixunit)AS prix_maximum 
		FROM produit NATURAL JOIN stocke NATURAL JOIN magasin 
		WHERE produit.libelle='bureau' ville='Paris';

/*5*/ 	SELECT libelle,min(prixunit) 
		FROM produit NATURAL JOIN stocke NATURAL JOIN magasin GROUP BY libelle;

/*6*/ 	SELECT DISTINCT client.nom, facture.idfac, montant 
		FROM 
		( 	
		SELECT idfac, sum(prixunit * quantite) AS montant 
		FROM client NATURAL JOIN facture NATURAL JOIN contient GROUP BY idfac
		) AS lstfact NATURAL JOIN client NATURAL JOIN facture 
		WHERE lstfact.idfac = facture.idfac ORDER BY montant DESC ;

/*7*/ 	SELECT idmag,nom count(DISTINCT libelle)AS nb_produit 
		FROM magasin NATURAL JOIN stocke NATURAL JOIN produit GROUP BY idmag HAVING count(DISTINCT libelle)>=20;

/*8*/ 	SELECT numcli,nom,prenom,sum(prixunit*quantite) 
		FROM client NATURAL JOIN facture NATURAL JOIN contient GROUP BY numcli HAVING sum(prixunit*quantite)>=3000 AND client.ville='paris'