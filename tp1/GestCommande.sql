/* Creation de la base de donnees GestCommande	*/

create table c_client
(ncli char(8) not null,
 nom  char(18) not null,
 adresse char(24) not null,
 localite char(20) not null,
 cat char(2),
 compte decimal(8,2) not null,
 primary key (ncli)
);

create table c_produit
(npro char(10) not null,
 libelle char(30) not null,
 prix decimal(5) not null,
 qstock decimal(6) not null,
 primary key (npro)
);

create table c_commande
(ncom char(8) not null,
 ncli char(8) not null,
 datecom date not null,
 primary key (ncom)
);

create table c_detail
(ncom char(8) not null,
 npro char(10) not null,
 qcom decimal(8) not null,
 primary key (ncom,npro)
);

/* insertion des donnees dans c_client  */

insert into c_client values ('b112','HANSENNE' ,'23 A. DUMONT' ,'POITIERS' ,'C1',1250.00);
INSERT INTO c_client VALUES ('C123','MERCIER' ,'25 RUE LEMAITRE' ,'NAMUR' ,'C1',-2300);
INSERT INTO c_client VALUES ('B332','MONTI' ,'112 RUE NEUVE' ,'GENEVE' ,'B2',0);
INSERT INTO c_client VALUES ('F010','TOUSSAINT' ,'5 RUE GODEFROID' ,'POITIERS' ,'C1',0);
INSERT INTO c_client VALUES ('K111','VANBIST' ,'180 RUE FLORIMONT' ,'LILLE' ,'B1',720);
INSERT INTO c_client VALUES ('S127','VANDERKA' ,'3 AV. DES ROSES' ,'NAMUR' ,'C1',-4580);
INSERT INTO c_client VALUES ('B512','GILLET' ,'14 RUE DE L''ETE' ,'TOULOUSE' ,'B1',-8700);
INSERT INTO c_client VALUES ('B062','GOFFIN' ,'72 RUE DE LA GARE' ,'NAMUR' ,'B2',-3200);
INSERT INTO c_client VALUES ('C400','FERARD' ,'65 RUE. DU TERTRE' ,'POITIERS' ,'B2',350);
INSERT INTO c_client VALUES ('C003','AVRON' ,'8 CHEMIN DE LA CURE' ,'TOULOUSE' ,'B1',-1700);
INSERT INTO c_client VALUES ('K729','NEUMAN' ,'40 RUE BRANSART' ,'TOULOUSE' ,NULL,0);
INSERT INTO c_client VALUES ('F011','PONCELET' ,'17 CLOS DES ERABLES','TOULOUSE' ,'B2',0);
INSERT INTO c_client VALUES ('L422','FRANCK' ,'60 RUE DE WEPION' ,'NAMUR' ,'C1',0);
INSERT INTO c_client VALUES ('S712','GUILLAUME' ,'14A CHEMIN DES ROSES' ,'PARIS' ,'B1',0);
INSERT INTO c_client VALUES ('D063','MERCIER' ,'201 BD DU NORD' ,'TOULOUSE' ,NULL,-2250);
INSERT INTO c_client VALUES ('F400','JACOB' ,'78 CHEMIN DU MOULIN' ,'BRUXELLES','C2',0);

/* Insertion des donnees dans c_produit  */

INSERT INTO c_produit VALUES ('CS262','CHEV. SAPIN 200x6x2',  75,  45);
INSERT INTO c_produit VALUES ('CS264','CHEV. SAPIN 200x6x4', 120,2690);
INSERT INTO c_produit VALUES ('CS464','CHEV. SAPIN 400x6x4', 220, 450);
INSERT INTO c_produit VALUES ('PA45' ,'POINTE ACIER 45',105, 580);
INSERT INTO c_produit VALUES ('PA60' ,'POINTE ACIER 60', 95, 134);
INSERT INTO c_produit VALUES ('PH222','PL. HETRE 200x20x2',  230, 782);
INSERT INTO c_produit VALUES ('PS222','PL. SAPIN 200x20x2',  185,1220);

/* Insertion des donnees dans c_commande */

INSERT INTO c_commande VALUES ('30178','K111','2003-12-21');
INSERT INTO c_commande VALUES ('30179','C400','2003-12-22');
INSERT INTO c_commande VALUES ('30182','S127','2003-12-23');
INSERT INTO c_commande VALUES ('30184','C400','2003-12-23');
INSERT INTO c_commande VALUES ('30185','F011','2004-01-02');
INSERT INTO c_commande VALUES ('30186','C400','2004-01-02');
INSERT INTO c_commande VALUES ('30188','B512','2004-01-03');

/* Insertion des donnees dans c_detail  */

INSERT INTO c_detail VALUES ('30178','CS464',25);
INSERT INTO c_detail VALUES ('30179','PA60',20);
INSERT INTO c_detail VALUES ('30179','CS262',60);
INSERT INTO c_detail VALUES ('30182','PA60',30);
INSERT INTO c_detail VALUES ('30184','CS464',120);
INSERT INTO c_detail VALUES ('30184','PA45',20);
INSERT INTO c_detail VALUES ('30185','PA60',15);
INSERT INTO c_detail VALUES ('30185','PS222',600);
INSERT INTO c_detail VALUES ('30185','CS464',260);
INSERT INTO c_detail VALUES ('30186','CS464',3);
INSERT INTO c_detail VALUES ('30188','PA60',70);
INSERT INTO c_detail VALUES ('30188','PH222',92);
INSERT INTO c_detail VALUES ('30188','CS464',180);
INSERT INTO c_detail VALUES ('30188','PA45',22);

