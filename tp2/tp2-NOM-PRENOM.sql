/**
 *	Compte rendu de Steven LY groupe de TP 4
 **/

/** Exercice 1 **/

-- Commentaires/Réponses sur les questions de l'exo 1

/** Exercice 2 **/


/*1*/ INSERT INTO c_produit VALUES ('PA75','POINTE ACIER 75',80,40);

/*2*/INSERT INTO c_produit VALUES ('PA60','pointe carbonne',110,3);
/*il se produit une erreur car la valeur 'PA60' est dupliqué alors que npro est une clef primaire*/

/*3*/INSERT INTO c_produit VALUES ('PA75','POINTE ACIER 75',80,40);
/*Meme chose que pour la question precedente */

/*4*/ INSERT INTO c_client (ncli,nom,adresse,localite,compte) VALUES ('B4321','MUNSTER','23 A.CAMENBERT','SANCY',1250);

/*5*/ALTER TABLE c_commande
	ADD CONSTRAINT c_commande_ncli_fkey FOREIGN KEY (ncli) REFERENCES c_client(ncli);

/*6*/ INSERT INTO c_commande VALUES ('30190','J007','2003-12-23');
/*On ne peut pas inserer le tuple car le tuple viole une contrainte de clef etrangère*/

/*7*/ INSERT INTO c_detail VALUES ('30188','PA90',22);

/*8*/ALTER TABLE c_detail
	ADD CONSTRAINT c_detail_npro_fkey FOREIGN KEY (npro) REFERENCES c_produit(npro);
/*On viole la contrainte de clé étrangère de npro dans la table c_detail car une clé n'est pas présente dans la table c_produit*/

/*9*/DELETE FROM c_detail WHERE npro ='PA90';

/*10*//ALTER TABLE c_detail
	ADD CONSTRAINT c_detail_npro_fkey FOREIGN KEY (npro) REFERENCES c_produit(npro);

/*11*/ALTER TABLE c_client
			DROP COLUMN cat;

/**  Exercice 3 **/
/*1*/

/*
course(_code_,_nom_,dotation)
cheval(_numid_,nom,sexe,date_naissance)
jockey(_id_,nom,prenom)
participe(_numid_,_code_,_nom_,_id_)
parent(_numid_,_numidparent_)

FK : participe(numid) reference cheval(numid)
FK : participe(code) reference course(code)
FK : participe(nom) reference course(nom)
FK : participe(id) reference jockey(id)
FK : parent(numid) reference cheval(numid)
FK : parent(numidparent) reference cheval(numid)*/

/*2*/
/*3*/
CREATE TABLE cheval(
	numid int PRIMARY KEY,
	nom varchar(25),
	sexe varchar(1),
	date_naissance date DEFAULT NULL,
	ON DELETE CASCADE ON UPDATE CASCADE;
	);
CREATE TABLE jockey(
	id int PRIMARY KEY,
	nom varchar(25),
	prenom varchar(25),
	);
CREATE TABLE course(
	codecourse char(5) PRIMARY KEY,
	nom varchar(25) PRIMARY KEY,
	dotation int DEFAULT NULL,
	ON DELETE CASCADE ON UPDATE CASCADE;
	);
CREATE TABLE participe(
	codeCourse CHAR(6),
  	numJockey INTEGER,
 	numCheval INTEGER,
 	numDossard INTEGER,
 	CONSTRAINT participe_pkey PRIMARY KEY (numJockey, numCheval, codeCourse),
  	FOREIGN KEY (numCheval) REFERENCES cheval(numid),
  	FOREIGN KEY (numJockey) REFERENCES jockey(id),
 	FOREIGN KEY (codecourse) REFERENCES course(codeCourse),
  	ON DELETE CASCADE ON UPDATE CASCADE;
);
	);

CREATE TABLE parent(
	numCheval int,
  	parent int,
  	CONSTRAINT parent_pkey PRIMARY KEY (numCheval,parent),
  	FOREIGN KEY (numCheval) REFERENCES cheval(numCheval),
  	FOREIGN KEY (parent) REFERENCES cheval(numCheval),
  	ON DELETE CASCADE ON UPDATE CASCADE;
	);

ALTER TABLE participe ADD FOREIGN KEY (codeCourse) REFERENCES course (codeCourse) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE participe ADD FOREIGN KEY (numCheval) REFERENCES cheval (numid) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE participe ADD FOREIGN KEY (numJockey) REFERENCES jockey (id) ON DELETE CASCADE ON UPDATE CASCADE;

/*4*/
INSERT INTO course VALUES ('GPAT01', 'Grand Prix de l''Arc de Triomphe', 5000000);

INSERT INTO jockey VALUES (1,'Poinceleta', 'Roger');

INSERT INTO cheval VALUES (1,'Ribot', 'M', '12-09-1952');
INSERT INTO cheval VALUES (2, 'Prince Royal', 'M');
INSERT INTO parent VALUES (2,1);

INSERT INTO participe VALUES ('GPAT01',1,2,1);

INSERT INTO jockey VALUES (2, 'Camaci', 'Enrico');

INSERT INTO cheval VALUES (3,'Molvedo', 'M', '01-01-1958');
INSERT INTO parent VALUES (3,1);

INSERT INTO participe VALUES ('GPAT01',2,3,2);
INSERT INTO participe VALUES ('GPAT01',2,1,3);