--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2020-03-17 13:43:32

-- MUCHACHOS!!
-- ESTA ES UNA BDD DE PRUEBA-PUEDEN SACAR PARTES DE ESTE SCRIPT
-- PARA COMENZAR A CREAR LA BDD DEL GEDI
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
-- TOC entry 197 (class 1259 OID 16396)
-- Name: calificacionChoferes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."calificacionChoferes" (
    id integer NOT NULL,
    calificacion integer,
    comentario character(20),
    "idServicio" integer,
    "idChofer" integer
);


ALTER TABLE public."calificacionChoferes" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: calificacionChoferes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."calificacionChoferes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."calificacionChoferes_id_seq" OWNER TO postgres;

--
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 196
-- Name: calificacionChoferes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."calificacionChoferes_id_seq" OWNED BY public."calificacionChoferes".id;


--
-- TOC entry 199 (class 1259 OID 16404)
-- Name: calificacionClientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."calificacionClientes" (
    id integer NOT NULL,
    calificacion integer,
    "idServicio" integer,
    comentario character(20),
    "idCliente" integer
);


ALTER TABLE public."calificacionClientes" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16402)
-- Name: calificacionClientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."calificacionClientes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."calificacionClientes_id_seq" OWNER TO postgres;

--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 198
-- Name: calificacionClientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."calificacionClientes_id_seq" OWNED BY public."calificacionClientes".id;


--
-- TOC entry 201 (class 1259 OID 16412)
-- Name: choferes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.choferes (
    id integer NOT NULL,
    nombre character(10),
    apellido character(15),
    cedula character(12),
    placa character(8)
);


ALTER TABLE public.choferes OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16410)
-- Name: choferes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.choferes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.choferes_id_seq OWNER TO postgres;

--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 200
-- Name: choferes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.choferes_id_seq OWNED BY public.choferes.id;


--
-- TOC entry 209 (class 1259 OID 16442)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre character(20),
    apellido character(25),
    correo character(30),
    celular character(15),
    cuidad character(20),
    contrasenia character(25)
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16440)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO postgres;

--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 208
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 203 (class 1259 OID 16420)
-- Name: destinos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.destinos (
    id integer NOT NULL,
    latitud numeric(10,8),
    longitud numeric(10,8),
    nombre character(50)
);


ALTER TABLE public.destinos OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16418)
-- Name: destinos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.destinos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.destinos_id_seq OWNER TO postgres;

--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 202
-- Name: destinos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.destinos_id_seq OWNED BY public.destinos.id;


--
-- TOC entry 205 (class 1259 OID 16428)
-- Name: servicios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicios (
    id integer NOT NULL,
    "idChofer" integer,
    "idCliente" integer,
    "idUbicacion" integer,
    "idDestino" integer,
    fecha date
);


ALTER TABLE public.servicios OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16426)
-- Name: servicios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicios_id_seq OWNER TO postgres;

--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 204
-- Name: servicios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servicios_id_seq OWNED BY public.servicios.id;


--
-- TOC entry 207 (class 1259 OID 16434)
-- Name: ubicaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ubicaciones (
    id integer NOT NULL,
    latitud numeric(10,8),
    longitud numeric(10,8),
    nombre character(50)
);


ALTER TABLE public.ubicaciones OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16432)
-- Name: ubicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ubicaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ubicaciones_id_seq OWNER TO postgres;

--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 206
-- Name: ubicaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ubicaciones_id_seq OWNED BY public.ubicaciones.id;


--
-- TOC entry 2721 (class 2604 OID 16399)
-- Name: calificacionChoferes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."calificacionChoferes" ALTER COLUMN id SET DEFAULT nextval('public."calificacionChoferes_id_seq"'::regclass);


--
-- TOC entry 2722 (class 2604 OID 16407)
-- Name: calificacionClientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."calificacionClientes" ALTER COLUMN id SET DEFAULT nextval('public."calificacionClientes_id_seq"'::regclass);


