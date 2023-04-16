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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    info1 integer NOT NULL,
    info2 integer,
    info3 numeric(4,1),
    info4 text,
    info5 boolean,
    info6 boolean
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
-- Name: meteorite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorite (
    meteorite_id integer NOT NULL,
    name character varying(40) NOT NULL,
    info1 integer NOT NULL
);


ALTER TABLE public.meteorite OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_galaxy_star_id_seq OWNED BY public.meteorite.meteorite_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    info1 integer NOT NULL,
    info2 integer,
    info3 numeric(4,1),
    info4 text,
    info5 boolean,
    info6 boolean,
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
    name character varying(40) NOT NULL,
    info1 integer NOT NULL,
    info2 integer,
    info3 numeric(4,1),
    info4 text,
    info5 boolean,
    info6 boolean,
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
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    info1 integer NOT NULL,
    info2 integer,
    info3 numeric(4,1),
    info4 text,
    info5 boolean,
    info6 boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteorite meteorite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite ALTER COLUMN meteorite_id SET DEFAULT nextval('public.galaxy_star_galaxy_star_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 0, 0, 0.0, 'A', true, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 1, 1, 1.1, 'B', true, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 3, 3, 2.2, 'C', false, false);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 4, 4, 4.4, 'D', true, true);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 5, 5, 5.5, 'E', true, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 6, 6, 6.6, 'F', true, true);


--
-- Data for Name: meteorite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorite VALUES (1, 'Meteorite 1', 1);
INSERT INTO public.meteorite VALUES (2, 'Meteorite 2', 2);
INSERT INTO public.meteorite VALUES (3, 'Meteorite 3', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, 1, 1.1, 'A', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2, 2, 2.2, 'B', true, true, 1);
INSERT INTO public.moon VALUES (3, 'Moon 3', 3, 3, 3.3, 'C', true, true, 2);
INSERT INTO public.moon VALUES (4, 'Moon 4', 4, 4, 4.4, 'D', true, true, 2);
INSERT INTO public.moon VALUES (5, 'Moon 5', 5, 5, 5.5, 'E', true, true, 3);
INSERT INTO public.moon VALUES (6, 'Moon 6', 6, 6, 6.6, 'F', true, true, 3);
INSERT INTO public.moon VALUES (7, 'Moon 7', 7, 7, 7.7, 'G', true, true, 4);
INSERT INTO public.moon VALUES (8, 'Moon 8', 8, 8, 8.8, 'H', true, true, 4);
INSERT INTO public.moon VALUES (9, 'Moon 9', 9, 9, 9.0, 'I', true, true, 5);
INSERT INTO public.moon VALUES (10, 'Moon 10', 10, 10, 10.0, 'J', true, true, 5);
INSERT INTO public.moon VALUES (11, 'Moon 11', 11, 11, 11.1, 'K', true, true, 6);
INSERT INTO public.moon VALUES (12, 'Moon 12', 12, 12, 12.0, 'L', true, true, 6);
INSERT INTO public.moon VALUES (16, 'Moon 16', 16, 16, 16.0, 'P', true, true, 8);
INSERT INTO public.moon VALUES (17, 'Moon 17', 17, 17, 17.0, 'Q', true, true, 9);
INSERT INTO public.moon VALUES (18, 'Moon 18', 18, 18, 18.0, 'R', true, true, 9);
INSERT INTO public.moon VALUES (19, 'Moon 19', 19, 19, 19.0, 'S', true, true, 10);
INSERT INTO public.moon VALUES (20, 'Moon 20', 20, 20, 20.0, 'T', true, true, 10);
INSERT INTO public.moon VALUES (13, 'Moon 13', 13, 13, 13.0, 'M', true, true, 7);
INSERT INTO public.moon VALUES (14, 'Moon 14', 14, 14, 14.0, 'N', true, true, 7);
INSERT INTO public.moon VALUES (15, 'Moon 15', 15, 15, 15.0, 'O', true, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 1, 1, 1.1, 'A', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 2, 2, 2.2, 'B', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Planet 3', 2, 2, 2.2, 'C', true, true, 2);
INSERT INTO public.planet VALUES (4, 'Planet 4', 4, 4, 4.4, 'D', true, true, 2);
INSERT INTO public.planet VALUES (6, 'Planet 6', 6, 6, 6.6, 'F', true, true, 3);
INSERT INTO public.planet VALUES (5, 'Planet 5', 5, 5, 5.5, 'E', true, true, 3);
INSERT INTO public.planet VALUES (7, 'Planet 7', 7, 7, 7.7, 'G', true, true, 4);
INSERT INTO public.planet VALUES (8, 'Planet 8', 8, 8, 8.8, 'H', true, true, 4);
INSERT INTO public.planet VALUES (9, 'Planet 9', 9, 9, 9.9, 'I', true, true, 5);
INSERT INTO public.planet VALUES (10, 'Planet 10', 10, 10, 10.0, 'J', true, true, 5);
INSERT INTO public.planet VALUES (11, 'Planet 11', 11, 11, 11.0, 'K', true, true, 6);
INSERT INTO public.planet VALUES (12, 'Planet 12', 12, 12, 12.0, 'L', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 0, 0, 0.0, 'A', true, true, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 1, 1, 1.1, 'B', true, true, 1);
INSERT INTO public.star VALUES (3, 'Star 3', 2, 2, 2.2, 'C', true, true, 2);
INSERT INTO public.star VALUES (4, 'Star 4', 3, 3, 3.3, 'D', true, true, 2);
INSERT INTO public.star VALUES (5, 'Star 5', 4, 4, 4.4, 'E', true, true, 3);
INSERT INTO public.star VALUES (6, 'Star 6', 5, 5, 5.5, 'F', true, true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_galaxy_star_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: meteorite galaxy_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT galaxy_star_pkey PRIMARY KEY (meteorite_id);


--
-- Name: meteorite meteorite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_name_key UNIQUE (name);


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

