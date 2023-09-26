--
-- PostgreSQL database dump
--


-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    round character varying(100) NOT NULL,
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (101, 'Final', 2018, 4, 2, 114, 116);
INSERT INTO public.games VALUES (102, 'Third Place', 2018, 2, 0, 115, 118);
INSERT INTO public.games VALUES (103, 'Semi-Final', 2018, 2, 1, 116, 118);
INSERT INTO public.games VALUES (104, 'Semi-Final', 2018, 1, 0, 114, 115);
INSERT INTO public.games VALUES (105, 'Quarter-Final', 2018, 3, 2, 116, 117);
INSERT INTO public.games VALUES (106, 'Quarter-Final', 2018, 2, 0, 118, 122);
INSERT INTO public.games VALUES (107, 'Quarter-Final', 2018, 2, 1, 115, 119);
INSERT INTO public.games VALUES (108, 'Quarter-Final', 2018, 2, 0, 114, 120);
INSERT INTO public.games VALUES (109, 'Eighth-Final', 2018, 2, 1, 118, 121);
INSERT INTO public.games VALUES (110, 'Eighth-Final', 2018, 1, 0, 122, 136);
INSERT INTO public.games VALUES (111, 'Eighth-Final', 2018, 3, 2, 115, 123);
INSERT INTO public.games VALUES (112, 'Eighth-Final', 2018, 2, 0, 119, 124);
INSERT INTO public.games VALUES (113, 'Eighth-Final', 2018, 2, 1, 116, 125);
INSERT INTO public.games VALUES (114, 'Eighth-Final', 2018, 2, 1, 117, 126);
INSERT INTO public.games VALUES (115, 'Eighth-Final', 2018, 2, 1, 120, 127);
INSERT INTO public.games VALUES (116, 'Eighth-Final', 2018, 4, 3, 114, 128);
INSERT INTO public.games VALUES (117, 'Final', 2014, 1, 0, 129, 128);
INSERT INTO public.games VALUES (118, 'Third Place', 2014, 3, 0, 130, 119);
INSERT INTO public.games VALUES (119, 'Semi-Final', 2014, 1, 0, 128, 130);
INSERT INTO public.games VALUES (120, 'Semi-Final', 2014, 7, 1, 129, 119);
INSERT INTO public.games VALUES (121, 'Quarter-Final', 2014, 1, 0, 130, 131);
INSERT INTO public.games VALUES (122, 'Quarter-Final', 2014, 1, 0, 128, 115);
INSERT INTO public.games VALUES (123, 'Quarter-Final', 2014, 2, 1, 119, 121);
INSERT INTO public.games VALUES (124, 'Quarter-Final', 2014, 1, 0, 129, 114);
INSERT INTO public.games VALUES (125, 'Eighth-Final', 2014, 2, 1, 119, 132);
INSERT INTO public.games VALUES (126, 'Eighth-Final', 2014, 2, 0, 121, 120);
INSERT INTO public.games VALUES (127, 'Eighth-Final', 2014, 2, 0, 114, 133);
INSERT INTO public.games VALUES (128, 'Eighth-Final', 2014, 2, 1, 129, 134);
INSERT INTO public.games VALUES (129, 'Eighth-Final', 2014, 2, 1, 130, 124);
INSERT INTO public.games VALUES (130, 'Eighth-Final', 2014, 2, 1, 131, 135);
INSERT INTO public.games VALUES (131, 'Eighth-Final', 2014, 1, 0, 128, 136);
INSERT INTO public.games VALUES (132, 'Eighth-Final', 2014, 2, 1, 115, 137);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (114, 'France');
INSERT INTO public.teams VALUES (115, 'Belgium');
INSERT INTO public.teams VALUES (116, 'Croatia');
INSERT INTO public.teams VALUES (117, 'Russia');
INSERT INTO public.teams VALUES (118, 'England');
INSERT INTO public.teams VALUES (119, 'Brazil');
INSERT INTO public.teams VALUES (120, 'Uruguay');
INSERT INTO public.teams VALUES (121, 'Colombia');
INSERT INTO public.teams VALUES (122, 'Sweden');
INSERT INTO public.teams VALUES (123, 'Japan');
INSERT INTO public.teams VALUES (124, 'Mexico');
INSERT INTO public.teams VALUES (125, 'Denmark');
INSERT INTO public.teams VALUES (126, 'Spain');
INSERT INTO public.teams VALUES (127, 'Portugal');
INSERT INTO public.teams VALUES (128, 'Argentina');
INSERT INTO public.teams VALUES (129, 'Germany');
INSERT INTO public.teams VALUES (130, 'Netherlands');
INSERT INTO public.teams VALUES (131, 'Costa Rica');
INSERT INTO public.teams VALUES (132, 'Chile');
INSERT INTO public.teams VALUES (133, 'Nigeria');
INSERT INTO public.teams VALUES (134, 'Algeria');
INSERT INTO public.teams VALUES (135, 'Greece');
INSERT INTO public.teams VALUES (136, 'Switzerland');
INSERT INTO public.teams VALUES (137, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 132, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 137, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

