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
    name character varying(30) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', NULL, NULL, 1000, 1000, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', NULL, NULL, 1000, 1000, false, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', NULL, NULL, 1000, 1000, false, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', NULL, NULL, 1000, 1000, true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', NULL, NULL, 1000, 1000, true, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', NULL, NULL, 1000, 1000, true, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon_2', NULL, NULL, 1000, 1000, false, true, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon_3', NULL, NULL, 1000, 1000, false, false, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon_4', NULL, NULL, 1000, 1000, true, false, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moon_5', NULL, NULL, 1000, 1000, true, false, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moon_6', NULL, NULL, 1000, 1000, true, true, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moon_7', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon_8', NULL, NULL, 1000, 1000, true, true, NULL, 2);
INSERT INTO public.moon VALUES (9, 'moon_9', NULL, NULL, 1000, 1000, true, true, NULL, 3);
INSERT INTO public.moon VALUES (10, 'moon_10', NULL, NULL, 1000, 1000, true, true, NULL, 4);
INSERT INTO public.moon VALUES (11, 'moon_11', NULL, NULL, 1000, 1000, true, true, NULL, 5);
INSERT INTO public.moon VALUES (12, 'moon_12', NULL, NULL, 1000, 1000, true, true, NULL, 6);
INSERT INTO public.moon VALUES (13, 'moon_13', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon_14', NULL, NULL, 1000, 1000, true, true, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon_15', NULL, NULL, 1000, 1000, true, true, NULL, 3);
INSERT INTO public.moon VALUES (16, 'moon_16', NULL, NULL, 1000, 1000, true, true, NULL, 4);
INSERT INTO public.moon VALUES (17, 'moon_17', NULL, NULL, 1000, 1000, true, true, NULL, 5);
INSERT INTO public.moon VALUES (18, 'moon_18', NULL, NULL, 1000, 1000, true, true, NULL, 6);
INSERT INTO public.moon VALUES (19, 'moon_19', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.moon VALUES (20, 'moon_20', NULL, NULL, 1000, 1000, true, true, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet_2', NULL, NULL, 1000, 1000, false, true, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet_3', NULL, NULL, 1000, 1000, false, false, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet_4', NULL, NULL, 1000, 1000, true, false, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet_5', NULL, NULL, 1000, 1000, true, false, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planet_6', NULL, NULL, 1000, 1000, true, true, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet_7', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet_8', NULL, NULL, 1000, 1000, true, true, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planet_9', NULL, NULL, 1000, 1000, true, true, NULL, 3);
INSERT INTO public.planet VALUES (10, 'planet_10', NULL, NULL, 1000, 1000, true, true, NULL, 4);
INSERT INTO public.planet VALUES (11, 'planet_11', NULL, NULL, 1000, 1000, true, true, NULL, 5);
INSERT INTO public.planet VALUES (12, 'planet_12', NULL, NULL, 1000, 1000, true, true, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.star VALUES (2, 'star_2', NULL, NULL, 1000, 1000, false, true, NULL, 2);
INSERT INTO public.star VALUES (3, 'star_3', NULL, NULL, 1000, 1000, false, false, NULL, 3);
INSERT INTO public.star VALUES (4, 'star_4', NULL, NULL, 1000, 1000, true, false, NULL, 4);
INSERT INTO public.star VALUES (5, 'star_5', NULL, NULL, 1000, 1000, true, false, NULL, 5);
INSERT INTO public.star VALUES (6, 'star_6', NULL, NULL, 1000, 1000, true, true, NULL, 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun_1', NULL, NULL, 1000, 1000, true, true, NULL, 1);
INSERT INTO public.sun VALUES (2, 'sun_2', NULL, NULL, 1000, 1000, false, true, NULL, 2);
INSERT INTO public.sun VALUES (3, 'sun_3', NULL, NULL, 1000, 1000, false, false, NULL, 3);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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
-- Name: sun sun_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

