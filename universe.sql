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
    name character varying(50) NOT NULL,
    size integer,
    age_in_billions_of_years integer,
    has_black_hole boolean,
    decription text
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
-- Name: mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mission (
    mission_id integer NOT NULL,
    planet_id integer,
    name character varying(38) NOT NULL,
    decription text
);


ALTER TABLE public.mission OWNER TO freecodecamp;

--
-- Name: mission_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mission_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mission_mission_id_seq OWNER TO freecodecamp;

--
-- Name: mission_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mission_mission_id_seq OWNED BY public.mission.mission_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    distance_from_planet numeric(10,2),
    is_spherical boolean,
    has_water boolean,
    decription text
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
    name character varying(50) NOT NULL,
    star_id integer,
    radius numeric(8,2),
    has_atmosphere boolean,
    is_habitable boolean,
    decription text
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
    name character varying(50) NOT NULL,
    galaxy_id integer,
    mass numeric(10,2),
    temperature integer,
    is_main_sequence boolean,
    decription text
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
-- Name: mission mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission ALTER COLUMN mission_id SET DEFAULT nextval('public.mission_mission_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13, true, 'The Milky Way is a barred spiral galaxy...');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 10, false, 'Andromeda is a spiral galaxy...');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 80000, 8, false, 'The Whirlpool Galaxy is a grand-design spiral galaxy...');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 60000, 6, false, 'The Sombrero Galaxy is a lenticular galaxy...');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 70000, 5, false, 'The Pinwheel Galaxy is a face-on spiral galaxy...');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 50000, 4, false, 'The Cigar Galaxy is an irregular galaxy...');


--
-- Data for Name: mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mission VALUES (1, 2, 'Aurola', 'Create Coloni');
INSERT INTO public.mission VALUES (2, 4, 'Perseo', 'Explore');
INSERT INTO public.mission VALUES (3, 5, 'Astra', 'search for life...');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 384400.00, true, true, 'The Moon is Earth''s only natural satellite...');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 9377.00, true, false, 'Phobos is the larger and innermost moon of Mars...');
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 23460.00, true, false, 'Deimos is the smaller and outermost moon of Mars...');
INSERT INTO public.moon VALUES (4, 'Titan', 5, 1221870.00, true, true, 'Titan is the largest moon of Saturn...');
INSERT INTO public.moon VALUES (5, 'Ganymede', 6, 1070412.00, true, false, 'Ganymede is the largest moon of Jupiter...');
INSERT INTO public.moon VALUES (6, 'Europa', 6, 671034.00, true, false, 'Europa is the second smallest of Jupiter''s four Galilean moons...');
INSERT INTO public.moon VALUES (7, 'Io', 6, 421700.00, true, false, 'Io is the innermost and third-largest of Jupiter''s moons...');
INSERT INTO public.moon VALUES (8, 'Triton', 7, 354759.00, true, true, 'Triton is the largest natural satellite of Neptune...');
INSERT INTO public.moon VALUES (9, 'Charon', 8, 19591.00, true, false, 'Charon is the largest of Pluto''s moons...');
INSERT INTO public.moon VALUES (10, 'Luna', 9, 42345.00, true, false, 'Luna is an exoplanet moon...');
INSERT INTO public.moon VALUES (11, 'Pandora', 9, 16703.00, true, false, 'Pandora is an exoplanet moon...');
INSERT INTO public.moon VALUES (12, 'Endor', 10, 29574.00, true, true, 'Endor is an exoplanet moon...');
INSERT INTO public.moon VALUES (13, 'Alderaan', 11, 34789.00, true, false, 'Alderaan is an exoplanet moon...');
INSERT INTO public.moon VALUES (14, 'Hoth', 11, 45682.00, true, false, 'Hoth is an exoplanet moon...');
INSERT INTO public.moon VALUES (15, 'Mustafar', 11, 26894.00, true, false, 'Mustafar is an exoplanet moon...');
INSERT INTO public.moon VALUES (16, 'Dagobah', 11, 53215.00, true, false, 'Dagobah is an exoplanet moon...');
INSERT INTO public.moon VALUES (17, 'Kashyyyk', 11, 69453.00, true, false, 'Kashyyyk is an exoplanet moon...');
INSERT INTO public.moon VALUES (18, 'Naboo', 11, 38543.00, true, false, 'Naboo is an exoplanet moon...');
INSERT INTO public.moon VALUES (19, 'Tatooine', 11, 42567.00, true, false, 'Tatooine is an exoplanet moon...');
INSERT INTO public.moon VALUES (20, 'Coruscant', 11, 78932.00, true, false, 'Coruscant is an exoplanet moon...');
INSERT INTO public.moon VALUES (21, 'Kamino', 11, 67589.00, true, false, 'Kamino is an exoplanet moon...');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 6371.00, true, true, 'Earth is the third planet from the Sun...');
INSERT INTO public.planet VALUES (2, 'Mars', 1, 3389.00, true, false, 'Mars is the fourth planet from the Sun...');
INSERT INTO public.planet VALUES (3, 'Venus', 1, 6051.00, true, false, 'Venus is the second planet from the Sun...');
INSERT INTO public.planet VALUES (4, 'Jupiter', 2, 69911.00, true, false, 'Jupiter is the largest planet in the Solar System...');
INSERT INTO public.planet VALUES (5, 'Saturn', 2, 58232.00, true, false, 'Saturn is the sixth planet from the Sun...');
INSERT INTO public.planet VALUES (6, 'Uranus', 3, 25362.00, true, false, 'Uranus is the seventh planet from the Sun...');
INSERT INTO public.planet VALUES (7, 'Neptune', 3, 24622.00, true, false, 'Neptune is the eighth planet from the Sun...');
INSERT INTO public.planet VALUES (8, 'Mercury', 4, 2439.00, true, false, 'Mercury is the smallest planet in the Solar System...');
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 1188.00, true, false, 'Pluto is a dwarf planet in our Solar System...');
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 6, 17340.00, true, true, 'Kepler-452b is an exoplanet...');
INSERT INTO public.planet VALUES (11, 'HD 189733b', 6, 12284.00, true, false, 'HD 189733b is an exoplanet...');
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 6, 5597.00, true, true, 'TRAPPIST-1d is an exoplanet...');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1.99, 5778, true, 'The Sun is the star at the center of the Solar System...');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 2.02, 9940, true, 'Sirius is a binary star system...');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 20.00, 3500, false, 'Betelgeuse is a red supergiant star...');
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 2, 0.12, 3042, true, 'Proxima Centauri is a red dwarf star...');
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 2, 1.10, 5790, true, 'Alpha Centauri A is the primary component...');
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 2, 0.91, 5260, true, 'Alpha Centauri B is the secondary component...');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: mission_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mission_mission_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


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
-- Name: mission mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_name_key UNIQUE (name);


--
-- Name: mission mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (mission_id);


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
-- Name: mission mission_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

