

--Par une requête simple, listez les différents services contenant au moins un employé.--
--De même listez les différents loisirs recensés dans la base de données.--

SELECT DISTINCT service FROM t_personne;
---Productique--
---Commercial--
---Personnel--

SELECT * FROM t_loisir;
--Pédalo--
--Musique--
--Jeux de société--
--Dessin--
--Poney--
--Ski alpin--
--Tennis--

--creation de table
CREATE TABLE pratique(
  num serial,
  code_loisir char(3),
  CONSTRAINT PK_pratique PRIMARY KEY (num,code_loisir),
  CONSTRAINT FK_pratique_num FOREIGN KEY (num) REFERENCES t_personne(num),
  CONSTRAINT FK_pratique_code_loisir FOREIGN KEY (code_loisir) REFERENCES t_loisir(code_loisir)
  );

--
-- contenu de la table pratique
--

INSERT INTO pratique VALUES
(5,'ped'),
(5,'pon'),
(15,'des'),
(15,'ten'),
(15,'ski');