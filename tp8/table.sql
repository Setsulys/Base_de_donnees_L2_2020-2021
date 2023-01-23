CREATE TABLE authentification
(
    id    serial primary key,
    login varchar(32),
    mdp   varchar(100)
);

-- Création de quelques logins bidons.
INSERT INTO authentification VALUES ('pchochois', 'AZERTYUIOP');
INSERT INTO authentification VALUES ('sly', 'QSDFGHJKLM');
INSERT INTO authentification VALUES ('obouillot', 'WXCVBNHGFDSQ');
INSERT INTO authentification VALUES ('jroth', 'AXEGEMGERED');
INSERT INTO authentification VALUES ('cdenis', 'WXCVBNHGFDSQ');
INSERT INTO authentification VALUES ('jmsamson', 'WXCVEFAFAF');
INSERT INTO authentification VALUES ('ochampalle', 'WXCVGZERTB');
INSERT INTO authentification VALUES ('tfautrel', 'WAZRVONRVAAVA');