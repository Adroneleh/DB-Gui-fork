--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Homebrew)
-- Dumped by pg_dump version 14.8 (Homebrew)

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
-- Name: comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment (
    id integer NOT NULL,
    text text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL
);


ALTER TABLE public.comment OWNER TO postgres;

--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_id_seq OWNER TO postgres;

--
-- Name: comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;


--
-- Name: comment_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_id_seq1 OWNER TO postgres;

--
-- Name: comment_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comment_id_seq1 OWNED BY public.comment.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    text text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_category (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.news_category OWNER TO postgres;

--
-- Name: news_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_category_id_seq OWNER TO postgres;

--
-- Name: news_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_category_id_seq OWNED BY public.news_category.id;


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq1 OWNER TO postgres;

--
-- Name: news_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq1 OWNED BY public.news.id;


--
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_id_seq OWNER TO postgres;

--
-- Name: profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_id_seq OWNED BY public.profile.id;


--
-- Name: profile_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_id_seq1 OWNER TO postgres;

--
-- Name: profile_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_id_seq1 OWNED BY public.profile.id;


--
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating (
    id integer NOT NULL,
    value integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL
);


ALTER TABLE public.rating OWNER TO postgres;

--
-- Name: rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rating_id_seq OWNER TO postgres;

--
-- Name: rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;


--
-- Name: rating_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rating_id_seq1 OWNER TO postgres;

--
-- Name: rating_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_id_seq1 OWNED BY public.rating.id;


--
-- Name: subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscription (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL
);


ALTER TABLE public.subscription OWNER TO postgres;

--
-- Name: subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_id_seq OWNER TO postgres;

--
-- Name: subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscription_id_seq OWNED BY public.subscription.id;


--
-- Name: subscription_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscription_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_id_seq1 OWNER TO postgres;

--
-- Name: subscription_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscription_id_seq1 OWNED BY public.subscription.id;


--
-- Name: t_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_users (
    id integer NOT NULL,
    login character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.t_users OWNER TO postgres;

--
-- Name: t_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_users_id_seq OWNER TO postgres;

--
-- Name: t_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t_users_id_seq OWNED BY public.t_users.id;


--
-- Name: typeorm_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typeorm_metadata (
    type character varying NOT NULL,
    database character varying,
    schema character varying,
    "table" character varying,
    name character varying,
    value text
);


ALTER TABLE public.typeorm_metadata OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public.t_users.id;


--
-- Name: comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq1'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq1'::regclass);


--
-- Name: news_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category ALTER COLUMN id SET DEFAULT nextval('public.news_category_id_seq'::regclass);


--
-- Name: profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN id SET DEFAULT nextval('public.profile_id_seq1'::regclass);


--
-- Name: rating id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq1'::regclass);


--
-- Name: subscription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription ALTER COLUMN id SET DEFAULT nextval('public.subscription_id_seq1'::regclass);


--
-- Name: t_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_users ALTER COLUMN id SET DEFAULT nextval('public.t_users_id_seq'::regclass);


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment (id, text, created_at, updated_at, user_id, news_id) FROM stdin;
2	Comment 12	2016-01-01 00:00:00	2016-01-01 00:00:00	12	111
3	Comment 13	2016-01-01 00:00:00	2016-01-01 00:00:00	13	112
4	Comment 14	2016-01-01 00:00:00	2016-01-01 00:00:00	14	113
5	idasldiasdasd	2016-01-01 00:00:00	2016-01-01 00:00:00	15	114
26	123123123213	2023-05-04 12:33:32.536355	2023-05-04 12:33:32.536355	12	111
27	213123	2023-05-10 15:43:40.91129	2023-05-10 15:43:40.91129	21	111
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, title, text, created_at, updated_at, user_id, category_id) FROM stdin;
111	News 1	News 1 text	2016-01-01 00:00:00	2016-01-01 00:00:00	1	1
113	News 3	News 3 text	2016-01-01 00:00:00	2016-01-01 00:00:00	13	3
114	News 4	News 4 text	2016-01-01 00:00:00	2016-01-01 00:00:00	14	4
115	News 5	News 5 text	2016-01-01 00:00:00	2016-01-01 00:00:00	15	5
116	News 6	News 6 text	2016-01-01 00:00:00	2016-01-01 00:00:00	16	6
117	News 7	News 7 text	2016-01-01 00:00:00	2016-01-01 00:00:00	17	7
118	News 8	News 8 text	2016-01-01 00:00:00	2016-01-01 00:00:00	18	8
119	News 9	News 9 text	2016-01-01 00:00:00	2016-01-01 00:00:00	19	9
120	News 10	News 10 text	2016-01-01 00:00:00	2016-01-01 00:00:00	20	10
101	News 2	News 1 text	2016-01-01 00:00:00	2016-01-01 00:00:00	1	1
112	News 2	News 2 textt	2016-01-01 00:00:00	2016-01-01 00:00:00	12	2
\.


--
-- Data for Name: news_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_category (id, name, created_at, updated_at) FROM stdin;
1	Sporting	2016-01-01 00:00:00	2016-01-01 00:00:00
4	Finances	2016-01-01 00:00:00	2016-01-01 00:00:00
2	ITT	2016-01-01 00:00:00	2016-01-01 00:00:00
3	Politicss	2016-01-01 00:00:00	2016-01-01 00:00:00
5	Fashionn	2016-01-01 00:00:00	2016-01-01 00:00:00
6	Healthh	2016-01-01 00:00:00	2016-01-01 00:00:00
7	Food	2016-01-01 00:00:00	2016-01-01 00:00:00
8	Travel	2016-01-01 00:00:00	2016-01-01 00:00:00
9	Entertainment	2016-01-01 00:00:00	2016-01-01 00:00:00
10	Education	2016-01-01 00:00:00	2016-01-01 00:00:00
\.


