--
-- PostgreSQL database dump
--

-- Started on 2013-07-31 22:00:48 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 140 (class 1259 OID 25566)
-- Dependencies: 6
-- Name: contenidos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenidos (
    id_contenidos integer NOT NULL,
    id_lecciones integer NOT NULL,
    id_ejemplos integer NOT NULL,
    id_ejercicios integer NOT NULL,
    id_fuente_referencias integer NOT NULL,
    id_multimedia integer NOT NULL,
    descrip_contenidos text NOT NULL
);


ALTER TABLE public.contenidos OWNER TO postgres;

--
-- TOC entry 1885 (class 0 OID 0)
-- Dependencies: 140
-- Name: COLUMN contenidos.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 1886 (class 0 OID 0)
-- Dependencies: 140
-- Name: COLUMN contenidos.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 1887 (class 0 OID 0)
-- Dependencies: 140
-- Name: COLUMN contenidos.id_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_ejemplos IS 'ID de los ejemplos';


--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 140
-- Name: COLUMN contenidos.id_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_ejercicios IS 'ID de los ejercicios';


--
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 140
-- Name: COLUMN contenidos.id_fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_fuente_referencias IS 'If fuente bibliografica';


--
-- TOC entry 1890 (class 0 OID 0)
-- Dependencies: 140
-- Name: COLUMN contenidos.id_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_multimedia IS 'id del archivo multimedia';


--
-- TOC entry 141 (class 1259 OID 25572)
-- Dependencies: 140 6
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenidos_id_contenidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.contenidos_id_contenidos_seq OWNER TO postgres;

--
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 141
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenidos_id_contenidos_seq OWNED BY contenidos.id_contenidos;


--
-- TOC entry 1892 (class 0 OID 0)
-- Dependencies: 141
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenidos_id_contenidos_seq', 4, true);


--
-- TOC entry 142 (class 1259 OID 25574)
-- Dependencies: 6
-- Name: ejemplos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejemplos (
    id_ejemplos integer NOT NULL,
    nb_ejemplos character(100) NOT NULL,
    cont_ejercicios text NOT NULL
);


ALTER TABLE public.ejemplos OWNER TO postgres;

--
-- TOC entry 1893 (class 0 OID 0)
-- Dependencies: 142
-- Name: COLUMN ejemplos.id_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_ejemplos IS 'ID de los ejemplos';


--
-- TOC entry 1894 (class 0 OID 0)
-- Dependencies: 142
-- Name: COLUMN ejemplos.nb_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.nb_ejemplos IS 'Nombre de los ejemplos';


--
-- TOC entry 1895 (class 0 OID 0)
-- Dependencies: 142
-- Name: COLUMN ejemplos.cont_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 143 (class 1259 OID 25580)
-- Dependencies: 6
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_cont_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_cont_ejercicios_seq OWNER TO postgres;

--
-- TOC entry 1896 (class 0 OID 0)
-- Dependencies: 143
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_cont_ejercicios_seq', 1, false);


--
-- TOC entry 144 (class 1259 OID 25582)
-- Dependencies: 6 142
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_id_ejemplos_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_id_ejemplos_seq OWNER TO postgres;

--
-- TOC entry 1897 (class 0 OID 0)
-- Dependencies: 144
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejemplos_id_ejemplos_seq OWNED BY ejemplos.id_ejemplos;


--
-- TOC entry 1898 (class 0 OID 0)
-- Dependencies: 144
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, true);


--
-- TOC entry 145 (class 1259 OID 25584)
-- Dependencies: 6
-- Name: ejercicios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejercicios (
    id_ejercicios integer NOT NULL,
    nb_ejercicios character(100) NOT NULL,
    des_ejercicios text,
    cont_ejercicios text NOT NULL
);


ALTER TABLE public.ejercicios OWNER TO postgres;

--
-- TOC entry 1899 (class 0 OID 0)
-- Dependencies: 145
-- Name: COLUMN ejercicios.id_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_ejercicios IS 'ID de los ejercicios';


--
-- TOC entry 1900 (class 0 OID 0)
-- Dependencies: 145
-- Name: COLUMN ejercicios.nb_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.nb_ejercicios IS 'Nombre de los ejercicios';


--
-- TOC entry 1901 (class 0 OID 0)
-- Dependencies: 145
-- Name: COLUMN ejercicios.des_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.des_ejercicios IS 'Descripción de los ejercicios';


--
-- TOC entry 1902 (class 0 OID 0)
-- Dependencies: 145
-- Name: COLUMN ejercicios.cont_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 146 (class 1259 OID 25590)
-- Dependencies: 6 145
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejercicios_id_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.ejercicios_id_ejercicios_seq OWNER TO postgres;

