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
    round character varying(50) NOT NULL,
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

INSERT INTO public.games VALUES (101, 2018, 'Final', 398, 399, 4, 2);
INSERT INTO public.games VALUES (102, 2018, 'Third Place', 400, 401, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Semi-Final', 399, 401, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Semi-Final', 398, 400, 1, 0);
INSERT INTO public.games VALUES (105, 2018, 'Quarter-Final', 399, 402, 3, 2);
INSERT INTO public.games VALUES (106, 2018, 'Quarter-Final', 401, 403, 2, 0);
INSERT INTO public.games VALUES (107, 2018, 'Quarter-Final', 400, 404, 2, 1);
INSERT INTO public.games VALUES (108, 2018, 'Quarter-Final', 398, 405, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 401, 406, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 403, 407, 1, 0);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 400, 408, 3, 2);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 404, 409, 2, 0);
INSERT INTO public.games VALUES (113, 2018, 'Eighth-Final', 399, 410, 2, 1);
INSERT INTO public.games VALUES (114, 2018, 'Eighth-Final', 402, 411, 2, 1);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 405, 412, 2, 1);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 398, 413, 4, 3);
INSERT INTO public.games VALUES (117, 2014, 'Final', 414, 413, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Third Place', 415, 404, 3, 0);
INSERT INTO public.games VALUES (119, 2014, 'Semi-Final', 413, 415, 1, 0);
INSERT INTO public.games VALUES (120, 2014, 'Semi-Final', 414, 404, 7, 1);
INSERT INTO public.games VALUES (121, 2014, 'Quarter-Final', 415, 416, 1, 0);
INSERT INTO public.games VALUES (122, 2014, 'Quarter-Final', 413, 400, 1, 0);
INSERT INTO public.games VALUES (123, 2014, 'Quarter-Final', 404, 406, 2, 1);
INSERT INTO public.games VALUES (124, 2014, 'Quarter-Final', 414, 398, 1, 0);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 404, 417, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 406, 405, 2, 0);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 398, 418, 2, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 414, 419, 2, 1);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 415, 409, 2, 1);
INSERT INTO public.games VALUES (130, 2014, 'Eighth-Final', 416, 420, 2, 1);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 413, 407, 1, 0);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 400, 421, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (398, 'France');
INSERT INTO public.teams VALUES (399, 'Croatia');
INSERT INTO public.teams VALUES (400, 'Belgium');
INSERT INTO public.teams VALUES (401, 'England');
INSERT INTO public.teams VALUES (402, 'Russia');
INSERT INTO public.teams VALUES (403, 'Sweden');
INSERT INTO public.teams VALUES (404, 'Brazil');
INSERT INTO public.teams VALUES (405, 'Uruguay');
INSERT INTO public.teams VALUES (406, 'Colombia');
INSERT INTO public.teams VALUES (407, 'Switzerland');
INSERT INTO public.teams VALUES (408, 'Japan');
INSERT INTO public.teams VALUES (409, 'Mexico');
INSERT INTO public.teams VALUES (410, 'Denmark');
INSERT INTO public.teams VALUES (411, 'Spain');
INSERT INTO public.teams VALUES (412, 'Portugal');
INSERT INTO public.teams VALUES (413, 'Argentina');
INSERT INTO public.teams VALUES (414, 'Germany');
INSERT INTO public.teams VALUES (415, 'Netherlands');
INSERT INTO public.teams VALUES (416, 'Costa Rica');
INSERT INTO public.teams VALUES (417, 'Chile');
INSERT INTO public.teams VALUES (418, 'Nigeria');
INSERT INTO public.teams VALUES (419, 'Algeria');
INSERT INTO public.teams VALUES (420, 'Greece');
INSERT INTO public.teams VALUES (421, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 132, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 421, true);


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

