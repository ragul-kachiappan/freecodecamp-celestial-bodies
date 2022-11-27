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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    uid integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    uid integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_uid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_uid_seq OWNER TO freecodecamp;

--
-- Name: users_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_uid_seq OWNED BY public.users.uid;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users uid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN uid SET DEFAULT nextval('public.users_uid_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 12, 2);
INSERT INTO public.games VALUES (2, 979, 3);
INSERT INTO public.games VALUES (3, 945, 3);
INSERT INTO public.games VALUES (4, 149, 4);
INSERT INTO public.games VALUES (5, 20, 4);
INSERT INTO public.games VALUES (6, 643, 3);
INSERT INTO public.games VALUES (7, 824, 3);
INSERT INTO public.games VALUES (8, 114, 3);
INSERT INTO public.games VALUES (9, 904, 5);
INSERT INTO public.games VALUES (10, 630, 5);
INSERT INTO public.games VALUES (11, 525, 6);
INSERT INTO public.games VALUES (12, 111, 6);
INSERT INTO public.games VALUES (13, 303, 5);
INSERT INTO public.games VALUES (14, 720, 5);
INSERT INTO public.games VALUES (15, 406, 5);
INSERT INTO public.games VALUES (16, 340, 7);
INSERT INTO public.games VALUES (17, 930, 7);
INSERT INTO public.games VALUES (18, 40, 8);
INSERT INTO public.games VALUES (19, 728, 8);
INSERT INTO public.games VALUES (20, 952, 7);
INSERT INTO public.games VALUES (21, 5, 7);
INSERT INTO public.games VALUES (22, 679, 7);
INSERT INTO public.games VALUES (23, 116, 9);
INSERT INTO public.games VALUES (24, 274, 9);
INSERT INTO public.games VALUES (25, 237, 10);
INSERT INTO public.games VALUES (26, 335, 10);
INSERT INTO public.games VALUES (27, 507, 9);
INSERT INTO public.games VALUES (28, 931, 9);
INSERT INTO public.games VALUES (29, 639, 9);
INSERT INTO public.games VALUES (30, 449, 11);
INSERT INTO public.games VALUES (31, 126, 11);
INSERT INTO public.games VALUES (32, 707, 12);
INSERT INTO public.games VALUES (33, 338, 12);
INSERT INTO public.games VALUES (34, 179, 11);
INSERT INTO public.games VALUES (35, 747, 11);
INSERT INTO public.games VALUES (36, 222, 11);
INSERT INTO public.games VALUES (37, 791, 13);
INSERT INTO public.games VALUES (38, 594, 13);
INSERT INTO public.games VALUES (39, 763, 14);
INSERT INTO public.games VALUES (40, 528, 14);
INSERT INTO public.games VALUES (41, 290, 13);
INSERT INTO public.games VALUES (42, 889, 13);
INSERT INTO public.games VALUES (43, 941, 13);
INSERT INTO public.games VALUES (44, 940, 15);
INSERT INTO public.games VALUES (45, 625, 15);
INSERT INTO public.games VALUES (46, 14, 16);
INSERT INTO public.games VALUES (47, 380, 16);
INSERT INTO public.games VALUES (48, 413, 15);
INSERT INTO public.games VALUES (49, 996, 15);
INSERT INTO public.games VALUES (50, 374, 15);
INSERT INTO public.games VALUES (51, 379, 17);
INSERT INTO public.games VALUES (52, 439, 17);
INSERT INTO public.games VALUES (53, 635, 18);
INSERT INTO public.games VALUES (54, 274, 18);
INSERT INTO public.games VALUES (55, 294, 17);
INSERT INTO public.games VALUES (56, 395, 17);
INSERT INTO public.games VALUES (57, 571, 17);
INSERT INTO public.games VALUES (58, 937, 19);
INSERT INTO public.games VALUES (59, 636, 19);
INSERT INTO public.games VALUES (60, 40, 20);
INSERT INTO public.games VALUES (61, 734, 20);
INSERT INTO public.games VALUES (62, 724, 19);
INSERT INTO public.games VALUES (63, 196, 19);
INSERT INTO public.games VALUES (64, 337, 19);
INSERT INTO public.games VALUES (65, 743, 21);
INSERT INTO public.games VALUES (66, 680, 21);
INSERT INTO public.games VALUES (67, 324, 22);
INSERT INTO public.games VALUES (68, 41, 22);
INSERT INTO public.games VALUES (69, 62, 21);
INSERT INTO public.games VALUES (70, 719, 21);
INSERT INTO public.games VALUES (71, 61, 21);
INSERT INTO public.games VALUES (72, 7, 23);
INSERT INTO public.games VALUES (73, 273, 24);
INSERT INTO public.games VALUES (74, 144, 24);
INSERT INTO public.games VALUES (75, 734, 25);
INSERT INTO public.games VALUES (76, 226, 25);
INSERT INTO public.games VALUES (77, 645, 24);
INSERT INTO public.games VALUES (78, 78, 24);
INSERT INTO public.games VALUES (79, 75, 24);
INSERT INTO public.games VALUES (80, 6, 26);
INSERT INTO public.games VALUES (81, 97, 26);
INSERT INTO public.games VALUES (82, 701, 27);
INSERT INTO public.games VALUES (83, 874, 27);
INSERT INTO public.games VALUES (84, 671, 26);
INSERT INTO public.games VALUES (85, 505, 26);
INSERT INTO public.games VALUES (86, 465, 26);
INSERT INTO public.games VALUES (87, 539, 28);
INSERT INTO public.games VALUES (88, 164, 28);
INSERT INTO public.games VALUES (89, 294, 29);
INSERT INTO public.games VALUES (90, 880, 29);
INSERT INTO public.games VALUES (91, 978, 28);
INSERT INTO public.games VALUES (92, 29, 28);
INSERT INTO public.games VALUES (93, 213, 28);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'rad');
INSERT INTO public.users VALUES (2, 'rr');
INSERT INTO public.users VALUES (3, 'user_1669549644527');
INSERT INTO public.users VALUES (4, 'user_1669549644526');
INSERT INTO public.users VALUES (5, 'user_1669549710059');
INSERT INTO public.users VALUES (6, 'user_1669549710058');
INSERT INTO public.users VALUES (7, 'user_1669549819792');
INSERT INTO public.users VALUES (8, 'user_1669549819791');
INSERT INTO public.users VALUES (9, 'user_1669549846554');
INSERT INTO public.users VALUES (10, 'user_1669549846553');
INSERT INTO public.users VALUES (11, 'user_1669549856800');
INSERT INTO public.users VALUES (12, 'user_1669549856798');
INSERT INTO public.users VALUES (13, 'user_1669549867498');
INSERT INTO public.users VALUES (14, 'user_1669549867497');
INSERT INTO public.users VALUES (15, 'user_1669549892466');
INSERT INTO public.users VALUES (16, 'user_1669549892465');
INSERT INTO public.users VALUES (17, 'user_1669549930116');
INSERT INTO public.users VALUES (18, 'user_1669549930115');
INSERT INTO public.users VALUES (19, 'user_1669550243562');
INSERT INTO public.users VALUES (20, 'user_1669550243561');
INSERT INTO public.users VALUES (21, 'user_1669550329411');
INSERT INTO public.users VALUES (22, 'user_1669550329410');
INSERT INTO public.users VALUES (23, 'rt');
INSERT INTO public.users VALUES (24, 'user_1669550490817');
INSERT INTO public.users VALUES (25, 'user_1669550490816');
INSERT INTO public.users VALUES (26, 'user_1669550610352');
INSERT INTO public.users VALUES (27, 'user_1669550610351');
INSERT INTO public.users VALUES (28, 'user_1669550725685');
INSERT INTO public.users VALUES (29, 'user_1669550725684');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 93, true);


--
-- Name: users_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_uid_seq', 29, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uid);


--
-- Name: games games_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_uid_fkey FOREIGN KEY (uid) REFERENCES public.users(uid);


--
-- PostgreSQL database dump complete
--