--
-- TOC entry 1903 (class 0 OID 0)
-- Dependencies: 146
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejercicios_id_ejercicios_seq OWNED BY ejercicios.id_ejercicios;


--
-- TOC entry 1904 (class 0 OID 0)
-- Dependencies: 146
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_ejercicios_seq', 1, true);


--
-- TOC entry 147 (class 1259 OID 25592)
-- Dependencies: 6
-- Name: fuentes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fuentes (
    id_fuente_referencias integer NOT NULL,
    fuente_referencias text NOT NULL
);


ALTER TABLE public.fuentes OWNER TO postgres;

--
-- TOC entry 1905 (class 0 OID 0)
-- Dependencies: 147
-- Name: COLUMN fuentes.id_fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.id_fuente_referencias IS 'If fuente bibliografica';


--
-- TOC entry 1906 (class 0 OID 0)
-- Dependencies: 147
-- Name: COLUMN fuentes.fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.fuente_referencias IS 'Fuente  referencias';


--
-- TOC entry 148 (class 1259 OID 25598)
-- Dependencies: 6 147
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fuentes_id_fuente_referencias_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.fuentes_id_fuente_referencias_seq OWNER TO postgres;

--
-- TOC entry 1907 (class 0 OID 0)
-- Dependencies: 148
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fuentes_id_fuente_referencias_seq OWNED BY fuentes.id_fuente_referencias;


--
-- TOC entry 1908 (class 0 OID 0)
-- Dependencies: 148
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fuentes_id_fuente_referencias_seq', 1, true);


--
-- TOC entry 149 (class 1259 OID 25600)
-- Dependencies: 6
-- Name: lecciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lecciones (
    id_lecciones integer NOT NULL,
    id_temas integer NOT NULL,
    nb_lecciones text NOT NULL
);


ALTER TABLE public.lecciones OWNER TO postgres;

--
-- TOC entry 1909 (class 0 OID 0)
-- Dependencies: 149
-- Name: COLUMN lecciones.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 1910 (class 0 OID 0)
-- Dependencies: 149
-- Name: COLUMN lecciones.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_temas IS 'ID de los temas';


--
-- TOC entry 1911 (class 0 OID 0)
-- Dependencies: 149
-- Name: COLUMN lecciones.nb_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.nb_lecciones IS 'Nombre de las lecciones';


--
-- TOC entry 150 (class 1259 OID 25603)
-- Dependencies: 6 149
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lecciones_id_lecciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lecciones_id_lecciones_seq OWNER TO postgres;

--
-- TOC entry 1912 (class 0 OID 0)
-- Dependencies: 150
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lecciones_id_lecciones_seq OWNED BY lecciones.id_lecciones;


--
-- TOC entry 1913 (class 0 OID 0)
-- Dependencies: 150
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lecciones_id_lecciones_seq', 4, true);


--
-- TOC entry 151 (class 1259 OID 25605)
-- Dependencies: 6
-- Name: multimedia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE multimedia (
    id_multimedia integer NOT NULL,
    url_multimedia character varying(200) NOT NULL
);


ALTER TABLE public.multimedia OWNER TO postgres;

--
-- TOC entry 1914 (class 0 OID 0)
-- Dependencies: 151
-- Name: COLUMN multimedia.id_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.id_multimedia IS 'id del archivo multimedia';


--
-- TOC entry 1915 (class 0 OID 0)
-- Dependencies: 151
-- Name: COLUMN multimedia.url_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.url_multimedia IS 'URL del archivo ';


--
-- TOC entry 152 (class 1259 OID 25608)
-- Dependencies: 151 6
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE multimedia_id_multimedia_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.multimedia_id_multimedia_seq OWNER TO postgres;

--
-- TOC entry 1916 (class 0 OID 0)
-- Dependencies: 152
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE multimedia_id_multimedia_seq OWNED BY multimedia.id_multimedia;


--
-- TOC entry 1917 (class 0 OID 0)
-- Dependencies: 152
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('multimedia_id_multimedia_seq', 1, true);


--
-- TOC entry 153 (class 1259 OID 25610)
-- Dependencies: 6
-- Name: temas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temas (
    id_temas integer NOT NULL,
    nb_temas character(100) NOT NULL,
    descrip_temas text NOT NULL
);


ALTER TABLE public.temas OWNER TO postgres;

--
-- TOC entry 1918 (class 0 OID 0)
-- Dependencies: 153
-- Name: COLUMN temas.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.id_temas IS 'ID de los temas';


