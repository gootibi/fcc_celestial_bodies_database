--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    galaxy_description text,
    galaxy_types character varying(30)
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
    name character varying(40),
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,2),
    moon_description text,
    moon_is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_monn_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_monn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_monn_id_seq OWNER TO freecodecamp;

--
-- Name: moon_monn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_monn_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other_celestial_objects; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_celestial_objects (
    name character varying(40),
    other_celestial_objects_id integer NOT NULL,
    description text,
    is_spherical boolean,
    object_types character varying(30),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.other_celestial_objects OWNER TO freecodecamp;

--
-- Name: other_celestial_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_celestial_objects_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_celestial_objects_object_id_seq OWNER TO freecodecamp;

--
-- Name: other_celestial_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_celestial_objects_object_id_seq OWNED BY public.other_celestial_objects.other_celestial_objects_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    planet_description text,
    planat_has_life boolean,
    planet_is_spherical boolean,
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
    name character varying(40),
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,2),
    star_description text,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_monn_id_seq'::regclass);


--
-- Name: other_celestial_objects other_celestial_objects_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_celestial_objects ALTER COLUMN other_celestial_objects_id SET DEFAULT nextval('public.other_celestial_objects_object_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 3, 'A key distinguishing feature of globular clusters in the Galaxy is their uniformly old age. Determined by comparing the stellar population of globular clusters with stellar evolutionary models, the ages of all those so far measured range from 11 billion to 13 billion years.', ' globular clusters');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 5, 'Andromeda Galaxy, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', ' globular clusters');
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 4, 'Cygnus A, most powerful cosmic source of radio waves known, lying in the northern constellation Cygnus about 500,000,000 light-years (4.8 × 1021 km) from Earth.', 'open clusters');
INSERT INTO public.galaxy VALUES (4, 'M87', 7, 'M87, giant elliptical galaxy in the constellation Virgo whose nucleus contains a black hole, the first ever to be directly imaged.', 'open clusters');
INSERT INTO public.galaxy VALUES (5, 'Magellanic Cloud', 7, 'Magellanic Cloud, either of two satellite galaxies of the Milky Way Galaxy, the vast star system of which Earth is a minor component.', 'open clusters');
INSERT INTO public.galaxy VALUES (6, 'Maffei 1 and 2', 7, 'Maffei 1 and 2, two galaxies relatively close to the Milky Way Galaxy but unobserved until the late 1960s', 'open clusters');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titania', 5, 65.23, 'Not description', true, 2);
INSERT INTO public.moon VALUES (2, 'Oberon', 8, 45.87, 'Not description', true, 4);
INSERT INTO public.moon VALUES (3, 'Umbriel', 7, 75.36, 'Not description', true, 7);
INSERT INTO public.moon VALUES (4, 'Miranda', 7, 96.87, 'Not description', true, 11);
INSERT INTO public.moon VALUES (5, 'Ariel', 4, 25.36, 'Not description', true, 8);
INSERT INTO public.moon VALUES (6, 'Sycorax', 7, 42.86, 'Not description', true, 12);
INSERT INTO public.moon VALUES (7, 'Puck', 5, 24.35, 'Not description', true, 12);
INSERT INTO public.moon VALUES (8, 'Borium', 7, 95.72, 'Not description', true, 3);
INSERT INTO public.moon VALUES (9, 'Lucka', 8, 47.36, 'Not description', true, 5);
INSERT INTO public.moon VALUES (10, 'Furia', 8, 32.87, 'Not description', true, 12);
INSERT INTO public.moon VALUES (11, 'Baldo', 3, 12.57, 'Not description', true, 9);
INSERT INTO public.moon VALUES (12, 'Borka', 5, 72.84, 'Not description', true, 6);
INSERT INTO public.moon VALUES (13, 'Desdemona', 5, 45.87, 'Not description', true, 8);
INSERT INTO public.moon VALUES (14, 'Bianca', 4, 24.37, 'Not description', true, 7);
INSERT INTO public.moon VALUES (15, 'Prospero', 4, 61.94, 'Not description', true, 3);
INSERT INTO public.moon VALUES (16, 'Setebos', 4, 43.79, 'Not description', true, 6);
INSERT INTO public.moon VALUES (17, 'Ophelia', 4, 18.49, 'Not description', true, 9);
INSERT INTO public.moon VALUES (18, 'Caliban', 4, 34.68, 'Not description', true, 10);
INSERT INTO public.moon VALUES (19, 'Cordelia', 4, 91.62, 'Not description', true, 3);
INSERT INTO public.moon VALUES (20, 'Mab', 4, 74.81, 'Not description', true, 10);


--
-- Data for Name: other_celestial_objects; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_celestial_objects VALUES ('G54', 1, 'Not have info...', false, 'unknown', 3);
INSERT INTO public.other_celestial_objects VALUES ('Bogar54', 2, 'Not have info...', false, 'unknown', 2);
INSERT INTO public.other_celestial_objects VALUES ('Locolus F187', 3, 'Not have info...', false, 'unknown', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sigma 32', 2, 'Not description.', false, true, 3);
INSERT INTO public.planet VALUES (2, 'Figma M34', 4, 'Not description.', false, true, 3);
INSERT INTO public.planet VALUES (3, 'Derby', 3, 'Not description.', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Flow', 2, 'Not description.', false, true, 6);
INSERT INTO public.planet VALUES (5, 'Stocker G65', 4, 'Not description.', false, true, 5);
INSERT INTO public.planet VALUES (6, 'FOLK432', 6, 'Not description.', false, true, 3);
INSERT INTO public.planet VALUES (7, 'ABODE', 3, 'Not description.', false, true, 2);
INSERT INTO public.planet VALUES (8, 'Dorian 1', 3, 'Not description.', false, true, 3);
INSERT INTO public.planet VALUES (9, 'Dorian 2', 2, 'Not description.', false, true, 3);
INSERT INTO public.planet VALUES (10, 'Six G', 2, 'Not description.', false, true, 4);
INSERT INTO public.planet VALUES (11, 'Six F', 3, 'Not description.', false, true, 4);
INSERT INTO public.planet VALUES (12, 'Six Z', 2, 'Not description.', false, true, 4);
INSERT INTO public.planet VALUES (13, 'Mirac', 2, 'Not description.', false, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 22, 3.14, 'Not have description', 1);
INSERT INTO public.star VALUES (2, 'Canopus', 12, 6.45, 'Not have description', 1);
INSERT INTO public.star VALUES (3, 'Vega', 10, 7.87, 'Not have description', 1);
INSERT INTO public.star VALUES (4, 'Rigel', 9, 9.85, 'Not have description', 1);
INSERT INTO public.star VALUES (5, 'Procyon', 3, 5.96, 'Not have description', 1);
INSERT INTO public.star VALUES (6, 'Achernar', 7, 2.23, 'Not have description', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_monn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_monn_id_seq', 20, true);


--
-- Name: other_celestial_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_celestial_objects_object_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


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
-- Name: other_celestial_objects other_celestial_objects_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_celestial_objects
    ADD CONSTRAINT other_celestial_objects_name_key UNIQUE (name);


--
-- Name: other_celestial_objects other_celestial_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_celestial_objects
    ADD CONSTRAINT other_celestial_objects_pkey PRIMARY KEY (other_celestial_objects_id);


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
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: other_celestial_objects other_celestial_objects_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_celestial_objects
    ADD CONSTRAINT other_celestial_objects_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

