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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
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

INSERT INTO public.games VALUES (97, 2018, 'Final', 476, 477, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 478, 479, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 477, 479, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 476, 478, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 477, 480, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 479, 481, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 478, 482, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 476, 483, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 479, 484, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 481, 485, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 478, 486, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 482, 487, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 477, 488, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 480, 489, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 483, 490, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 476, 491, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 492, 491, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 493, 482, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 491, 493, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 492, 482, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 493, 494, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 491, 478, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 482, 484, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 492, 476, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 482, 495, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 484, 483, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 476, 496, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 492, 497, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 493, 487, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 494, 498, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 491, 485, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 478, 499, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (476, 'France');
INSERT INTO public.teams VALUES (477, 'Croatia');
INSERT INTO public.teams VALUES (478, 'Belgium');
INSERT INTO public.teams VALUES (479, 'England');
INSERT INTO public.teams VALUES (480, 'Russia');
INSERT INTO public.teams VALUES (481, 'Sweden');
INSERT INTO public.teams VALUES (482, 'Brazil');
INSERT INTO public.teams VALUES (483, 'Uruguay');
INSERT INTO public.teams VALUES (484, 'Colombia');
INSERT INTO public.teams VALUES (485, 'Switzerland');
INSERT INTO public.teams VALUES (486, 'Japan');
INSERT INTO public.teams VALUES (487, 'Mexico');
INSERT INTO public.teams VALUES (488, 'Denmark');
INSERT INTO public.teams VALUES (489, 'Spain');
INSERT INTO public.teams VALUES (490, 'Portugal');
INSERT INTO public.teams VALUES (491, 'Argentina');
INSERT INTO public.teams VALUES (492, 'Germany');
INSERT INTO public.teams VALUES (493, 'Netherlands');
INSERT INTO public.teams VALUES (494, 'Costa Rica');
INSERT INTO public.teams VALUES (495, 'Chile');
INSERT INTO public.teams VALUES (496, 'Nigeria');
INSERT INTO public.teams VALUES (497, 'Algeria');
INSERT INTO public.teams VALUES (498, 'Greece');
INSERT INTO public.teams VALUES (499, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 499, true);


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