--
-- TOC entry 1919 (class 0 OID 0)
-- Dependencies: 153
-- Name: COLUMN temas.nb_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.nb_temas IS 'Nombre de los temas';


--
-- TOC entry 1920 (class 0 OID 0)
-- Dependencies: 153
-- Name: COLUMN temas.descrip_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.descrip_temas IS 'Descripción de los temas';


--
-- TOC entry 154 (class 1259 OID 25616)
-- Dependencies: 153 6
-- Name: temas_id_temas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE temas_id_temas_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.temas_id_temas_seq OWNER TO postgres;

--
-- TOC entry 1921 (class 0 OID 0)
-- Dependencies: 154
-- Name: temas_id_temas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE temas_id_temas_seq OWNED BY temas.id_temas;


--
-- TOC entry 1922 (class 0 OID 0)
-- Dependencies: 154
-- Name: temas_id_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_temas_seq', 2, true);


--
-- TOC entry 155 (class 1259 OID 25618)
-- Dependencies: 1832 6
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    username character varying(128) NOT NULL,
    password character varying(128) NOT NULL,
    perfil character varying(10) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_login timestamp without time zone
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 156 (class 1259 OID 25622)
-- Dependencies: 6 155
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 1923 (class 0 OID 0)
-- Dependencies: 156
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 1924 (class 0 OID 0)
-- Dependencies: 156
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 10, true);


--
-- TOC entry 157 (class 1259 OID 25624)
-- Dependencies: 6
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_lecciones_id_usuarios_lecciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuario_lecciones_id_usuarios_lecciones_seq OWNER TO postgres;

--
-- TOC entry 1925 (class 0 OID 0)
-- Dependencies: 157
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_lecciones_id_usuarios_lecciones_seq', 1, false);


--
-- TOC entry 158 (class 1259 OID 25626)
-- Dependencies: 6
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_temas_id_usuarios_temas_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuario_temas_id_usuarios_temas_seq OWNER TO postgres;

--
-- TOC entry 1926 (class 0 OID 0)
-- Dependencies: 158
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_temas_id_usuarios_temas_seq', 1, false);


--
-- TOC entry 1825 (class 2604 OID 25628)
-- Dependencies: 141 140
-- Name: id_contenidos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos ALTER COLUMN id_contenidos SET DEFAULT nextval('contenidos_id_contenidos_seq'::regclass);


--
-- TOC entry 1826 (class 2604 OID 25629)
-- Dependencies: 144 142
-- Name: id_ejemplos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos ALTER COLUMN id_ejemplos SET DEFAULT nextval('ejemplos_id_ejemplos_seq'::regclass);


--
-- TOC entry 1827 (class 2604 OID 25630)
-- Dependencies: 146 145
-- Name: id_ejercicios; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios ALTER COLUMN id_ejercicios SET DEFAULT nextval('ejercicios_id_ejercicios_seq'::regclass);


--
-- TOC entry 1828 (class 2604 OID 25631)
-- Dependencies: 148 147
-- Name: id_fuente_referencias; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes ALTER COLUMN id_fuente_referencias SET DEFAULT nextval('fuentes_id_fuente_referencias_seq'::regclass);


--
-- TOC entry 1829 (class 2604 OID 25632)
-- Dependencies: 150 149
-- Name: id_lecciones; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lecciones ALTER COLUMN id_lecciones SET DEFAULT nextval('lecciones_id_lecciones_seq'::regclass);


--
-- TOC entry 1830 (class 2604 OID 25633)
-- Dependencies: 152 151
-- Name: id_multimedia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY multimedia ALTER COLUMN id_multimedia SET DEFAULT nextval('multimedia_id_multimedia_seq'::regclass);


--
-- TOC entry 1831 (class 2604 OID 25634)
-- Dependencies: 154 153
-- Name: id_temas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temas ALTER COLUMN id_temas SET DEFAULT nextval('temas_id_temas_seq'::regclass);


