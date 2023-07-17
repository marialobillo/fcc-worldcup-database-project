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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(250) NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 49, 50, 4, 2018, 'Final', 2);
INSERT INTO public.games VALUES (2, 51, 52, 2, 2018, 'Third Place', 0);
INSERT INTO public.games VALUES (3, 50, 52, 2, 2018, 'Semi-Final', 1);
INSERT INTO public.games VALUES (4, 49, 51, 1, 2018, 'Semi-Final', 0);
INSERT INTO public.games VALUES (5, 50, 53, 3, 2018, 'Quarter-Final', 2);
INSERT INTO public.games VALUES (6, 52, 54, 2, 2018, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (7, 51, 55, 2, 2018, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (8, 49, 56, 2, 2018, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (9, 52, 57, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (10, 54, 58, 1, 2018, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (11, 51, 59, 3, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (12, 55, 60, 2, 2018, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (13, 50, 61, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (14, 53, 62, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (15, 56, 63, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (16, 49, 64, 4, 2018, 'Eighth-Final', 3);
INSERT INTO public.games VALUES (17, 65, 64, 1, 2014, 'Final', 0);
INSERT INTO public.games VALUES (18, 66, 55, 3, 2014, 'Third Place', 0);
INSERT INTO public.games VALUES (19, 64, 66, 1, 2014, 'Semi-Final', 0);
INSERT INTO public.games VALUES (20, 65, 55, 7, 2014, 'Semi-Final', 1);
INSERT INTO public.games VALUES (21, 66, 67, 1, 2014, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (22, 64, 51, 1, 2014, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (23, 55, 57, 2, 2014, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (24, 65, 49, 1, 2014, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (25, 55, 68, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (26, 57, 56, 2, 2014, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (27, 49, 69, 2, 2014, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (28, 65, 70, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (29, 66, 60, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (30, 67, 71, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (31, 64, 58, 1, 2014, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (32, 51, 72, 2, 2014, 'Eighth-Final', 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (49, 'France');
INSERT INTO public.teams VALUES (50, 'Croatia');
INSERT INTO public.teams VALUES (51, 'Belgium');
INSERT INTO public.teams VALUES (52, 'England');
INSERT INTO public.teams VALUES (53, 'Russia');
INSERT INTO public.teams VALUES (54, 'Sweden');
INSERT INTO public.teams VALUES (55, 'Brazil');
INSERT INTO public.teams VALUES (56, 'Uruguay');
INSERT INTO public.teams VALUES (57, 'Colombia');
INSERT INTO public.teams VALUES (58, 'Switzerland');
INSERT INTO public.teams VALUES (59, 'Japan');
INSERT INTO public.teams VALUES (60, 'Mexico');
INSERT INTO public.teams VALUES (61, 'Denmark');
INSERT INTO public.teams VALUES (62, 'Spain');
INSERT INTO public.teams VALUES (63, 'Portugal');
INSERT INTO public.teams VALUES (64, 'Argentina');
INSERT INTO public.teams VALUES (65, 'Germany');
INSERT INTO public.teams VALUES (66, 'Netherlands');
INSERT INTO public.teams VALUES (67, 'Costa Rica');
INSERT INTO public.teams VALUES (68, 'Chile');
INSERT INTO public.teams VALUES (69, 'Nigeria');
INSERT INTO public.teams VALUES (70, 'Algeria');
INSERT INTO public.teams VALUES (71, 'Greece');
INSERT INTO public.teams VALUES (72, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 72, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_game_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_game_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_game_winne; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_game_winne FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

