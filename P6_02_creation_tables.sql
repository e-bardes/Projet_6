--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-06-29 00:23:14

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: testdb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA testdb;


ALTER SCHEMA testdb OWNER TO postgres;

--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA testdb; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA testdb IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 405470)
-- Name: commentaire; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.commentaire (
    id bigint NOT NULL,
    contenu character varying(1000),
    commentaire_parent_id bigint,
    site_id bigint NOT NULL,
    utilisateur_id bigint NOT NULL
);


ALTER TABLE testdb.commentaire OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 405468)
-- Name: commentaire_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.commentaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.commentaire_id_seq OWNER TO postgres;

--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 202
-- Name: commentaire_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.commentaire_id_seq OWNED BY testdb.commentaire.id;


--
-- TOC entry 205 (class 1259 OID 405486)
-- Name: longueur; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.longueur (
    id bigint NOT NULL,
    cotation_bloc character varying(255),
    cotation_falaise character varying(255),
    voie_id bigint
);


ALTER TABLE testdb.longueur OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 405484)
-- Name: longueur_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.longueur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.longueur_id_seq OWNER TO postgres;

--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 204
-- Name: longueur_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.longueur_id_seq OWNED BY testdb.longueur.id;


--
-- TOC entry 207 (class 1259 OID 405497)
-- Name: secteur; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.secteur (
    id bigint NOT NULL,
    description character varying(1000),
    nom character varying(255),
    site_id bigint NOT NULL
);


ALTER TABLE testdb.secteur OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 405495)
-- Name: secteur_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.secteur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.secteur_id_seq OWNER TO postgres;

--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 206
-- Name: secteur_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.secteur_id_seq OWNED BY testdb.secteur.id;


--
-- TOC entry 209 (class 1259 OID 405508)
-- Name: site; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.site (
    id bigint NOT NULL,
    departement character varying(255),
    description character varying(1000),
    is_officiel_les_amis_de_lescalade boolean,
    nom character varying(255)
);


ALTER TABLE testdb.site OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 405506)
-- Name: site_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.site_id_seq OWNER TO postgres;

--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 208
-- Name: site_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.site_id_seq OWNED BY testdb.site.id;


--
-- TOC entry 211 (class 1259 OID 405519)
-- Name: topo; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.topo (
    id bigint NOT NULL,
    date_de_parution date,
    description character varying(1000),
    lieu integer,
    nom character varying(255),
    owner_id bigint,
    possessor_id bigint
);


ALTER TABLE testdb.topo OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 405528)
-- Name: topo_booking; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.topo_booking (
    topo_id bigint NOT NULL,
    utilisateur_id bigint NOT NULL
);


ALTER TABLE testdb.topo_booking OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 405517)
-- Name: topo_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.topo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.topo_id_seq OWNER TO postgres;

--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 210
-- Name: topo_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.topo_id_seq OWNED BY testdb.topo.id;


--
-- TOC entry 214 (class 1259 OID 405535)
-- Name: utilisateur; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.utilisateur (
    id bigint NOT NULL,
    adresse_mail character varying(255),
    adresse_postal character varying(255),
    is_membre_association boolean,
    nom character varying(255),
    password character varying(255),
    prenom character varying(255)
);


ALTER TABLE testdb.utilisateur OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 405533)
-- Name: utilisateur_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.utilisateur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.utilisateur_id_seq OWNER TO postgres;

--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 213
-- Name: utilisateur_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.utilisateur_id_seq OWNED BY testdb.utilisateur.id;


--
-- TOC entry 216 (class 1259 OID 405546)
-- Name: voie; Type: TABLE; Schema: testdb; Owner: postgres
--

CREATE TABLE testdb.voie (
    id bigint NOT NULL,
    cotation_bloc character varying(255),
    cotation_falaise character varying(255),
    is_equipe boolean,
    secteur_id bigint,
    site_id bigint
);


ALTER TABLE testdb.voie OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 405544)
-- Name: voie_id_seq; Type: SEQUENCE; Schema: testdb; Owner: postgres
--

CREATE SEQUENCE testdb.voie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE testdb.voie_id_seq OWNER TO postgres;

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 215
-- Name: voie_id_seq; Type: SEQUENCE OWNED BY; Schema: testdb; Owner: postgres
--

ALTER SEQUENCE testdb.voie_id_seq OWNED BY testdb.voie.id;


--
-- TOC entry 2734 (class 2604 OID 405473)
-- Name: commentaire id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.commentaire ALTER COLUMN id SET DEFAULT nextval('testdb.commentaire_id_seq'::regclass);


--
-- TOC entry 2735 (class 2604 OID 405489)
-- Name: longueur id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.longueur ALTER COLUMN id SET DEFAULT nextval('testdb.longueur_id_seq'::regclass);