--
-- TOC entry 1833 (class 2604 OID 25635)
-- Dependencies: 156 155
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 1872 (class 0 OID 25566)
-- Dependencies: 140
-- Data for Name: contenidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenidos (id_contenidos, id_lecciones, id_ejemplos, id_ejercicios, id_fuente_referencias, id_multimedia, descrip_contenidos) FROM stdin;
1	1	1	1	1	1	<p style="text-align: justify;">La d&eacute;cada de los <strong><code><span style="font-family:arial,helvetica,sans-serif;">70</span></code></strong> fue una d&eacute;cada de desarrollos y pruebas de nuevos conceptos en el nuevo mundo de los gestores de bases de datos.</p>\r\n\r\n<p style="text-align: justify;"><strong>IBM</strong> habia estado trabajando desde <strong>1973</strong> con los primeros conceptos, ideas y teorias sobre bases de datos relacionales. Su proyecto &quot;<em><strong>System R</strong></em>&quot; fue entre otras cosas la primera implementaci&oacute;n del lenguaje <strong>SQL</strong> (<strong>Structured Query Language</strong>). Este proyecto, sus decisiones de dise&ntilde;o y muchos de los algoritmos usados, influenciaron muchos de los sistemas de bases de datos relacionales que aparecieron posteriormente.</p>\r\n\r\n<p style="text-align: justify;">Por aquel entonces un profesor de la Universidad de <strong>Berkeley</strong>, <strong>Michael Stonebraker</strong>, leyo unos art&iacute;culos publicados por IBM sobre &quot;<em><strong>System R</strong></em>&quot; que le hicieron interesarse en el tema. Utilizando el dinero de otro proyecto que ya tenia asignado, <strong>Ingres</strong> (<strong>INteractive Graphics REtrieval System</strong>), Stonebraker empezo a desarrollar sus ideas sobre bases de datos relacionales. Durante estos a&ntilde;os Ingres mantuvo su c&oacute;digo fuente abierto y permanecio en gran medida similar en conceptos a &quot;<em><strong>System R</strong></em>&quot;.</p>\r\n\r\n<p style="text-align: justify;">A principio de los <strong>80</strong>, Ingres estuvo compitiendo con <strong>Oracle</strong> por el liderazgo en el mundo de bases de datos relacionales y su c&oacute;digo e implementaci&oacute;n evolucionaron y fueron el origen de otras bases de datos relacionales, entre ellas podemos citar a <strong>Informix</strong>, <strong>NonStop</strong> <strong>SQL</strong> y <strong>Sybase</strong> (<strong>Microsoft</strong> <strong>SQL</strong> <strong>Server</strong> fue una versi&oacute;n licenciada de <strong>Sybase</strong> hasta su version <strong>6.0</strong>).</p>\r\n\r\n<p style="text-align: justify;"><strong>Michael Stonebraker</strong> dejo la Universidad de <strong>Berkeley</strong> en 1982 para comercializar <strong>Ingres</strong> pero volvio a la misma en <strong>1985</strong> con nuevas ideas.</p>\r\n
2	2	1	1	1	1	<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Despues de su vuelta a <strong>Berkeley</strong> en <strong>1985</strong>, <strong>Michael Stonebraker</strong> lider&oacute; un nuevo proyecto llamado <strong><i>Postgres</i></strong> (<strong><em>despues de Ingres</em></strong>) patrocinado por la <i><strong>Defense Advanced Research Projects Agency</strong> (<strong>DARPA</strong>)</i>, la <strong>Army Research Office</strong><i> (<strong>ARO</strong>)</i>, la <i><strong>National Science Foundation</strong> (<strong>NSF</strong>)</i>, y <i><strong>ESL</strong>, <strong>Inc</strong></i>. Con este proyecto y basandose en la experiencia obtenida con <strong>Ingres</strong>, <strong>Stonebraker</strong> tenia como meta mejorar lo que habian conseguido y aprendido en el desarrollo de Ingres. Y aunque se baso en muchas ideas de Ingres, no se baso en el c&oacute;digo fuente del mismo.</span></p>\r\n\r\n<p style="text-align: justify;"><strong><span style="font-family:arial,helvetica,sans-serif;">Los objetivos iniciales de este proyecto fueron:</span></strong></p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Proporcionar un mejor soporte para objetos complejos</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Proporcionar a los usuarios la posibilidad de extender los tipos de datos, operadores y m&eacute;todos de acceso.</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Proporcionar los mecanismos necesarios para crear bases de datos activas (<strong>triggers, etc</strong>)</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Simplificar el c&oacute;digo encargado de la recuperaci&oacute;n del sistema despues de una ca&iacute;da del mismo</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Hacer cambios m&iacute;nimos (preferiblemente ninguno) en el modelo relacional.</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Mejorar el lenguaje de consulta <strong><em>QUEL</em></strong> heredado de Ingres (<strong>POSTQUEL</strong>).</span></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Para los interesados en el tema, teneis disponibles una serie de art&iacute;culos originales y completos en ingles relacionados con el proyecto Postgres:</span></p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M85-95.pdf">&quot;The design of POSTGRES&quot;</a></i>: El dise&ntilde;o de Postgres</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M87-13.pdf">&quot;The POSTGRES data model&quot;</a></i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M87-13.pdf">: El m&oacute;delo de datos de Postgres</a></span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M87-06.pdf">&quot;The design of the POSTGRES storage system&quot;</a></i>: El dise&ntilde;o del sistema de almacenamiento de Postgres</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M90-34.pdf">&quot;The implementation of POSTGRES&quot;</a></i>: Presentaci&oacute;n de la versi&oacute;n 1 de Postgres en la conferencia ACM-SIGMOD de 1988</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M89-82.pdf">&quot;A commentary on the POSTGRES rules system&quot;</a></i>: Comentarios sobre el sistema de reglas de Postgres</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i><a href="http://www.postgresql.org.es/sites/default/files/ERL-M90-36.pdf">&quot;On Rules, Procedures, Caching and Views in Database Systems&quot;</a></i>: Sobre reglas, procedimientos, cache y vistas en sistemas de bases de datos</span></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">La &uacute;ltima versi&oacute;n de <em><strong>Postgres</strong></em> en este proyecto fue la <strong>versi&oacute;n 4.2</strong>.</span></p>\r\n
3	3	1	1	1	1	<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">En <strong>1994</strong>, dos estudiantes de <strong>Berkeley</strong>, <strong>Andrew Yu y Jolly Chen</strong>, empezaron a trabajar con el c&oacute;digo de <strong>Postgres</strong> (<strong>versi&oacute;n 4.2</strong>) y llamaron al proyecto <strong>Postgres95</strong>. Hicieron una limpieza general del c&oacute;digo, arreglaron errores en el mismo, e implementaron otras mejoras, entre las que destacan:</span></p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sustituci&oacute;n de <strong>POSTQUEL</strong> por un interprete del lenguaje SQL</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Reimplementaci&oacute;n de las funciones agregadas</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">psql fue creado para ejecutar consultas <strong>SQL</strong></span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">El interface de objetos grandes (<em>large-object</em>) fue revisado</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Un peque&ntilde;o tutorial sobre <strong>Postgres</strong> fue creado</span></li>\r\n\t<li style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Postgres se pudo empezar a compilar con <strong>GNU</strong> make y <strong>GCC</strong> sin parchear</span></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">La versi&oacute;n <strong>1.0</strong> de <strong>Postgre95</strong> vio la luz en <strong>1995</strong>, el c&oacute;digo era <strong>100%</strong> <strong>ANSI C</strong>, un <strong>25%</strong> m&aacute;s corto en relaci&oacute;n con la versi&oacute;n <strong>4.2</strong> y un <strong>30-50%</strong> m&aacute;s r&aacute;pido. El c&oacute;digo fue publicado en la web y liberado bajo una <strong>licencia BSD</strong>, y m&aacute;s y m&aacute;s personas empezaron a utilizar y a colaborar en el proyecto.</span></p>\r\n
4	4	1	1	1	1	<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">En 1996, Andrew Yu y Jolly Chen ya no tenian tanto tiempo para dirigir y desarrollar Postgres95. Algunos de los usuarios habituales de las listas de correo del proyecto decidieron hacerse cargo del mismo y crearon el llamado <i>&quot;PostgreSQL Global Development Team&quot;</i>.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">En un principio este equipo de desarrolladores al cargo de la organizaci&oacute;n del proyecto estuvo formado por Marc Fournier en Ontario, Canada, Thomas Lockhart en Pasadena, California, Vadim Mikheev en Krasnoyarsk, Rusia y Bruce Momjian in Philadelphia, Pennsylvania. El nombre fue cambiado de Postgres95 a PostgreSQL y lanzaron la versi&oacute;n 6.0 en enero de 1997.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Hoy en dia el grupo central (core team) de desarrolladores est&aacute; formado por 6 personas, existen 38 desarrolladores principales y m&aacute;s 21 desarrolladores habituales. En total alrededor de 65 personas activas, contribuyendo con el desarrollo de PostgreSQL. Podeis encontrar m&aacute;s informaci&oacute;n sobre este equipo de desarrolladores en <a href="http://www.postgresql.org/community/contributors/" title="http://www.postgresql.org/community/contributors/">http://www.postgresql.org/community/contributors/</a></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Existe tambien una gran comunidad de usuarios, programadores y administradores que colaboran act&iacute;vamente en numerosos aspectos y actividades relacionadas con el proyecto. Informes y soluciones de problemas, tests, comprobaci&oacute;n del funcionamiento, aportaciones de nuevas ideas, discusiones sobre caracter&iacute;sticas y problemas, documentaci&oacute;n y fomento de PostgreSQL son solo algunas de las actividades que la comunidad de usuarios realiza.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No tenemos que olvidar tampoco que existen muchas empresas que tambien colaboran con dinero y/&oacute; con tiempo/personas en mejorar PostgreSQL. Muchos desarrolladores y nuevas caracter&iacute;sticas est&aacute;n muchas veces patrocinadas por empresas privadas.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">En los &uacute;ltimos a&ntilde;os los trabajos de desarrollo se han concentrado mucho en la velocidad de proceso y en caracter&iacute;sticas demandadas en el mundo empresarial. En este gr&aacute;fico podeis ver cuando las diferentes versiones de PostgreSQL han visto la luz y las principales caracteristicas en las que se ha centrado el desarrollo.</span></p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<center style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><img height="39" src="http://www.postgresql.org.es/sites/default/files/postgresql_hist_9.0.png" width="604" /></span></center>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Durante los a&ntilde;os de existencia del Proyecto PostgreSQL, el tama&ntilde;o del mismo, tanto en n&uacute;mero de desarrolladores, como en n&uacute;meros de linea de c&oacute;digo, funciones y complejidad del mismo ha ido aumentando a&ntilde;o a a&ntilde;o. En el siguiente gr&aacute;fico teneis una gr&aacute;fica con la evoluci&oacute;n del n&uacute;mero de lineas de c&oacute;digo en cada versi&oacute;n de PostgreSQL.</span></p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<center style="text-align: justify;">\r\n<center style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><img height="258" src="http://www.postgresql.org.es/sites/default/files/postgres_versiones_contador_9.0.png" width="554" /></span></center>\r\n</center>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><i>Los datos de este gr&aacute;fico estan generados con CLOC. Contabilizamos como lineas de c&oacute;digo a todas las lineas de c&oacute;digo en diferentes lenguaje, m&aacute;s comentarios, menos lineas en blanco. Los ficheros HTML y CSS no se cuentan como c&oacute;digo.</i></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Usando el modelo de estimaci&oacute;n de costes de software <i>&quot;COCOMOII&quot; (Constructive COst MOdel)</i> podemos obtener unos datos meramente orientativos pero que nos pueden ayudar a entender la complejidad del proyecto PostgreSQL y los recursos que se necesitarian para desarrollar un producto similar desde cero.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Seg&uacute;n COCOMOII, obtendriamos estos n&uacute;meros para PostgreSQL 9.0.0:</span></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" class="tbldocs" height="219" width="527">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<th style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Descripci&oacute;n</span></th>\r\n\t\t\t<th><span style="font-family:arial,helvetica,sans-serif;">Valor</span></th>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">N&uacute;meros de lineas de c&oacute;digo (PG-9.0.0)</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">969.562</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Habilidad de los programadores (alta)</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">0,6</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Complejidad del projecto (alta)</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">1,24</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Precio/hora ($100.000/a&ntilde;o - 1.875horas/a&ntilde;o)</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">$53,3</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;">&nbsp;</td>\r\n\t\t\t<td style="text-align: justify;">&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Programadores-a&ntilde;o</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">618,71</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Precio por linea de c&oacute;digo</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">$65,30</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Precio Total</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">$63.316.697</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Lineas de c&oacute;digo por persona/dia</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Tiempo de desarrollo del proyecto (a&ntilde;os)</span></td>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">3.6</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">N&uacute;mero medio de programadores</span></td>\r\n\t\t\t<td style="text-align: justify;">&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Ciclo de vida (EOL) y soporte</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">El Proyecto PostgreSQL tiene como objetivo mantener y soportar cada versi&oacute;n de PostgreSQL durante 5 a&ntilde;os desde el momento de su lanzamiento. A continuaci&oacute;n teneis un resumen del ciclo de vida de las diferentes versiones de PostgreSQL:</span></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" class="tbldocs" height="303" width="523">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<th class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Versi&oacute;n</span></th>\r\n\t\t\t<th class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Versi&oacute;n menor</span></th>\r\n\t\t\t<th class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Soportada</span></th>\r\n\t\t\t<th class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Lanzamiento</span></th>\r\n\t\t\t<th class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Soporte</span></th>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">9.2</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">9.2.0</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Si</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sep 2012</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sep 2017</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">9.1</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">9.1.5</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Si</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sep 2011</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sep 2016</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">9.0</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">9.0.9</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Si</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sep 2010</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Sep 2015</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.4</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.4.13</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Si</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Jul 2009</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Jul 2014</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.3</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.3.20</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Si</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Feb 2008</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Feb 2013</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.2</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.2.23</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Dic 2006</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Dic 2011</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.1</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.1.23</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Nov 2005</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Nov 2010</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.0</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">8.0.26</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Ene 2005</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Oct 2010</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.4</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.4.30</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Nov 2003</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Oct 2010</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.3</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.3.21</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Nov 2002</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Nov 2007</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.2</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.2.8</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Feb 2002</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Feb 2007</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.1</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.1.3</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Abr 2001</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Abr 2006</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.0</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">7.0.3</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">May 2000</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">May 2005</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">6.5</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">6.5.3</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Jun 1999</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Jun 2004</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">6.4</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">6.4.2</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Oct 1998</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Oct 2003</span></td>\r\n\t\t</tr>\r\n\t\t<tr class="lastrow">\r\n\t\t\t<td class="colFirst" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">6.3</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">6.3.2</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">No</span></td>\r\n\t\t\t<td class="colMid" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Mar 1998</span></td>\r\n\t\t\t<td class="colLast" style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Mar 2003</span></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n
\.


