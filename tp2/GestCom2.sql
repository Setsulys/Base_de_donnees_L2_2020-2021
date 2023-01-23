--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.6.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: c_client; Type: TABLE; Schema: public; Owner: sly10
--

CREATE TABLE c_client (
    ncli character(8) NOT NULL,
    nom character(18) NOT NULL,
    adresse character(24) NOT NULL,
    localite character(20) NOT NULL,
    compte numeric(8,2) NOT NULL
);


ALTER TABLE c_client OWNER TO sly10;

--
-- Name: c_commande; Type: TABLE; Schema: public; Owner: sly10
--

CREATE TABLE c_commande (
    ncom character(8) NOT NULL,
    ncli character(8) NOT NULL,
    datecom date NOT NULL
);


ALTER TABLE c_commande OWNER TO sly10;

--
-- Name: c_detail; Type: TABLE; Schema: public; Owner: sly10
--

CREATE TABLE c_detail (
    ncom character(8) NOT NULL,
    npro character(10) NOT NULL,
    qcom numeric(8,0) NOT NULL
);


ALTER TABLE c_detail OWNER TO sly10;

--
-- Name: c_produit; Type: TABLE; Schema: public; Owner: sly10
--

CREATE TABLE c_produit (
    npro character(10) NOT NULL,
    libelle character(30) NOT NULL,
    prix numeric(5,0) NOT NULL,
    qstock numeric(6,0) NOT NULL
);


ALTER TABLE c_produit OWNER TO sly10;

--
-- Data for Name: c_client; Type: TABLE DATA; Schema: public; Owner: sly10
--

INSERT INTO c_client VALUES ('b112    ', 'HANSENNE          ', '23 A. DUMONT            ', 'POITIERS            ', 1250.00);
INSERT INTO c_client VALUES ('C123    ', 'MERCIER           ', '25 RUE LEMAITRE         ', 'NAMUR               ', -2300.00);
INSERT INTO c_client VALUES ('B332    ', 'MONTI             ', '112 RUE NEUVE           ', 'GENEVE              ', 0.00);
INSERT INTO c_client VALUES ('F010    ', 'TOUSSAINT         ', '5 RUE GODEFROID         ', 'POITIERS            ', 0.00);
INSERT INTO c_client VALUES ('K111    ', 'VANBIST           ', '180 RUE FLORIMONT       ', 'LILLE               ', 720.00);
INSERT INTO c_client VALUES ('S127    ', 'VANDERKA          ', '3 AV. DES ROSES         ', 'NAMUR               ', -4580.00);
INSERT INTO c_client VALUES ('B512    ', 'GILLET            ', '14 RUE DE L''ETE         ', 'TOULOUSE            ', -8700.00);
INSERT INTO c_client VALUES ('B062    ', 'GOFFIN            ', '72 RUE DE LA GARE       ', 'NAMUR               ', -3200.00);
INSERT INTO c_client VALUES ('C400    ', 'FERARD            ', '65 RUE. DU TERTRE       ', 'POITIERS            ', 350.00);
INSERT INTO c_client VALUES ('C003    ', 'AVRON             ', '8 CHEMIN DE LA CURE     ', 'TOULOUSE            ', -1700.00);
INSERT INTO c_client VALUES ('K729    ', 'NEUMAN            ', '40 RUE BRANSART         ', 'TOULOUSE            ', 0.00);
INSERT INTO c_client VALUES ('F011    ', 'PONCELET          ', '17 CLOS DES ERABLES     ', 'TOULOUSE            ', 0.00);
INSERT INTO c_client VALUES ('L422    ', 'FRANCK            ', '60 RUE DE WEPION        ', 'NAMUR               ', 0.00);
INSERT INTO c_client VALUES ('S712    ', 'GUILLAUME         ', '14A CHEMIN DES ROSES    ', 'PARIS               ', 0.00);
INSERT INTO c_client VALUES ('D063    ', 'MERCIER           ', '201 BD DU NORD          ', 'TOULOUSE            ', -2250.00);
INSERT INTO c_client VALUES ('F400    ', 'JACOB             ', '78 CHEMIN DU MOULIN     ', 'BRUXELLES           ', 0.00);
INSERT INTO c_client VALUES ('B4321   ', 'MUNSTER           ', '23 A.CAMENBERT          ', 'SANCY               ', 1250.00);


