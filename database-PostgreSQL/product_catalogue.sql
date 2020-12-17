--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg90+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg90+1)

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
-- Name: service_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.service_type AS ENUM (
    'subscription',
    'on-demand'
);


ALTER TYPE public.service_type OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: service_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_details (
    id integer NOT NULL,
    service_code character(50) NOT NULL,
    partner_id integer NOT NULL,
    name character(50) NOT NULL,
    managed boolean NOT NULL,
    global_service_whitelist boolean NOT NULL,
    enable_service_whitelist boolean NOT NULL,
    global_service_blacklist boolean NOT NULL,
    enable_service_blacklist boolean NOT NULL,
    enable_global_subscription_blacklist boolean NOT NULL,
    enable_global_charging_blacklist boolean NOT NULL,
    service_type public.service_type NOT NULL
);


ALTER TABLE public.service_details OWNER TO postgres;

--
-- Name: service_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_details_id_seq OWNER TO postgres;

--
-- Name: service_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_details_id_seq OWNED BY public.service_details.id;


--
-- Name: service_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_details ALTER COLUMN id SET DEFAULT nextval('public.service_details_id_seq'::regclass);


--
-- Data for Name: service_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_details (id, service_code, partner_id, name, managed, global_service_whitelist, enable_service_whitelist, global_service_blacklist, enable_service_blacklist, enable_global_subscription_blacklist, enable_global_charging_blacklist, service_type) FROM stdin;
1	wn100                                             	10	service100                                        	f	f	t	f	t	t	t	on-demand
2	wn101                                             	11	service101                                        	t	f	t	f	t	t	t	on-demand
4	wn103                                             	10	service103                                        	t	t	t	f	t	t	t	on-demand
5	wn104                                             	10	service104                                        	t	f	t	t	t	t	t	on-demand
6	wn105                                             	10	service105                                        	t	f	t	f	t	t	t	on-demand
7	wn106                                             	10	service106                                        	t	f	t	f	t	t	t	on-demand
8	wn107                                             	10	service107                                        	t	f	t	f	t	t	t	on-demand
9	wn108                                             	10	service108                                        	t	f	t	f	t	t	t	on-demand
10	wn109                                             	10	service109                                        	t	f	t	f	t	f	t	on-demand
11	wn110                                             	10	service110                                        	t	f	t	f	t	t	t	on-demand
3	wn102                                             	10	service102                                        	t	f	t	f	t	f	f	on-demand
\.


--
-- Name: service_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_details_id_seq', 11, true);


--
-- Name: service_details service_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_details
    ADD CONSTRAINT service_details_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

