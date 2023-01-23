--
-- Structure de la table `t_personne`
--

CREATE TABLE t_personne (
  num serial,
  nom varchar(20) NOT NULL DEFAULT '',
  prenom varchar(20) DEFAULT NULL,
  titre char(1) DEFAULT NULL,
  date_n date DEFAULT NULL,
  service varchar(4) NOT NULL DEFAULT '',
  CONSTRAINT CK_titre CHECK(titre IN('1','2','3')),
  CONSTRAINT PK_Personne PRIMARY KEY (num)
);

--
-- Contenu de la table `t_personne`
--

INSERT INTO t_personne(nom,prenom,titre,date_n,service) VALUES
('AMARA', 'Lise', '3', '1985-12-31', 'pers'),
('FERRADO', 'Adèle', '3', '1978-02-08', 'comm'),
('TAILLIEZ', 'Anne-Laure', '2', '1938-01-27', 'pers'),
('BRIGNARD', 'Arnaud', '1', '1978-09-14', 'prod'),
('ESPOSITO', 'Arsene', '1', '1978-02-07', 'prod'),
('DETE', 'Audrey', '2', '1958-02-04', 'pers'),
('DESTRUEL', 'Aurélie', '3', '1977-07-03', 'comm'),
('FANTHOU', 'Baptiste', '1', '1959-03-22', 'prod'),
('CLERIOT', 'Camille', '3', '1959-01-21', 'comm'),
('MISEREY', 'Candice', '2', '1965-02-14', 'pers'),
('EBINI', 'Marc', '1', '1963-02-06', 'prod'),
('CHARLET', 'Cédric', '1', '1968-01-19', 'prod'),
('FONTAO', 'Clément', '1', '1954-02-09', 'prod'),
('DAGHER', 'David', '1', '1978-07-01', 'prod'),
('BRUNNER', 'Elise', '3', '1978-08-15', 'comm'),
('GUENOUN', 'Elodie', '2', '1914-02-12', 'pers'),
('ALDEBERT', 'Guillaume', '1', '1974-12-28', 'prod'),
('REGNIER', 'Hélène', '3', '1985-02-15', 'comm'),
('MAILLARD', 'Isabelle', '2', '1948-11-24', 'pers'),
('CLARET', 'Jean-Paul', '1', '1988-08-31', 'prod'),
('LE DUC', 'Jessica', '2', '1979-02-20', 'pers'),
('DECRUZ', 'Jinane', '2', '1958-02-02', 'pers'),
('GODIN', 'José', '1', '1978-02-10', 'prod'),
('CHAMARE', 'Josselin', '1', '1958-01-17', 'prod'),
('BERGER', 'Julien', '1', '1978-11-30', 'prod'),
('BERA', 'Lucas', '1', '1978-01-12', 'comm'),
('BORDAS', 'Marie', '3', '1978-01-13', 'comm'),
('BRUSCIANO', 'Marie', '3', '1978-07-16', 'comm'),
('GOVAERT', 'Marion', '3', '1978-01-23', 'comm'),
('L''HOTE', 'Mathieu', '1', '1970-11-25', 'pers'),
('BARBIER', 'Omar', '1', '1978-01-11', 'prod'),
('CHARBONNEAU', 'Pascale', '2', '1968-01-18', 'pers'),
('GUILLEAU', 'Pierre', '1', '1925-02-13', 'prod'),
('POULET', 'Raphaelle', '2', '1971-01-26', 'pers'),
('GRIMARD', 'Rémi', '1', '1945-02-11', 'prod'),
('AUTHIA', 'Stéphane', '1', '1978-01-29', 'prod'),
('DOUR', 'Sylvain', '1', '1998-02-05', 'prod'),
('YINE', 'Sylvain', '1', '1978-02-16', 'prod');

-- --------------------------------------------------------

--
-- Structure de la table t_service
--

CREATE TABLE t_service (
  code_service char(4),
  lib_service varchar(20) NOT NULL,
  CONSTRAINT PK_service PRIMARY KEY (code_service)
) ;

--
-- Contenu de la table t_service
--

INSERT INTO t_service VALUES
('comm', 'Commercial'),
('dvlp', 'Développement'),
('logi', 'Logistique'),
('pers', 'Personnel'),
('dire', 'Direction'),
('prod', 'Productique');


-- --------------------------------------------------------

--
-- Structure de la table t_loisir
--

CREATE TABLE t_loisir (
  code_loisir char(3),
  lib_loisir varchar(20) NOT NULL,
  CONSTRAINT PK_loisir PRIMARY KEY (code_loisir)
);

--
-- Contenu de la table t_loisir
--

INSERT INTO t_loisir VALUES
('ped', 'Pédalo'),
('mus', 'Musique'),
('jeu', 'Jeux de société'),
('des', 'Dessin'),
('pon', 'Poney'),
('ski', 'Ski alpin'),
('ten', 'Tennis');

-- --------------------------------------------------------


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