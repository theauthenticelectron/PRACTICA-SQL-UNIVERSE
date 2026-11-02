--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planets integer,
    distance numeric,
    description text NOT NULL,
    habitable boolean NOT NULL,
    super_name character varying(100) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: marte; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.marte (
    marte_id integer NOT NULL,
    name character varying(100),
    living boolean NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.marte OWNER TO freecodecamp;

--
-- Name: marte_marte_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.marte_marte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marte_marte_id_seq OWNER TO freecodecamp;

--
-- Name: marte_marte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.marte_marte_id_seq OWNED BY public.marte.marte_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    diameter_km integer,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    moons integer,
    age_in_millions_of_years integer,
    has_atmosphere boolean NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planets integer,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: marte marte_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.marte ALTER COLUMN marte_id SET DEFAULT nextval('public.marte_marte_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 5800, 0, 'Galaxia espiral barrada que contiene el Sistema Solar', true, 'La Galaxia');
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 0, 2.5, 'Galaxia espiral más grande del Grupo Local, vecina de la Vía Láctea', false, 'Messier 31');
INSERT INTO public.galaxy VALUES (3, 'Triángulo', 0, 2.7, 'Galaxia espiral pequeña del Grupo Local, con intensa formación estelar', false, 'Messier 33');
INSERT INTO public.galaxy VALUES (4, 'Gran Nube de Magallanes', 0, 0.16, 'Galaxia enana irregular satélite de la Vía Láctea', false, 'LMC');
INSERT INTO public.galaxy VALUES (5, 'Remolino', 0, 23, 'Galaxia espiral con brazos muy definidos, en interacción con una galaxia vecina', false, 'Messier 51');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 0, 29, 'Galaxia con un gran bulbo central y un anillo de polvo prominente', false, 'Messier 104');


--
-- Data for Name: marte; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.marte VALUES (1, 'Marte Terraformado', false, 'Marte tras un proceso de terraformación parcial, con atmósfera densa pero aún sin vida confirmada');
INSERT INTO public.marte VALUES (2, 'Marte Colonial', true, 'Asentamiento humano permanente en Marte con colonias autosuficientes y presencia de vida');
INSERT INTO public.marte VALUES (3, 'Marte Primitivo', false, 'Marte en su estado natural, frío, seco y con una atmósfera muy tenue');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474, 4500, true, false, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', 22, 4500, false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 4500, false, false, 4);
INSERT INTO public.moon VALUES (4, 'Ío', 3643, 4500, true, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 4500, true, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 5268, 4500, true, false, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 4821, 4500, true, false, 5);
INSERT INTO public.moon VALUES (8, 'Amaltea', 167, 4500, false, false, 5);
INSERT INTO public.moon VALUES (9, 'Titán', 5150, 4500, true, false, 6);
INSERT INTO public.moon VALUES (10, 'Rea', 1527, 4500, true, false, 6);
INSERT INTO public.moon VALUES (11, 'Encélado', 504, 4500, true, false, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', 396, 4500, true, false, 6);
INSERT INTO public.moon VALUES (13, 'Jápeto', 1469, 4500, true, false, 6);
INSERT INTO public.moon VALUES (14, 'Tetis', 1062, 4500, true, false, 6);
INSERT INTO public.moon VALUES (15, 'Dione', 1123, 4500, true, false, 6);
INSERT INTO public.moon VALUES (16, 'Titania', 1578, 4500, true, false, 7);
INSERT INTO public.moon VALUES (17, 'Oberón', 1523, 4500, true, false, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 471, 4500, true, false, 7);
INSERT INTO public.moon VALUES (19, 'Tritón', 2707, 4500, true, false, 8);
INSERT INTO public.moon VALUES (20, 'LMC b I', 300, 200, true, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 0, 4500, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 4500, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', 1, 4540, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 2, 4600, true, false, 1);
INSERT INTO public.planet VALUES (5, 'Júpiter', 95, 4600, true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 146, 4500, true, false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 27, 4500, true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 14, 4500, true, false, 1);
INSERT INTO public.planet VALUES (9, 'Próxima b', 0, 4850, true, false, 3);
INSERT INTO public.planet VALUES (10, 'Próxima c', 0, 4850, false, false, 3);
INSERT INTO public.planet VALUES (11, 'Estrella LMC b', 1, 200, true, false, 6);
INSERT INTO public.planet VALUES (12, 'Alfa Centauri Ab', 0, 5300, true, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 8, 4600, true, true, 1);
INSERT INTO public.star VALUES (2, 'Alfa Centauri A', 0, 5300, true, false, 1);
INSERT INTO public.star VALUES (3, 'Próxima Centauri', 2, 4850, true, false, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 0, 8, true, false, 1);
INSERT INTO public.star VALUES (5, 'Sirio A', 0, 240, true, false, 1);
INSERT INTO public.star VALUES (6, 'Estrella de la Gran Nube', 1, 200, true, false, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: marte_marte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.marte_marte_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: marte marte_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.marte
    ADD CONSTRAINT marte_name_key UNIQUE (name);


--
-- Name: marte marte_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.marte
    ADD CONSTRAINT marte_pkey PRIMARY KEY (marte_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

