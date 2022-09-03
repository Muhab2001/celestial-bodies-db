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
-- Name: dwarf; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf (
    dwarf_id integer NOT NULL,
    name character varying(30) NOT NULL,
    code_name text NOT NULL
);


ALTER TABLE public.dwarf OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_dwarf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_dwarf_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_dwarf_id_seq OWNED BY public.dwarf.dwarf_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    volume numeric(10,10) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_id_seq OWNER TO freecodecamp;

--
-- Name: start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_id_seq OWNED BY public.star.star_id;


--
-- Name: dwarf dwarf_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf ALTER COLUMN dwarf_id SET DEFAULT nextval('public.dwarf_dwarf_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_id_seq'::regclass);


--
-- Data for Name: dwarf; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf VALUES (1, 'meosy', 'XLR34-42');
INSERT INTO public.dwarf VALUES (2, 'dwarfsy', 'DRFx9-6:3');
INSERT INTO public.dwarf VALUES (3, 'momom', 'HKQ2');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 250, 35, 0.3250000000, 'kfupm');
INSERT INTO public.galaxy VALUES (2, 122, 20, 0.3200000000, 'Me');
INSERT INTO public.galaxy VALUES (3, 20, 300, 0.3450000000, 'Meow');
INSERT INTO public.galaxy VALUES (4, 100, 200, 0.5000000000, 'Hello cutie universe');
INSERT INTO public.galaxy VALUES (5, 5, 4, 0.3000000000, 'Hi');
INSERT INTO public.galaxy VALUES (6, 1, 2, 0.3000000000, 'The milky way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 1, 125, 0, true, 1);
INSERT INTO public.moon VALUES ('m2', 2, 75, 10, true, 10);
INSERT INTO public.moon VALUES ('m3', 3, 25, 5, true, 11);
INSERT INTO public.moon VALUES ('m4', 4, 120, 50, true, 3);
INSERT INTO public.moon VALUES ('m5', 5, 50, 1, true, 1);
INSERT INTO public.moon VALUES ('m6', 6, 25, 500, false, 3);
INSERT INTO public.moon VALUES ('m7', 7, 10, 300, true, 4);
INSERT INTO public.moon VALUES ('m8', 8, 5, 125, false, 4);
INSERT INTO public.moon VALUES ('m9', 9, 10, 20, false, 5);
INSERT INTO public.moon VALUES ('m10', 10, 10, 3000, false, 2);
INSERT INTO public.moon VALUES ('m11', 11, 25, 425, true, 2);
INSERT INTO public.moon VALUES ('m12', 12, 10, 300, false, 4);
INSERT INTO public.moon VALUES ('m13', 13, 12, 400, true, 5);
INSERT INTO public.moon VALUES ('M14', 14, 14, 500, false, 3);
INSERT INTO public.moon VALUES ('M15', 15, 300, 15, false, 2);
INSERT INTO public.moon VALUES ('M16', 16, 200, 16, false, 3);
INSERT INTO public.moon VALUES ('M17', 17, 20, 17, true, 9);
INSERT INTO public.moon VALUES ('M18', 18, 320, 18, true, 10);
INSERT INTO public.moon VALUES ('M19', 19, 100, 14, false, 11);
INSERT INTO public.moon VALUES ('M20', 21, 10, 20, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('EARTH', 1, 125, 0, true, 1);
INSERT INTO public.planet VALUES ('JUPITER', 2, 75, 10, true, 1);
INSERT INTO public.planet VALUES ('URANUS', 3, 25, 5, true, 1);
INSERT INTO public.planet VALUES ('PLUTO', 4, 120, 50, true, 1);
INSERT INTO public.planet VALUES ('MARS', 5, 50, 1, true, 1);
INSERT INTO public.planet VALUES ('MEOW PLANET', 6, 25, 500, false, 3);
INSERT INTO public.planet VALUES ('ACTION', 7, 10, 300, true, 4);
INSERT INTO public.planet VALUES ('ZOMMORODA', 8, 5, 125, false, 4);
INSERT INTO public.planet VALUES ('YAYYAY', 9, 10, 20, false, 5);
INSERT INTO public.planet VALUES ('ADVENTURE TIME', 10, 10, 3000, false, 2);
INSERT INTO public.planet VALUES ('WOHOO', 11, 25, 425, true, 2);
INSERT INTO public.planet VALUES ('YAY', 12, 10, 300, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('kfupm star', 1, 250, 35, 1);
INSERT INTO public.star VALUES ('Me star', 2, 122, 20, 2);
INSERT INTO public.star VALUES ('Meow star', 3, 20, 300, 5);
INSERT INTO public.star VALUES ('Hello cutie stars', 4, 100, 200, 5);
INSERT INTO public.star VALUES ('Hi stars', 5, 5, 4, 3);
INSERT INTO public.star VALUES ('The milky star', 6, 1, 2, 1);


--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_dwarf_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_id_seq', 6, true);


--
-- Name: dwarf dwarf_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_code_name_key UNIQUE (code_name);


--
-- Name: dwarf dwarf_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_pkey PRIMARY KEY (dwarf_id);


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
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_nearest_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nearest_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_nearest_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nearest_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

