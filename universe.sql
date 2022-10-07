--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: et; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.et (
    et_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    human_sustainable boolean,
    is_closer boolean,
    human_survival_prob integer,
    planet_survival_prob integer
);


ALTER TABLE public.et OWNER TO freecodecamp;

--
-- Name: et_et_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.et_et_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.et_et_id_seq OWNER TO freecodecamp;

--
-- Name: et_et_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.et_et_id_seq OWNED BY public.et.et_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    diameter numeric(5,4),
    age_in_millions_of_years integer NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    diameter numeric(5,4),
    age_in_millions_of_years integer NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer
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
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    diameter numeric(5,4),
    age_in_millions_of_years integer NOT NULL,
    has_water boolean NOT NULL,
    star_id integer
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
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    diameter numeric(5,4),
    age_in_millions_of_years integer NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: et et_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.et ALTER COLUMN et_id SET DEFAULT nextval('public.et_et_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: et; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.et VALUES (1, 'sample 1', 1, 1, 1, false, false, 0, 0);
INSERT INTO public.et VALUES (2, 'sample 2', 1, 1, 2, false, true, 25, 75);
INSERT INTO public.et VALUES (3, 'sample 3', 1, 2, 3, true, false, 75, 25);
INSERT INTO public.et VALUES (4, 'sample 4', 1, 2, 4, true, true, 80, 80);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'looks like milk', true, false, 4.5677, 8000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'nearest neighbor', false, false, 5.6778, 9000);
INSERT INTO public.galaxy VALUES (3, 'Magellanic Clouds', 'irregular galaxies', false, false, 3.3455, 3512);
INSERT INTO public.galaxy VALUES (4, 'Virgo A', 'contains a black hole', true, true, 6.7453, 9876);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', 'cosmic source of radio waves', false, false, 1.2345, 7634);
INSERT INTO public.galaxy VALUES (6, 'Canis Major', 'dwarf galaxy', false, false, 4.5865, 4328);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 'crusty', false, true, 0.0234, 3453, false, 1);
INSERT INTO public.moon VALUES (2, 'm2', 'squishy', false, false, 0.0133, 4534, false, 2);
INSERT INTO public.moon VALUES (3, 'm3', 'creepy', false, true, 0.0986, 1342, false, 3);
INSERT INTO public.moon VALUES (4, 'm4', 'gassy', false, true, 0.0763, 1324, false, 4);
INSERT INTO public.moon VALUES (5, 'm5', 'biggy', false, true, 0.0682, 5434, false, 5);
INSERT INTO public.moon VALUES (6, 'm6', 'fiery', false, false, 0.0432, 6342, false, 6);
INSERT INTO public.moon VALUES (7, 'm7', 'nice', true, true, 0.0834, 6433, false, 6);
INSERT INTO public.moon VALUES (8, 'm8', 'baggy', false, false, 0.0435, 3254, false, 6);
INSERT INTO public.moon VALUES (9, 'm9', 'rocky', false, false, 0.0973, 6462, false, 7);
INSERT INTO public.moon VALUES (10, 'm10', 'dusty', false, true, 0.0673, 5534, false, 7);
INSERT INTO public.moon VALUES (11, 'm11', 'crusty', false, true, 0.0665, 3443, false, 8);
INSERT INTO public.moon VALUES (12, 'm12', 'squishy', false, false, 0.0733, 1534, false, 9);
INSERT INTO public.moon VALUES (13, 'm13', 'creepy', false, true, 0.0786, 1782, false, 10);
INSERT INTO public.moon VALUES (14, 'm14', 'gassy', false, true, 0.0963, 7624, false, 11);
INSERT INTO public.moon VALUES (15, 'm15', 'biggy', false, true, 0.0342, 7434, false, 11);
INSERT INTO public.moon VALUES (16, 'm16', 'fiery', false, false, 0.0632, 2342, false, 11);
INSERT INTO public.moon VALUES (17, 'm17', 'nice', true, true, 0.0587, 9833, false, 12);
INSERT INTO public.moon VALUES (18, 'm18', 'baggy', false, false, 0.0345, 3564, false, 12);
INSERT INTO public.moon VALUES (19, 'm19', 'rocky', false, false, 0.0763, 1342, false, 12);
INSERT INTO public.moon VALUES (20, 'm20', 'dusty', false, true, 0.0873, 5784, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 'very blue', false, true, 0.5433, 3000, false, 1);
INSERT INTO public.planet VALUES (2, 'p2', 'very red', false, false, 0.4563, 3001, false, 1);
INSERT INTO public.planet VALUES (3, 'p3', 'rocky red', false, true, 0.6744, 3456, false, 2);
INSERT INTO public.planet VALUES (4, 'p4', 'gassy blue', true, true, 0.5872, 5001, false, 2);
INSERT INTO public.planet VALUES (5, 'p5', 'blue and green', true, true, 0.3223, 5463, true, 3);
INSERT INTO public.planet VALUES (6, 'p6', 'lava', false, false, 0.1234, 4567, false, 3);
INSERT INTO public.planet VALUES (7, 'p7', 'bad one', false, false, 0.7878, 8787, false, 4);
INSERT INTO public.planet VALUES (8, 'p8', 'nice one', true, true, 0.3452, 2354, true, 4);
INSERT INTO public.planet VALUES (9, 'p9', 'poor one', true, true, 0.3874, 3242, false, 5);
INSERT INTO public.planet VALUES (10, 'p10', 'green one', true, true, 0.8452, 6354, true, 5);
INSERT INTO public.planet VALUES (11, 'p11', 'metal one', false, false, 0.5434, 6434, false, 6);
INSERT INTO public.planet VALUES (12, 'p12', 'giant one', true, true, 0.7554, 6545, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 'Very Bright', true, false, 1.2344, 3456, 1, 1);
INSERT INTO public.star VALUES ('star2', 'Small', false, true, 0.9899, 8999, 2, 1);
INSERT INTO public.star VALUES ('star3', 'pole', false, false, 2.5667, 4532, 3, 2);
INSERT INTO public.star VALUES ('star4', 'yellow', true, true, 3.4556, 6410, 4, 3);
INSERT INTO public.star VALUES ('star5', 'red', false, false, 8.9990, 2098, 5, 6);
INSERT INTO public.star VALUES ('star6', 'gaseous', false, true, 5.4332, 6000, 6, 5);


--
-- Name: et_et_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.et_et_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


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
-- Name: et et_et_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.et
    ADD CONSTRAINT et_et_id_key UNIQUE (et_id);


--
-- Name: et et_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.et
    ADD CONSTRAINT et_pkey PRIMARY KEY (et_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: et et_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.et
    ADD CONSTRAINT et_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: et et_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.et
    ADD CONSTRAINT et_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: et et_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.et
    ADD CONSTRAINT et_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