--
-- TOC entry 2736 (class 2604 OID 405500)
-- Name: secteur id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.secteur ALTER COLUMN id SET DEFAULT nextval('testdb.secteur_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 405511)
-- Name: site id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.site ALTER COLUMN id SET DEFAULT nextval('testdb.site_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 405522)
-- Name: topo id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo ALTER COLUMN id SET DEFAULT nextval('testdb.topo_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 405538)
-- Name: utilisateur id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.utilisateur ALTER COLUMN id SET DEFAULT nextval('testdb.utilisateur_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 405549)
-- Name: voie id; Type: DEFAULT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.voie ALTER COLUMN id SET DEFAULT nextval('testdb.voie_id_seq'::regclass);


--
-- TOC entry 2742 (class 2606 OID 405478)
-- Name: commentaire commentaire_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.commentaire
    ADD CONSTRAINT commentaire_pkey PRIMARY KEY (id);


--
-- TOC entry 2744 (class 2606 OID 405494)
-- Name: longueur longueur_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.longueur
    ADD CONSTRAINT longueur_pkey PRIMARY KEY (id);


--
-- TOC entry 2746 (class 2606 OID 405505)
-- Name: secteur secteur_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.secteur
    ADD CONSTRAINT secteur_pkey PRIMARY KEY (id);


--
-- TOC entry 2750 (class 2606 OID 405516)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 2756 (class 2606 OID 405532)
-- Name: topo_booking topo_booking_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo_booking
    ADD CONSTRAINT topo_booking_pkey PRIMARY KEY (topo_id, utilisateur_id);


--
-- TOC entry 2754 (class 2606 OID 405527)
-- Name: topo topo_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo
    ADD CONSTRAINT topo_pkey PRIMARY KEY (id);


--
-- TOC entry 2752 (class 2606 OID 405558)
-- Name: site uk_4cjxqmfp4fj94y33wntm4skpm; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.site
    ADD CONSTRAINT uk_4cjxqmfp4fj94y33wntm4skpm UNIQUE (nom);


--
-- TOC entry 2748 (class 2606 OID 405556)
-- Name: secteur uk_iwc0lnugp5wk3rkdaenrp8308; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.secteur
    ADD CONSTRAINT uk_iwc0lnugp5wk3rkdaenrp8308 UNIQUE (nom);


--
-- TOC entry 2758 (class 2606 OID 405560)
-- Name: utilisateur uk_le6f41o0g8mqbuh9g4rc16lcq; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.utilisateur
    ADD CONSTRAINT uk_le6f41o0g8mqbuh9g4rc16lcq UNIQUE (adresse_mail);


--
-- TOC entry 2760 (class 2606 OID 405543)
-- Name: utilisateur utilisateur_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);


--
-- TOC entry 2762 (class 2606 OID 405554)
-- Name: voie voie_pkey; Type: CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.voie
    ADD CONSTRAINT voie_pkey PRIMARY KEY (id);


--
-- TOC entry 2770 (class 2606 OID 405606)
-- Name: topo_booking fk1i3pe8ofrmmouktcsljvrotcj; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo_booking
    ADD CONSTRAINT fk1i3pe8ofrmmouktcsljvrotcj FOREIGN KEY (utilisateur_id) REFERENCES testdb.utilisateur(id);


--
-- TOC entry 2772 (class 2606 OID 405616)
-- Name: voie fk2afi6cv4ket0c07qakhr83au3; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.voie
    ADD CONSTRAINT fk2afi6cv4ket0c07qakhr83au3 FOREIGN KEY (secteur_id) REFERENCES testdb.secteur(id);


--
-- TOC entry 2766 (class 2606 OID 405586)
-- Name: longueur fk409mbwrgc61347wkx3ivvycor; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.longueur
    ADD CONSTRAINT fk409mbwrgc61347wkx3ivvycor FOREIGN KEY (voie_id) REFERENCES testdb.voie(id);


--
-- TOC entry 2765 (class 2606 OID 405571)
-- Name: commentaire fk8r7igg1des12pwstrt9bnbxkg; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.commentaire
    ADD CONSTRAINT fk8r7igg1des12pwstrt9bnbxkg FOREIGN KEY (utilisateur_id) REFERENCES testdb.utilisateur(id);


--
-- TOC entry 2768 (class 2606 OID 405596)
-- Name: topo fke23akh9c7pn1le1tt8qm5vjv8; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo
    ADD CONSTRAINT fke23akh9c7pn1le1tt8qm5vjv8 FOREIGN KEY (owner_id) REFERENCES testdb.utilisateur(id);


--
-- TOC entry 2769 (class 2606 OID 405601)
-- Name: topo fkern7vw3ub5j9o2w2eahk1hac5; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo
    ADD CONSTRAINT fkern7vw3ub5j9o2w2eahk1hac5 FOREIGN KEY (possessor_id) REFERENCES testdb.utilisateur(id);


--
-- TOC entry 2763 (class 2606 OID 405561)
-- Name: commentaire fkhk5hcf8jbbel5qjdjf0j0r4m2; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.commentaire
    ADD CONSTRAINT fkhk5hcf8jbbel5qjdjf0j0r4m2 FOREIGN KEY (commentaire_parent_id) REFERENCES testdb.commentaire(id);


--
-- TOC entry 2773 (class 2606 OID 405621)
-- Name: voie fklwun524prg29o5t41csaie855; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.voie
    ADD CONSTRAINT fklwun524prg29o5t41csaie855 FOREIGN KEY (site_id) REFERENCES testdb.site(id);


--
-- TOC entry 2767 (class 2606 OID 405591)
-- Name: secteur fkpncxakl8xx09952pqfas97p4v; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.secteur
    ADD CONSTRAINT fkpncxakl8xx09952pqfas97p4v FOREIGN KEY (site_id) REFERENCES testdb.site(id);


--
-- TOC entry 2764 (class 2606 OID 405566)
-- Name: commentaire fkso6tryipqmuoh0gecjoeig0u2; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.commentaire
    ADD CONSTRAINT fkso6tryipqmuoh0gecjoeig0u2 FOREIGN KEY (site_id) REFERENCES testdb.site(id);


--
-- TOC entry 2771 (class 2606 OID 405611)
-- Name: topo_booking fkt7blaro6buu30m0poqx973q8t; Type: FK CONSTRAINT; Schema: testdb; Owner: postgres
--

ALTER TABLE ONLY testdb.topo_booking
    ADD CONSTRAINT fkt7blaro6buu30m0poqx973q8t FOREIGN KEY (topo_id) REFERENCES testdb.topo(id);


-- Completed on 2020-06-29 00:23:14

--
-- PostgreSQL database dump complete
--

