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
-- Name: comp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comp (
    comp_id integer NOT NULL,
    name character varying NOT NULL,
    color character varying
);


ALTER TABLE public.comp OWNER TO freecodecamp;

--
-- Name: comp_a_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comp_a_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comp_a_seq OWNER TO freecodecamp;

--
-- Name: comp_a_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comp_a_seq OWNED BY public.comp.comp_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_light_years numeric,
    description text
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_km numeric,
    description text,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_km numeric,
    terrestrial boolean,
    extrasolar boolean,
    description text,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_thousands_of_km numeric,
    description text,
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
-- Name: comp comp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comp ALTER COLUMN comp_id SET DEFAULT nextval('public.comp_a_seq'::regclass);


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
-- Data for Name: comp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comp VALUES (1, 'Leaf', 'Green');
INSERT INTO public.comp VALUES (2, 'Blood', 'Red');
INSERT INTO public.comp VALUES (3, 'Water', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 105700, 'The galaxy in which the Solay System resides.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 10010, 220000, 'A barred spiral galaxy which is the nearest to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 1101, 14000, 'A satllite galaxy of the Milky Way and fourth largest in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Little Sombrero Galaxy', 11500, 60000, 'A spiral galaxy about Forty Million Light Years away located in the constellation Pegasus');
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 13280, 52962, 'An isolated spiral galaxy in the northern constellation of Coma Berenices. A dark band of dust partially covering its bright nucleus gives it its name');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 400, 60000, 'An interacting garand design spiral galaxy that lies between 23 and 31 million light years away');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 4503, 3474, 'The GOAT. The O.G. The best of the best. Earths one and only moon. Fifth largest satellite in the Solar System and bigger than Mercury, Pluto or any of the other dwarf planets.', 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 3474, 12, 'One of Mars moons but this shit doesnt deserve to be called a moon. Basically a glorified asteroid at that size. Name means Dread which is ironic af cause aint nobody shaking at the sight of this pebble', 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 4503, 22, 'The other of Mars moons. Bigger than its twin but not by much. How did the planet named after the god of war get saddled with these sorry ass excuses for moons. This ones name means Fear as well. So much hype for bodies that together arent even as long as Lagos.', 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4503, 5268, 'A moon of Jupiter and the largest satellite to orbit a planet in the Solar System, this juggernaut takes after its parent body, being Optimus Maximus. Also named after the mythological cupbearer of Jupiter who may or may not have had his cheeks clapped by the sky god. Youll have to google that yourselves', 5);
INSERT INTO public.moon VALUES (5, 'Titan', 4503, 5194, 'Second largest moon inthe Solar System and largest moo Saturn. The sky gods namesake may rule over the planets, but his father isnt far behind, boasting this Titanic planetoidtoid as a satellite', 6);
INSERT INTO public.moon VALUES (6, 'Calllisto', 4503, 4820, 'The Bear Lady', 5);
INSERT INTO public.moon VALUES (7, 'Io', 4503, 3643, 'Third largest moon of Jupiter and the location of the battle between Saitama and Garou. Had its entire surface flipped over by Saitamas Serious Table Flip. Was the place Saitama stood on when obliterating Jupiters atmosphere with his Serious Sneeze.', 5);
INSERT INTO public.moon VALUES (8, 'Europa', 4503, 3121, 'Moon of Jupiter. Smallest of its four galilean moons', 5);
INSERT INTO public.moon VALUES (9, 'Jupiter LXI', 4503, 2, 'Painfully tiny', 5);
INSERT INTO public.moon VALUES (10, 'Metis', 4503, 43, 'Inner Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (11, 'Thebe', 4503, 98, 'Inner Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (12, 'Andrastea', 4503, 16, 'Inner Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (13, 'Amalthea', 4503, 167, 'Inner Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (14, 'Themisto', 4503, 9, 'Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (15, 'Leda', 4503, 22, 'Himalian Group Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (16, 'Ersa', 4503, 3, 'Himalian Group Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (17, 'Himalia', 4503, 139, 'Himalian Group Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (18, 'Pandia', 4503, 3, 'Himalian Group Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (19, 'Lysithea', 4503, 42, 'Himalian Group Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (20, 'Dia', 4503, 4, 'Himalian Group Moon of Jupiter', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4503, 4879, true, false, 'First planet from the Sun and smalllest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4503, 12104, true, false, 'Second planet from the Sun and hottest planet in the Solar System. Similar in size to Earth.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4543, 12742, true, false, 'Third planet from the Sun andfFifth largest in the Solar System. Only planet confirmed to have liquid water and life', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4603, 6779, true, false, 'Fourth planet from the Sun and last of the terrestrial planets. Possible candidate for alien life.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4603, 139820, false, false, 'Fifth planet from the Sun and largest planet in the Solar System. Had its atmosphere stripped away by Saitama during his battle with Garou.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4503, 116460, false, false, 'Sixth planet from the Sun and second largest in the Solar System. Possesses large rings made of ice and dust', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4503, 50724, false, false, 'Seventh planet from the Sun and third largest planet in the Solar System. Is an icy blue color and appears to lie on its side', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4503, 49244, false, false, 'Eighth planet from the Sun and fourth largest in the Solar System. Possesses a deeper blue color than its twin Uranus. Rumored to have rains of diamond.', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4606, 2376, true, false, 'Dwarf planet outside the orbit Neptune and ninth largest body in the Solar System. Not considered to be a true planet, but I have to finish this table somehow.', 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri B', NULL, NULL, true, true, 'Closest exoplanet to the Solar System, orbiting the star Proxima Centauri. Much is unknown about it.', 2);
INSERT INTO public.planet VALUES (11, 'KELT-9b', NULL, 270380, false, true, 'An enormous gas giant 2.8 times the mass of Jupiter, orbiting the KELT-9 star. Currently the hottest known exoplanet.', 7);
INSERT INTO public.planet VALUES (12, 'Ross 128 b', NULL, 10205, true, true, 'Earth sized exoplanet orbiting the red dwarf Ross 128. Possible candidate for habitability.', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603, 13927, 'The star at the center of the Solar System and the largest object in it.', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4853, 214, 'A small low-mass star located about 4 light years away from the Sun. The closest star', 1);
INSERT INTO public.star VALUES (3, 'Vega', 455, 3286, 'The brightest star in the Lyra Constellation. 25 light years away from the Sun.', 1);
INSERT INTO public.star VALUES (4, 'AE Andromeda', NULL, 76527, 'A luminous blue variable star found in the Andromeda Galaxy', 2);
INSERT INTO public.star VALUES (5, 'Stephenson 2-18', 17, 2991500, 'A red supergiant thought to be the largest known star', 1);
INSERT INTO public.star VALUES (6, 'UY Scuti', NULL, 2376500, 'An extreme red hypergiant in the constellation Scutum. One of the largest known stars', 1);
INSERT INTO public.star VALUES (7, 'KELT-9', 300, NULL, 'Star which KELT-9b orbits around.', 1);
INSERT INTO public.star VALUES (8, 'Ross 128', 9450, 273, 'Red dwarf in the Virgo constellation', 1);


--
-- Name: comp_a_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comp_a_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: comp comp_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comp
    ADD CONSTRAINT comp_name_key UNIQUE (name);


--
-- Name: comp comp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comp
    ADD CONSTRAINT comp_pkey PRIMARY KEY (comp_id);


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

