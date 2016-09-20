--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.0
-- Dumped by pg_dump version 9.3.0
-- Started on 2014-06-15 15:45:49

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1939 (class 1262 OID 24478)
-- Name: pdmnet; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE pdmnet WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE pdmnet OWNER TO admin;

\connect pdmnet

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 1940 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 172 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1942 (class 0 OID 0)
-- Dependencies: 172
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 24480)
-- Name: guestbook; Type: TABLE; Schema: public; Owner: admin; Tablespace: 
--

CREATE TABLE guestbook (
    id bigint NOT NULL,
    user_name character varying(100) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    email character varying(100) NOT NULL,
    home_page character varying(200),
    message_text text NOT NULL,
    ip_address character varying(30),
    browser character varying(200)
);


ALTER TABLE public.guestbook OWNER TO admin;

--
-- TOC entry 171 (class 1259 OID 24500)
-- Name: guestbook_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE guestbook_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guestbook_seq OWNER TO admin;

--
-- TOC entry 1933 (class 0 OID 24480)
-- Dependencies: 170
-- Data for Name: guestbook; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (39, 'asdfasdf', '2014-06-14 12:07:22.365+06', 'asdfsadf@aa.ru', '', 'asd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (40, 'asdfasdf', '2014-06-14 12:07:53.811+06', 'asdfsadf@aa.ru', 'https://localhost.ru', 'asdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (41, 'dfhdfghdgh', '2014-06-14 12:28:44.026+06', 'asdasd@mail.ru', 'http://localhost.ru', 'hkghjkjh ыв ыапывпывпывпывап вп', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (42, 'sdfgsdfg', '2014-06-14 12:30:27.68+06', 'sdfg@mm.ru', '', '123', '127.0.0.1', 'Opera/9.80 (Windows NT 6.1; WOW64; MRA 6.0 (build 6089)) Presto/2.12.388 Version/12.16');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (43, 'asdfasdf', '2014-06-14 12:31:27.384+06', 'asdfsadf@aa.ru', 'https://localhost.ru', 'adasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (44, 'adfasdf', '2014-06-14 12:47:26.873+06', 'dsafasdf@m.ru', '', 'asdfasdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (45, 'aaaa', '2014-06-14 12:49:40.051+06', 'aaaa@mmm.rrr', '', 'ssdfgsdfg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (46, 'aaaad', '2014-06-14 13:47:35.966+06', 'asdf@mmm.ru', '', 'sdfasdf', '127.0.0.1', 'Opera/9.80 (Windows NT 6.1; WOW64; MRA 6.0 (build 6089)) Presto/2.12.388 Version/12.16');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (47, 'sdfsdg', '2014-06-15 09:55:48.903+06', 'asdfsadf@aa.ru', '', 'sdfsdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (48, 'testtt', '2014-06-15 09:56:41.569+06', 'asdfsadf@aa.ru', '', 'Приветфыа ы ва ыва ыва ыфва фывафыва', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (49, 'asdfasdf', '2014-06-15 11:14:51.794+06', 'asdfsadf@aa.ru', 'http://localhost.ru', 'a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (51, 'azasd', '2014-06-15 11:59:35.362+06', 'asdfsadf@aa.ru', '', '&lt;br/&gt;', '127.0.0.1', 'Mozilla/5.0 &#40;Windows NT 6.1; WOW64; rv:29.0&#41; Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (52, 'asdfasdf', '2014-06-15 12:03:14.407+06', 'asdfsadf@aa.ru', '', 'asd &lt;div&gt;123&lt;/div&gt;', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (53, 'asd', '2014-06-15 12:05:32.928+06', 'asdfsadf@aa.ru', '', 'SELECT id_news, news_date, news_caption, news_text, news_id_author FROM news', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (54, 'asdfasdf', '2014-06-15 12:07:53.75+06', 'asdfsadf@aa.ru', 'http://localhost.ru', '&lt;div&gt;123&lt;/div&gt;', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (55, 'sdfgADF344', '2014-06-15 13:20:17.17+06', 'sdfsdf@mail.ru', 'http://www.mail.ru', 'Привет!!! тестттт', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (56, 'aaaa', '2014-06-15 13:21:55.06+06', 'asdfsadf@aa.ru', '', 'asdasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (57, 'asdasd1234HK', '2014-06-15 13:34:22.85+06', 'addddd@mail.ru', '', 'testttasd qasdыоап ыова', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (58, 'asdfasdf', '2014-06-15 13:35:05.172+06', 'asdfsadf@aa.ru', 'http://www.mail.ru', 'asda dsasd''', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (59, 'asdfasdf', '2014-06-15 13:35:33.704+06', 'asdfsadf@aa.ru', '', 'a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (60, 'asdfasdf', '2014-06-15 13:36:09.849+06', 'asdfsadf@aa.ru', '', 'a,asd a,sdn alks gasldfa sndfasldfasgdhf agsdlfasdhf asldf agsdfh agsldf hgasdlfj agsd sdf haksgdfh agsdfhasыдпр ывапрдывпдыврапывапывдпр ывдапывпрывадпоыврд ывывап', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (61, 'asdf', '2014-06-15 13:36:30.348+06', 'asdfsadf@aa.ru', '', 'a,asd a,sdn alks gasldfa sndfasldfasgdhf agsdlfasdhf asldf agsdfh agsldf hgasdlfj agsd sdf haksgdfh agsdfhasыдпр ывапрдывпдыврапывапывдпр ывдапывпрывадпоыврд ывывапa,asd a,sdn alks gasldfa sndfasldfasgdhf agsdlfasdhf asldf agsdfh agsldf hgasdlfj agsd sdf haksgdfh agsdfhasыдпр ывапрдывпдыврапывапывдпр ывдапывпрывадпоыврд ывывапa,asd a,sdn alks gasldfa sndfasldfasgdhf agsdlfasdhf asldf agsdfh agsldf hgasdlfj agsd sdf haksgdfh agsdfhasыдпр ывапрдывпдыврапывапывдпр ывдапывпрывадпоыврд ывывап', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (62, 'asdf', '2014-06-15 13:40:33.584+06', 'asdfsadf@aa.ru', '', 'asasda sd asd \n asdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (63, 'asdfasdf', '2014-06-15 13:41:19.012+06', 'asdfsadf@aa.ru', '', 'sdfg sdfgsdfgываыв апывв', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (64, 'asdfasdf', '2014-06-15 13:42:44.663+06', 'asdfsadf@aa.ru', '', '1vjaza', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (65, 'adasd', '2014-06-15 13:43:11.058+06', 'asdfsadf@aa.ru', '', 'aaa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (66, 'asdfasdf', '2014-06-15 14:46:19.001+06', 'asdfsadf@aa.ru', '', 'sssssss', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (67, 'asdfasdf', '2014-06-15 14:52:05.141+06', 'asdfsadf@aa.ru', 'http://www.mail.ru', 'a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (68, 'asdfasdf', '2014-06-15 15:01:01.808+06', 'asdfsadf@aa.ru', '', 'aaaaaaaaaaaaaaa вапывапывапывап', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');
INSERT INTO guestbook (id, user_name, creation_date, email, home_page, message_text, ip_address, browser) VALUES (69, 'asdfasdf', '2014-06-15 15:03:31.32+06', 'asdfsadf@aa.ru', '', 'asf asd fasdf asdfasdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0');


--
-- TOC entry 1943 (class 0 OID 0)
-- Dependencies: 171
-- Name: guestbook_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('guestbook_seq', 69, true);


--
-- TOC entry 1825 (class 2606 OID 24499)
-- Name: guestbook_pkey; Type: CONSTRAINT; Schema: public; Owner: admin; Tablespace: 
--

ALTER TABLE ONLY guestbook
    ADD CONSTRAINT guestbook_pkey PRIMARY KEY (id);


--
-- TOC entry 1941 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-06-15 15:45:50

--
-- PostgreSQL database dump complete
--