--
-- TOC entry 1873 (class 0 OID 25574)
-- Dependencies: 142
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejemplos (id_ejemplos, nb_ejemplos, cont_ejercicios) FROM stdin;
1	lecciones sin ejemplo                                                                               	estos ejemplos son para los temas teoricos que no ameritan este renglon
\.


--
-- TOC entry 1874 (class 0 OID 25584)
-- Dependencies: 145
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejercicios (id_ejercicios, nb_ejercicios, des_ejercicios, cont_ejercicios) FROM stdin;
1	lecciones sin ejercicios                                                                            		las lecciones con este items no ameritan ejercicios
\.


--
-- TOC entry 1875 (class 0 OID 25592)
-- Dependencies: 147
-- Data for Name: fuentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fuentes (id_fuente_referencias, fuente_referencias) FROM stdin;
1	http://www.postgresql.org.es/sobre_postgresql#historia
\.


--
-- TOC entry 1876 (class 0 OID 25600)
-- Dependencies: 149
-- Data for Name: lecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lecciones (id_lecciones, id_temas, nb_lecciones) FROM stdin;
1	1	Ingres 1977-1985 - "El comienzo"
2	1	Postgres 1986-1994 - Despues (post) de ingres
3	1	Postgres95 1994-1995 - Nueva vida en el mundo opensource
4	1	PostgreSQL 1996-actualidad - Proyecto PostgreSQL
\.


