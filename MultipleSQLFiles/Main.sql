-- Started on 2018-11-03 09:25:05
SELECT pg_terminate_backend (pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname='BOOK_MANAGEMENT_DB';
--SELECT pg_terminate_backend (pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname='BOOK_MANAGEMENT_DB';
DROP DATABASE IF EXISTS "BOOK_MANAGEMENT_DB";

DO
$body$
BEGIN
     IF NOT EXISTS (
          SELECT
           FROM pg_catalog.pg_user
           WHERE usename='localuser') THEN
               CREATE ROLE localuser LOGIN 
                 PASSWORD 'localuser'
                 SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;
                 COMMENT ON ROLE localuser IS 'localuser DB user';
        END IF;
       END
$body$;

DROP ROLE IF EXISTS localuser;
CREATE ROLE localuser LOGIN
  PASSWORD 'localuser'
  SUPERUSER 
  INHERIT 
  CREATEDB 
  CREATEROLE 
  REPLICATION;
COMMENT ON ROLE localuser IS 'localuser DB user';


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "BOOK_MANAGEMENT_DB";

-- TOC entry 2206 (class 1262 OID 33957)
-- Name: BOOK_MANAGEMENT_DB; Type: DATABASE; Schema: -; Owner: localuser

CREATE DATABASE "BOOK_MANAGEMENT_DB" WITH TEMPLATE = template0 CONNECTION LIMIT = -1;


ALTER DATABASE "BOOK_MANAGEMENT_DB" OWNER TO localuser;

\connect "BOOK_MANAGEMENT_DB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 17019)
-- Name: book_management_schema; Type: SCHEMA; Schema: -; Owner: localuser
--

CREATE SCHEMA book_management_schema;


ALTER SCHEMA book_management_schema OWNER TO localuser;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = book_management_schema, pg_catalog;