--
-- Data for Name: c_commande; Type: TABLE DATA; Schema: public; Owner: sly10
--

INSERT INTO c_commande VALUES ('30178   ', 'K111    ', '2003-12-21');
INSERT INTO c_commande VALUES ('30179   ', 'C400    ', '2003-12-22');
INSERT INTO c_commande VALUES ('30182   ', 'S127    ', '2003-12-23');
INSERT INTO c_commande VALUES ('30184   ', 'C400    ', '2003-12-23');
INSERT INTO c_commande VALUES ('30185   ', 'F011    ', '2004-01-02');
INSERT INTO c_commande VALUES ('30186   ', 'C400    ', '2004-01-02');
INSERT INTO c_commande VALUES ('30188   ', 'B512    ', '2004-01-03');


--
-- Data for Name: c_detail; Type: TABLE DATA; Schema: public; Owner: sly10
--

INSERT INTO c_detail VALUES ('30178   ', 'CS464     ', 25);
INSERT INTO c_detail VALUES ('30179   ', 'PA60      ', 20);
INSERT INTO c_detail VALUES ('30179   ', 'CS262     ', 60);
INSERT INTO c_detail VALUES ('30182   ', 'PA60      ', 30);
INSERT INTO c_detail VALUES ('30184   ', 'CS464     ', 120);
INSERT INTO c_detail VALUES ('30184   ', 'PA45      ', 20);
INSERT INTO c_detail VALUES ('30185   ', 'PA60      ', 15);
INSERT INTO c_detail VALUES ('30185   ', 'PS222     ', 600);
INSERT INTO c_detail VALUES ('30185   ', 'CS464     ', 260);
INSERT INTO c_detail VALUES ('30186   ', 'CS464     ', 3);
INSERT INTO c_detail VALUES ('30188   ', 'PA60      ', 70);
INSERT INTO c_detail VALUES ('30188   ', 'PH222     ', 92);
INSERT INTO c_detail VALUES ('30188   ', 'CS464     ', 180);
INSERT INTO c_detail VALUES ('30188   ', 'PA45      ', 22);


--
-- Data for Name: c_produit; Type: TABLE DATA; Schema: public; Owner: sly10
--

INSERT INTO c_produit VALUES ('CS262     ', 'CHEV. SAPIN 200x6x2           ', 75, 45);
INSERT INTO c_produit VALUES ('CS264     ', 'CHEV. SAPIN 200x6x4           ', 120, 2690);
INSERT INTO c_produit VALUES ('CS464     ', 'CHEV. SAPIN 400x6x4           ', 220, 450);
INSERT INTO c_produit VALUES ('PA45      ', 'POINTE ACIER 45               ', 105, 580);
INSERT INTO c_produit VALUES ('PA60      ', 'POINTE ACIER 60               ', 95, 134);
INSERT INTO c_produit VALUES ('PH222     ', 'PL. HETRE 200x20x2            ', 230, 782);
INSERT INTO c_produit VALUES ('PS222     ', 'PL. SAPIN 200x20x2            ', 185, 1220);
INSERT INTO c_produit VALUES ('PA75      ', 'POINTE ACIER 75               ', 80, 40);


--
-- Name: c_client c_client_pkey; Type: CONSTRAINT; Schema: public; Owner: sly10
--

ALTER TABLE c_client
    ADD CONSTRAINT c_client_pkey PRIMARY KEY (ncli);


--
-- Name: c_commande c_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: sly10
--

ALTER TABLE c_commande
    ADD CONSTRAINT c_commande_pkey PRIMARY KEY (ncom);


--
-- Name: c_detail c_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: sly10
--

ALTER TABLE c_detail
    ADD CONSTRAINT c_detail_pkey PRIMARY KEY (ncom, npro);


--
-- Name: c_produit c_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: sly10
--

ALTER TABLE c_produit
    ADD CONSTRAINT c_produit_pkey PRIMARY KEY (npro);


--
-- Name: c_commande c_commande_ncli_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sly10
--

ALTER TABLE c_commande
    ADD CONSTRAINT c_commande_ncli_fkey FOREIGN KEY (ncli) REFERENCES c_client(ncli);


--
-- Name: c_detail c_detail_npro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sly10
--

ALTER TABLE c_detail
    ADD CONSTRAINT c_detail_npro_fkey FOREIGN KEY (npro) REFERENCES c_produit(npro);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