--
-- TOC entry 1877 (class 0 OID 25605)
-- Dependencies: 151
-- Data for Name: multimedia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY multimedia (id_multimedia, url_multimedia) FROM stdin;
1	http://www.postgresql.org.es/sobre_postgresql#historia
\.


--
-- TOC entry 1878 (class 0 OID 25610)
-- Dependencies: 153
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temas (id_temas, nb_temas, descrip_temas) FROM stdin;
2	pruebas2                                                                                            	prueba 2
1	Historia de PostgreSQL                                                                              	El proyecto PostgreSQL tal y como lo conocemos hoy en dia empezó en 1996, aunque las bases y el trabajo en la que se asienta tienen sus comienzos en la decada de los 70.
\.


--
-- TOC entry 1879 (class 0 OID 25618)
-- Dependencies: 155
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id_usuario, nombre, apellido, email, username, password, perfil, created_at, last_login) FROM stdin;
2	prueba	prueba	prueba	alksjdlasjd	2f3ff5526a0d895445b94a27b2e75888	normal	2013-06-14 17:17:18.371378	\N
3	carlos	hernandez	carlosmanaure22@gmail.com	carlosm22	4a3e00961a08879c34f91ca0070ea2f5	normal	2013-06-15 11:41:27.364281	2013-06-15 12:12:50.791678
4	Dimas	martines	dimasjm_1997@hotmail.com	dimasj	715c9b5481c9470dcb2c4bfc59d8edf9	normal	2013-06-15 19:31:42.130452	2013-06-15 19:39:57.815247
5	p1	p1	p1	p1	d6ecbcc848ceb8deabefff607fee698c	normal	2013-06-19 16:01:20.861948	\N
7	p2	p2	p2	p2	1d665b9b1467944c128a5575119d1cfd	normal	2013-06-19 16:02:16.769401	2013-06-19 16:09:38.181666
8	nayi	mont	nmontilla19@gmail.com	admin1	c3284d0f94606de1fd2af172aba15bf3	1	2013-07-20 12:10:26.775099	\N
9	bg	bg	nmontilla1@gmail.com	admin2	202cb962ac59075b964b07152d234b70	1	2013-07-20 12:11:08.427483	\N
10	Juan	Rodriguez	juanjorog	juan	c5167086dc91f38bd768477eaf526c85	1	2013-07-28 07:09:24.624354	2013-07-28 07:10:00.255773
1	admin	admin	pcondor@gmail.com	admin	21232f297a57a5a743894a0e4a801fc3	admin	2013-06-07 21:10:48.671935	2013-07-31 13:31:47.582821
\.


