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
    year integer NOT NULL,
    round character varying NOT NULL,
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
    name character(150) NOT NULL
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

INSERT INTO public.games VALUES (257, 2018, 'Final', 761, 762, 4, 2);
INSERT INTO public.games VALUES (258, 2018, 'Third Place', 763, 764, 2, 0);
INSERT INTO public.games VALUES (259, 2018, 'Semi-Final', 762, 764, 2, 1);
INSERT INTO public.games VALUES (260, 2018, 'Semi-Final', 761, 763, 1, 0);
INSERT INTO public.games VALUES (261, 2018, 'Quarter-Final', 762, 765, 3, 2);
INSERT INTO public.games VALUES (262, 2018, 'Quarter-Final', 764, 766, 2, 0);
INSERT INTO public.games VALUES (263, 2018, 'Quarter-Final', 763, 767, 2, 1);
INSERT INTO public.games VALUES (264, 2018, 'Quarter-Final', 761, 768, 2, 0);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 764, 769, 2, 1);
INSERT INTO public.games VALUES (266, 2018, 'Eighth-Final', 766, 770, 1, 0);
INSERT INTO public.games VALUES (267, 2018, 'Eighth-Final', 763, 771, 3, 2);
INSERT INTO public.games VALUES (268, 2018, 'Eighth-Final', 767, 772, 2, 0);
INSERT INTO public.games VALUES (269, 2018, 'Eighth-Final', 762, 773, 2, 1);
INSERT INTO public.games VALUES (270, 2018, 'Eighth-Final', 765, 774, 2, 1);
INSERT INTO public.games VALUES (271, 2018, 'Eighth-Final', 768, 775, 2, 1);
INSERT INTO public.games VALUES (272, 2018, 'Eighth-Final', 761, 776, 4, 3);
INSERT INTO public.games VALUES (273, 2014, 'Final', 777, 776, 1, 0);
INSERT INTO public.games VALUES (274, 2014, 'Third Place', 778, 767, 3, 0);
INSERT INTO public.games VALUES (275, 2014, 'Semi-Final', 776, 778, 1, 0);
INSERT INTO public.games VALUES (276, 2014, 'Semi-Final', 777, 767, 7, 1);
INSERT INTO public.games VALUES (277, 2014, 'Quarter-Final', 778, 779, 1, 0);
INSERT INTO public.games VALUES (278, 2014, 'Quarter-Final', 776, 763, 1, 0);
INSERT INTO public.games VALUES (279, 2014, 'Quarter-Final', 767, 769, 2, 1);
INSERT INTO public.games VALUES (280, 2014, 'Quarter-Final', 777, 761, 1, 0);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 767, 780, 2, 1);
INSERT INTO public.games VALUES (282, 2014, 'Eighth-Final', 769, 768, 2, 0);
INSERT INTO public.games VALUES (283, 2014, 'Eighth-Final', 761, 781, 2, 0);
INSERT INTO public.games VALUES (284, 2014, 'Eighth-Final', 777, 782, 2, 1);
INSERT INTO public.games VALUES (285, 2014, 'Eighth-Final', 778, 772, 2, 1);
INSERT INTO public.games VALUES (286, 2014, 'Eighth-Final', 779, 783, 2, 1);
INSERT INTO public.games VALUES (287, 2014, 'Eighth-Final', 776, 770, 1, 0);
INSERT INTO public.games VALUES (288, 2014, 'Eighth-Final', 763, 784, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (761, 'France                                                                                                                                                ');
INSERT INTO public.teams VALUES (762, 'Croatia                                                                                                                                               ');
INSERT INTO public.teams VALUES (763, 'Belgium                                                                                                                                               ');
INSERT INTO public.teams VALUES (764, 'England                                                                                                                                               ');
INSERT INTO public.teams VALUES (765, 'Russia                                                                                                                                                ');
INSERT INTO public.teams VALUES (766, 'Sweden                                                                                                                                                ');
INSERT INTO public.teams VALUES (767, 'Brazil                                                                                                                                                ');
INSERT INTO public.teams VALUES (768, 'Uruguay                                                                                                                                               ');
INSERT INTO public.teams VALUES (769, 'Colombia                                                                                                                                              ');
INSERT INTO public.teams VALUES (770, 'Switzerland                                                                                                                                           ');
INSERT INTO public.teams VALUES (771, 'Japan                                                                                                                                                 ');
INSERT INTO public.teams VALUES (772, 'Mexico                                                                                                                                                ');
INSERT INTO public.teams VALUES (773, 'Denmark                                                                                                                                               ');
INSERT INTO public.teams VALUES (774, 'Spain                                                                                                                                                 ');
INSERT INTO public.teams VALUES (775, 'Portugal                                                                                                                                              ');
INSERT INTO public.teams VALUES (776, 'Argentina                                                                                                                                             ');
INSERT INTO public.teams VALUES (777, 'Germany                                                                                                                                               ');
INSERT INTO public.teams VALUES (778, 'Netherlands                                                                                                                                           ');
INSERT INTO public.teams VALUES (779, 'Costa Rica                                                                                                                                            ');
INSERT INTO public.teams VALUES (780, 'Chile                                                                                                                                                 ');
INSERT INTO public.teams VALUES (781, 'Nigeria                                                                                                                                               ');
INSERT INTO public.teams VALUES (782, 'Algeria                                                                                                                                               ');
INSERT INTO public.teams VALUES (783, 'Greece                                                                                                                                                ');
INSERT INTO public.teams VALUES (784, 'United States                                                                                                                                         ');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 288, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 784, true);


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