--
-- TOC entry 2723 (class 2604 OID 16415)
-- Name: choferes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.choferes ALTER COLUMN id SET DEFAULT nextval('public.choferes_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 16445)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 16423)
-- Name: destinos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.destinos ALTER COLUMN id SET DEFAULT nextval('public.destinos_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 16431)
-- Name: servicios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios ALTER COLUMN id SET DEFAULT nextval('public.servicios_id_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 16437)
-- Name: ubicaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicaciones ALTER COLUMN id SET DEFAULT nextval('public.ubicaciones_id_seq'::regclass);


--
-- TOC entry 2863 (class 0 OID 16396)
-- Dependencies: 197
-- Data for Name: calificacionChoferes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."calificacionChoferes" (id, calificacion, comentario, "idServicio", "idChofer") FROM stdin;
\.


--
-- TOC entry 2865 (class 0 OID 16404)
-- Dependencies: 199
-- Data for Name: calificacionClientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."calificacionClientes" (id, calificacion, "idServicio", comentario, "idCliente") FROM stdin;
\.


--
-- TOC entry 2867 (class 0 OID 16412)
-- Dependencies: 201
-- Data for Name: choferes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.choferes (id, nombre, apellido, cedula, placa) FROM stdin;
\.


--
-- TOC entry 2875 (class 0 OID 16442)
-- Dependencies: 209
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, nombre, apellido, correo, celular, cuidad, contrasenia) FROM stdin;
1	Kevin               	Cevallos                 	\N	\N	\N	\N
2	Juan                	Perez                    	knc.gaibor@yavirac.edu.ec     	978857892      	Quito               	galapagos                
\.


--
-- TOC entry 2869 (class 0 OID 16420)
-- Dependencies: 203
-- Data for Name: destinos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.destinos (id, latitud, longitud, nombre) FROM stdin;
\.


--
-- TOC entry 2871 (class 0 OID 16428)
-- Dependencies: 205
-- Data for Name: servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicios (id, "idChofer", "idCliente", "idUbicacion", "idDestino", fecha) FROM stdin;
\.


--
-- TOC entry 2873 (class 0 OID 16434)
-- Dependencies: 207
-- Data for Name: ubicaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ubicaciones (id, latitud, longitud, nombre) FROM stdin;
\.


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 196
-- Name: calificacionChoferes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."calificacionChoferes_id_seq"', 1, false);


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 198
-- Name: calificacionClientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."calificacionClientes_id_seq"', 1, false);


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 200
-- Name: choferes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.choferes_id_seq', 1, false);


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 208
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 2, true);


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 202
-- Name: destinos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.destinos_id_seq', 1, false);


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 204
-- Name: servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servicios_id_seq', 1, false);


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 206
-- Name: ubicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ubicaciones_id_seq', 1, false);


--
-- TOC entry 2729 (class 2606 OID 16401)
-- Name: calificacionChoferes calificacionChofer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."calificacionChoferes"
    ADD CONSTRAINT "calificacionChofer_pkey" PRIMARY KEY (id);


--
-- TOC entry 2731 (class 2606 OID 16409)
-- Name: calificacionClientes calificacionCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."calificacionClientes"
    ADD CONSTRAINT "calificacionCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2733 (class 2606 OID 16417)
-- Name: choferes chofer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.choferes
    ADD CONSTRAINT chofer_pkey PRIMARY KEY (id);


--
-- TOC entry 2735 (class 2606 OID 16425)
-- Name: destinos destino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.destinos
    ADD CONSTRAINT destino_pkey PRIMARY KEY (id);


--
-- TOC entry 2737 (class 2606 OID 16439)
-- Name: ubicaciones ubicacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id);


--
-- TOC entry 2739 (class 2606 OID 16447)
-- Name: clientes usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2740 (class 2606 OID 16448)
-- Name: calificacionClientes fk_cliente_calificacioncliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."calificacionClientes"
    ADD CONSTRAINT fk_cliente_calificacioncliente FOREIGN KEY ("idCliente") REFERENCES public.clientes(id);


-- Completed on 2020-03-17 13:43:33

--
-- PostgreSQL database dump complete
--

