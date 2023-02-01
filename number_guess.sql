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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_of_guesses integer,
    secret_number integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    user_id integer NOT NULL,
    games_played integer DEFAULT 0,
    best_game_guesses integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (691, 691, 11);
INSERT INTO public.games VALUES (107, 107, 11);
INSERT INTO public.games VALUES (481, 481, 12);
INSERT INTO public.games VALUES (173, 173, 12);
INSERT INTO public.games VALUES (882, 880, 11);
INSERT INTO public.games VALUES (946, 946, 11);
INSERT INTO public.games VALUES (665, 665, 11);
INSERT INTO public.games VALUES (16, 247, 6);
INSERT INTO public.games VALUES (970, 970, 13);
INSERT INTO public.games VALUES (767, 767, 13);
INSERT INTO public.games VALUES (38, 38, 14);
INSERT INTO public.games VALUES (910, 910, 14);
INSERT INTO public.games VALUES (75, 73, 13);
INSERT INTO public.games VALUES (732, 732, 13);
INSERT INTO public.games VALUES (696, 696, 13);
INSERT INTO public.games VALUES (8, 947, 3);
INSERT INTO public.games VALUES (9, 806, 6);
INSERT INTO public.games VALUES (182, 182, 15);
INSERT INTO public.games VALUES (978, 978, 15);
INSERT INTO public.games VALUES (377, 377, 16);
INSERT INTO public.games VALUES (933, 933, 16);
INSERT INTO public.games VALUES (66, 64, 15);
INSERT INTO public.games VALUES (929, 929, 15);
INSERT INTO public.games VALUES (187, 187, 15);
INSERT INTO public.games VALUES (10, 517, 17);
INSERT INTO public.games VALUES (78, 78, 18);
INSERT INTO public.games VALUES (842, 842, 18);
INSERT INTO public.games VALUES (393, 393, 19);
INSERT INTO public.games VALUES (445, 445, 19);
INSERT INTO public.games VALUES (21, 19, 18);
INSERT INTO public.games VALUES (624, 624, 18);
INSERT INTO public.games VALUES (746, 746, 18);
INSERT INTO public.games VALUES (966, 966, 20);
INSERT INTO public.games VALUES (5, 5, 20);
INSERT INTO public.games VALUES (857, 857, 21);
INSERT INTO public.games VALUES (410, 410, 21);
INSERT INTO public.games VALUES (703, 701, 20);
INSERT INTO public.games VALUES (19, 19, 20);
INSERT INTO public.games VALUES (687, 687, 20);
INSERT INTO public.games VALUES (15, 14, 22);
INSERT INTO public.games VALUES (793, 792, 22);
INSERT INTO public.games VALUES (129, 128, 23);
INSERT INTO public.games VALUES (495, 494, 23);
INSERT INTO public.games VALUES (496, 493, 22);
INSERT INTO public.games VALUES (614, 613, 22);
INSERT INTO public.games VALUES (205, 204, 22);
INSERT INTO public.games VALUES (10, 296, 24);
INSERT INTO public.games VALUES (927, 926, 25);
INSERT INTO public.games VALUES (654, 653, 25);
INSERT INTO public.games VALUES (776, 775, 26);
INSERT INTO public.games VALUES (611, 610, 26);
INSERT INTO public.games VALUES (982, 979, 25);
INSERT INTO public.games VALUES (862, 861, 25);
INSERT INTO public.games VALUES (125, 124, 25);
INSERT INTO public.games VALUES (883, 882, 27);
INSERT INTO public.games VALUES (898, 897, 27);
INSERT INTO public.games VALUES (526, 525, 28);
INSERT INTO public.games VALUES (330, 329, 28);
INSERT INTO public.games VALUES (992, 989, 27);
INSERT INTO public.games VALUES (478, 477, 27);
INSERT INTO public.games VALUES (98, 97, 27);
INSERT INTO public.games VALUES (31, 30, 29);
INSERT INTO public.games VALUES (377, 376, 29);
INSERT INTO public.games VALUES (307, 306, 30);
INSERT INTO public.games VALUES (453, 452, 30);
INSERT INTO public.games VALUES (129, 126, 29);
INSERT INTO public.games VALUES (219, 218, 29);
INSERT INTO public.games VALUES (660, 659, 29);
INSERT INTO public.games VALUES (137, 136, 31);
INSERT INTO public.games VALUES (791, 790, 31);
INSERT INTO public.games VALUES (925, 924, 32);
INSERT INTO public.games VALUES (858, 857, 32);
INSERT INTO public.games VALUES (957, 954, 31);
INSERT INTO public.games VALUES (23, 22, 31);
INSERT INTO public.games VALUES (242, 241, 31);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('rokk', 17, 2, 10);
INSERT INTO public.users VALUES ('user_1675231474341', 2, 0, 88);
INSERT INTO public.users VALUES ('user_1675231757232', 5, 1, 909);
INSERT INTO public.users VALUES ('user_1675231757233', 4, 1, 904);
INSERT INTO public.users VALUES ('user_1675275013831', 19, 2, 445);
INSERT INTO public.users VALUES ('user_1675275013832', 18, 5, 842);
INSERT INTO public.users VALUES ('user_1675232020592', 8, 2, 676);
INSERT INTO public.users VALUES ('user_1675275048883', 21, 2, 0);
INSERT INTO public.users VALUES ('user_1675232020593', 7, 5, 699);
INSERT INTO public.users VALUES ('user_1675275048884', 20, 5, 0);
INSERT INTO public.users VALUES ('user_1675273473239', 10, 2, 583);
INSERT INTO public.users VALUES ('user_1675275173921', 23, 2, 0);
INSERT INTO public.users VALUES ('user_1675273473240', 9, 5, 774);
INSERT INTO public.users VALUES ('user_1675275173922', 22, 5, 0);
INSERT INTO public.users VALUES ('hakor', 24, 1, 0);
INSERT INTO public.users VALUES ('user_1675273708517', 12, 2, 173);
INSERT INTO public.users VALUES ('user_1675273708518', 11, 5, 946);
INSERT INTO public.users VALUES ('user_1675275347408', 26, 2, 611);
INSERT INTO public.users VALUES ('user_1675274327761', 14, 2, 910);
INSERT INTO public.users VALUES ('user_1675274327762', 13, 5, 767);
INSERT INTO public.users VALUES ('user_1675275347409', 25, 5, 125);
INSERT INTO public.users VALUES ('user_1675231474340', 3, 1, 8);
INSERT INTO public.users VALUES ('rok', 6, 4, 9);
INSERT INTO public.users VALUES ('user_1675274569174', 16, 2, 933);
INSERT INTO public.users VALUES ('user_1675275409896', 28, 2, 330);
INSERT INTO public.users VALUES ('user_1675274569175', 15, 5, 978);
INSERT INTO public.users VALUES ('user_1675275409897', 27, 5, 478);
INSERT INTO public.users VALUES ('user_1675275428134', 30, 2, 307);
INSERT INTO public.users VALUES ('user_1675275428135', 29, 5, 129);
INSERT INTO public.users VALUES ('user_1675275440627', 32, 2, 858);
INSERT INTO public.users VALUES ('user_1675275440628', 31, 5, 137);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