--
-- TOC entry 1835 (class 2606 OID 25644)
-- Dependencies: 140 140
-- Name: contenidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_pkey PRIMARY KEY (id_contenidos);


--
-- TOC entry 1837 (class 2606 OID 25646)
-- Dependencies: 142 142
-- Name: ejemplos_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1839 (class 2606 OID 25648)
-- Dependencies: 142 142
-- Name: ejemplos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_pkey PRIMARY KEY (id_ejemplos);


--
-- TOC entry 1841 (class 2606 OID 25650)
-- Dependencies: 145 145
-- Name: ejercicios_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1843 (class 2606 OID 25652)
-- Dependencies: 145 145
-- Name: ejercicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicios);


--
-- TOC entry 1845 (class 2606 OID 25654)
-- Dependencies: 147 147
-- Name: fuentes_fuente_referencias_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_fuente_referencias_key UNIQUE (fuente_referencias);


--
-- TOC entry 1847 (class 2606 OID 25656)
-- Dependencies: 147 147
-- Name: fuentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_pkey PRIMARY KEY (id_fuente_referencias);


--
-- TOC entry 1849 (class 2606 OID 33860)
-- Dependencies: 149 149
-- Name: lecciones_nb_lecciones_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_nb_lecciones_key UNIQUE (nb_lecciones);