--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id, name, surname, created_at, updated_at, user_id) FROM stdin;
1	Admin	Admin	2016-01-01 00:00:00	2016-01-01 00:00:00	1
2	User1	Surname1	2016-01-01 00:00:00	2016-01-01 00:00:00	12
3	User2	Surname2	2016-01-01 00:00:00	2016-01-01 00:00:00	13
4	User3	Surname3	2016-01-01 00:00:00	2016-01-01 00:00:00	14
5	User4	Surname4	2016-01-01 00:00:00	2016-01-01 00:00:00	15
6	User5	Surname5	2016-01-01 00:00:00	2016-01-01 00:00:00	16
7	User6	Surname6	2016-01-01 00:00:00	2016-01-01 00:00:00	17
8	User7	Surname7	2016-01-01 00:00:00	2016-01-01 00:00:00	18
9	User8	Surname8	2016-01-01 00:00:00	2016-01-01 00:00:00	19
10	User9	Surname9	2016-01-01 00:00:00	2016-01-01 00:00:00	20
\.


--
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating (id, value, created_at, updated_at, user_id, news_id) FROM stdin;
1	1	2016-01-01 00:00:00	2016-01-01 00:00:00	1	101
2	1	2016-01-01 00:00:00	2016-01-01 00:00:00	1	111
3	1	2016-01-01 00:00:00	2016-01-01 00:00:00	12	112
4	1	2016-01-01 00:00:00	2016-01-01 00:00:00	13	113
5	1	2016-01-01 00:00:00	2016-01-01 00:00:00	14	114
6	1	2016-01-01 00:00:00	2016-01-01 00:00:00	15	115
7	1	2016-01-01 00:00:00	2016-01-01 00:00:00	16	116
8	1	2016-01-01 00:00:00	2016-01-01 00:00:00	17	117
9	1	2016-01-01 00:00:00	2016-01-01 00:00:00	18	118
10	1	2016-01-01 00:00:00	2016-01-01 00:00:00	19	119
\.


--
-- Data for Name: subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscription (id, created_at, updated_at, user_id, news_id) FROM stdin;
1	2016-01-01 00:00:00	2016-01-01 00:00:00	1	101
2	2016-01-01 00:00:00	2016-01-01 00:00:00	1	111
3	2016-01-01 00:00:00	2016-01-01 00:00:00	12	112
4	2016-01-01 00:00:00	2016-01-01 00:00:00	13	113
5	2016-01-01 00:00:00	2016-01-01 00:00:00	14	114
6	2016-01-01 00:00:00	2016-01-01 00:00:00	15	115
7	2016-01-01 00:00:00	2016-01-01 00:00:00	16	116
8	2016-01-01 00:00:00	2016-01-01 00:00:00	17	117
9	2016-01-01 00:00:00	2016-01-01 00:00:00	18	118
10	2016-01-01 00:00:00	2016-01-01 00:00:00	19	119
11	2016-01-01 00:00:00	2016-01-01 00:00:00	20	120
\.


--
-- Data for Name: t_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_users (id, login, password, name, email, created_at, updated_at) FROM stdin;
1	admin	admin	Admin	admin@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
13	user2	08e0a14c	user2	user2@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
14	user3	015adcdf	user3	user3@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
15	user4	c61c9b97	user4	user4@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
16	user5	98fdd9d5	user5	user5@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
17	user6	c62d9ff1	user6	user6@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
18	user7	5467499d	user7	user7@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
19	user8	29197e36	user8	user8@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
20	user9	29bd0e51	user9	user9@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
21	user10	66afbd2d	user10	user10@localhost	2016-01-01 00:00:00	2016-01-01 00:00:00
12	Jlowik	451579125812357898901245	Ivan	dimasik@mail.ru	2016-01-01 00:00:00	2016-01-01 00:00:00
\.


--
-- Data for Name: typeorm_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.typeorm_metadata (type, database, schema, "table", name, value) FROM stdin;
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_id_seq', 1, false);


--
-- Name: comment_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_id_seq1', 27, true);


--
-- Name: news_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_category_id_seq', 10, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 1, false);


--
-- Name: news_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq1', 120, true);


--
-- Name: profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_id_seq', 1, false);


--
-- Name: profile_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_id_seq1', 13, true);


--
-- Name: rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_id_seq', 1, false);


--
-- Name: rating_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_id_seq1', 11, true);


--
-- Name: subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscription_id_seq', 1, false);


--
-- Name: subscription_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscription_id_seq1', 12, true);


--
-- Name: t_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_users_id_seq', 22, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: news_category news_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);


--
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);


--
-- Name: subscription subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_pkey PRIMARY KEY (id);


--
-- Name: t_users user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: comment comment_news_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_news_id_fkey FOREIGN KEY (news_id) REFERENCES public.news(id);


--
-- Name: comment comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.t_users(id);


--
-- Name: news news_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.news_category(id);


--
-- Name: news news_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.t_users(id);


--
-- Name: profile profile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.t_users(id);


--
-- Name: rating rating_news_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_news_id_fkey FOREIGN KEY (news_id) REFERENCES public.news(id);


--
-- Name: rating rating_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.t_users(id);


--
-- Name: subscription subscription_news_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_news_id_fkey FOREIGN KEY (news_id) REFERENCES public.news(id);


--
-- Name: subscription subscription_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.t_users(id);


--
-- PostgreSQL database dump complete
--

