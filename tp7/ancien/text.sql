




-----------------------------
---1-------------------------
--SELECT DISTINCT service FROM t_personne;

---2-------------------------
CREATE TABLE pratique(
num int ,
code_loisir  char(3),
PRIMARY KEY (num,code_loisir),
FOREIGN KEY (num) REFERENCES t_personne(num),
FOREIGN KEY	(code_loisir) REFERENCES t_loisir(code_loisir) 
);

INSERT INTO pratique VALUES
('5','pon'),
('5','ped'),
('15','des'),
('15','ski'),
('15','ten');