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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    meaning text,
    is_visible_to_naked_eye boolean,
    constellation_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter_in_km integer,
    atmospher boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_moon boolean,
    masse integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(255) NOT NULL,
    distance_in_light_years numeric,
    brightness_of_star numeric,
    galaxy_id integer,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aquarius', 1);
INSERT INTO public.constellation VALUES (2, 'Aries', 2);
INSERT INTO public.constellation VALUES (3, 'Bootes', 3);
INSERT INTO public.constellation VALUES (4, 'Capricornus', 4);
INSERT INTO public.constellation VALUES (5, 'Centaurus', 5);
INSERT INTO public.constellation VALUES (6, 'Cetus', 9);
INSERT INTO public.constellation VALUES (7, 'Corma Berenices', 6);
INSERT INTO public.constellation VALUES (8, 'Leo', 7);
INSERT INTO public.constellation VALUES (9, 'Ophiuchus', 12);
INSERT INTO public.constellation VALUES (10, 'Pegasus', 10);
INSERT INTO public.constellation VALUES (11, 'Sagittarius', 11);
INSERT INTO public.constellation VALUES (12, 'Taurus', 8);
INSERT INTO public.constellation VALUES (13, 'Vingo', 13);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Backward Galaxy', 'it seems to rotate in the opposite direction to what it should according to its shape', false, 5);
INSERT INTO public.galaxy VALUES (2, 'Centaurus A', NULL, true, 5);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', NULL, false, 7);
INSERT INTO public.galaxy VALUES (4, 'Coma Pinwheel Galaxy', NULL, false, 7);
INSERT INTO public.galaxy VALUES (5, 'Malin1', NULL, false, 7);
INSERT INTO public.galaxy VALUES (6, 'Mices Galaxies', NULL, false, 7);
INSERT INTO public.galaxy VALUES (7, 'Needle Galaxy', NULL, false, 7);
INSERT INTO public.galaxy VALUES (8, 'Butterfly Galaxy', NULL, false, 13);
INSERT INTO public.galaxy VALUES (9, 'Sombrero Galaxy', NULL, false, 13);
INSERT INTO public.galaxy VALUES (10, 'Little Sombrero Galaxy', NULL, false, 10);
INSERT INTO public.galaxy VALUES (11, 'Milky Way', NULL, true, 11);
INSERT INTO public.galaxy VALUES (12, 'Wolf Lundmark Melotte', NULL, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', 3476, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 23, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 13, false, 3);
INSERT INTO public.moon VALUES (4, 'Lo', 3630, true, 3);
INSERT INTO public.moon VALUES (5, 'Europe', 3138, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5262, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4800, true, 5);
INSERT INTO public.moon VALUES (8, 'Himalaya', 170, false, 5);
INSERT INTO public.moon VALUES (9, 'Encelade', 502, false, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 1048, true, 6);
INSERT INTO public.moon VALUES (11, 'Dioné', 1120, true, 6);
INSERT INTO public.moon VALUES (12, 'Rhéa', 1530, true, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 485, false, 7);
INSERT INTO public.moon VALUES (14, 'Arielle', 1160, false, 7);
INSERT INTO public.moon VALUES (15, 'Ombriel', 1190, false, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 2720, false, 8);
INSERT INTO public.moon VALUES (17, 'Charon', 1200, false, 12);
INSERT INTO public.moon VALUES (18, 'Styx', 20, false, 12);
INSERT INTO public.moon VALUES (19, 'Namaka', 400, false, 9);
INSERT INTO public.moon VALUES (20, 'Larissa', 400, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercure', false, 0, 13);
INSERT INTO public.planet VALUES (2, 'Venus', false, 1, 7);
INSERT INTO public.planet VALUES (3, 'Terre', true, 1, 5);
INSERT INTO public.planet VALUES (4, 'Mars', true, 0, 8);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 318, 9);
INSERT INTO public.planet VALUES (6, 'Saturne', true, 95, 4);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 15, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 17, 1);
INSERT INTO public.planet VALUES (9, 'Hauméa', true, 0, 11);
INSERT INTO public.planet VALUES (10, 'Cérés', false, 0, 3);
INSERT INTO public.planet VALUES (11, 'Orcurus', true, 0, 7);
INSERT INTO public.planet VALUES (12, 'Pluton', true, 0, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sadalsuud', 612.00, 2.90, 11, 1);
INSERT INTO public.star VALUES ('Hamal', 66.00, 2.01, 11, 2);
INSERT INTO public.star VALUES ('Arcturus', 37.00, 0.05, 11, 3);
INSERT INTO public.star VALUES ('Demet Algedi', 39.00, 2.85, 11, 4);
INSERT INTO public.star VALUES ('Rigil Kentaurus', 4.36, 0.01, 11, 5);
INSERT INTO public.star VALUES ('Beta Comae Berenices', 30.00, 4.26, 11, 6);
INSERT INTO public.star VALUES ('Regulus', 77.00, 1.36, 11, 7);
INSERT INTO public.star VALUES ('Aldebaran', 65.23, 0.85, 11, 8);
INSERT INTO public.star VALUES ('Diphda', 96.22, 2.04, 11, 9);
INSERT INTO public.star VALUES ('Enif', 688.20, 2.40, 11, 10);
INSERT INTO public.star VALUES ('Kaus Australis', 143.20, 1.85, 11, 11);
INSERT INTO public.star VALUES ('Rasalhague', 48.60, 2.08, 11, 12);
INSERT INTO public.star VALUES ('Spica', 260.90, 1.04, 11, 13);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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