--
-- TOC entry 1851 (class 2606 OID 25660)
-- Dependencies: 149 149
-- Name: lecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_pkey PRIMARY KEY (id_lecciones);


--
-- TOC entry 1853 (class 2606 OID 25662)
-- Dependencies: 151 151
-- Name: multimedia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_pkey PRIMARY KEY (id_multimedia);


--
-- TOC entry 1855 (class 2606 OID 25664)
-- Dependencies: 151 151
-- Name: multimedia_url_multimedia_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_url_multimedia_key UNIQUE (url_multimedia);


--
-- TOC entry 1857 (class 2606 OID 25666)
-- Dependencies: 153 153
-- Name: temas_nb_temas_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_nb_temas_key UNIQUE (nb_temas);


--
-- TOC entry 1859 (class 2606 OID 25668)
-- Dependencies: 153 153
-- Name: temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_temas);


--
-- TOC entry 1861 (class 2606 OID 25670)
-- Dependencies: 155 155
-- Name: usuario_password_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_password_key UNIQUE (password);


--
-- TOC entry 1863 (class 2606 OID 25672)
-- Dependencies: 155 155
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 1865 (class 2606 OID 25674)
-- Dependencies: 155 155
-- Name: usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- TOC entry 1866 (class 2606 OID 25675)
-- Dependencies: 140 1838 142
-- Name: contenidos_id_ejemplos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_ejemplos_fkey FOREIGN KEY (id_ejemplos) REFERENCES ejemplos(id_ejemplos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1867 (class 2606 OID 25680)
-- Dependencies: 145 140 1842
-- Name: contenidos_id_ejercicios_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_ejercicios_fkey FOREIGN KEY (id_ejercicios) REFERENCES ejercicios(id_ejercicios) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1868 (class 2606 OID 25685)
-- Dependencies: 147 140 1846
-- Name: contenidos_id_fuente_referencias_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_fuente_referencias_fkey FOREIGN KEY (id_fuente_referencias) REFERENCES fuentes(id_fuente_referencias) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1869 (class 2606 OID 25690)
-- Dependencies: 1850 149 140
-- Name: contenidos_id_lecciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_lecciones_fkey FOREIGN KEY (id_lecciones) REFERENCES lecciones(id_lecciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1870 (class 2606 OID 25695)
-- Dependencies: 151 140 1852
-- Name: contenidos_id_multimedia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_multimedia_fkey FOREIGN KEY (id_multimedia) REFERENCES multimedia(id_multimedia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1871 (class 2606 OID 25700)
-- Dependencies: 149 1858 153
-- Name: lecciones_id_temas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_id_temas_fkey FOREIGN KEY (id_temas) REFERENCES temas(id_temas) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1884 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-07-31 22:00:48 VET

--
-- PostgreSQL database dump complete
--

