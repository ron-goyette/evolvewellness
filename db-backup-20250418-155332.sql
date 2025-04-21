--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 14.17 (Homebrew)

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
-- Name: enum__pages_v_blocks_about_main_image_position; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_about_main_image_position AS ENUM (
    'left',
    'right'
);


ALTER TYPE public.enum__pages_v_blocks_about_main_image_position OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_about_main_image_style; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_about_main_image_style AS ENUM (
    'round',
    'rounded'
);


ALTER TYPE public.enum__pages_v_blocks_about_main_image_style OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_about_mini_image_position; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_about_mini_image_position AS ENUM (
    'left',
    'right'
);


ALTER TYPE public.enum__pages_v_blocks_about_mini_image_position OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_about_mini_image_style; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_about_mini_image_style AS ENUM (
    'round',
    'rounded'
);


ALTER TYPE public.enum__pages_v_blocks_about_mini_image_style OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_about_mini_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_about_mini_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum__pages_v_blocks_about_mini_link_appearance OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_about_mini_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_about_mini_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_about_mini_link_type OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum__pages_v_blocks_archive_populate_by OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum__pages_v_blocks_archive_relation_to OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_appearance OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_type OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_size OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_appearance OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_type OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_services_services_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_services_services_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum__pages_v_blocks_services_services_link_appearance OWNER TO kript1c;

--
-- Name: enum__pages_v_blocks_services_services_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_blocks_services_services_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_services_services_link_type OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_buttons_contact_size; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_buttons_contact_size AS ENUM (
    'sm',
    'default',
    'lg'
);


ALTER TYPE public.enum__pages_v_version_hero_buttons_contact_size OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_buttons_contact_variant; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_buttons_contact_variant AS ENUM (
    'primary',
    'secondary',
    'secondaryCustom',
    'outline',
    'ghost'
);


ALTER TYPE public.enum__pages_v_version_hero_buttons_contact_variant OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_buttons_schedule_size; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_buttons_schedule_size AS ENUM (
    'sm',
    'default',
    'lg'
);


ALTER TYPE public.enum__pages_v_version_hero_buttons_schedule_size OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_buttons_schedule_variant; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_buttons_schedule_variant AS ENUM (
    'primary',
    'secondary',
    'secondaryCustom',
    'outline',
    'ghost'
);


ALTER TYPE public.enum__pages_v_version_hero_buttons_schedule_variant OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_appearance OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_type OWNER TO kript1c;

--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_hero_type AS ENUM (
    'none',
    'evolve',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum__pages_v_version_hero_type OWNER TO kript1c;

--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__pages_v_version_status OWNER TO kript1c;

--
-- Name: enum__posts_v_version_status; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum__posts_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__posts_v_version_status OWNER TO kript1c;

--
-- Name: enum_footer_nav_items_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_footer_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_nav_items_link_type OWNER TO kript1c;

--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_header_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_header_nav_items_link_type OWNER TO kript1c;

--
-- Name: enum_pages_blocks_about_main_image_position; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_about_main_image_position AS ENUM (
    'left',
    'right'
);


ALTER TYPE public.enum_pages_blocks_about_main_image_position OWNER TO kript1c;

--
-- Name: enum_pages_blocks_about_main_image_style; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_about_main_image_style AS ENUM (
    'round',
    'rounded'
);


ALTER TYPE public.enum_pages_blocks_about_main_image_style OWNER TO kript1c;

--
-- Name: enum_pages_blocks_about_mini_image_position; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_about_mini_image_position AS ENUM (
    'left',
    'right'
);


ALTER TYPE public.enum_pages_blocks_about_mini_image_position OWNER TO kript1c;

--
-- Name: enum_pages_blocks_about_mini_image_style; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_about_mini_image_style AS ENUM (
    'round',
    'rounded'
);


ALTER TYPE public.enum_pages_blocks_about_mini_image_style OWNER TO kript1c;

--
-- Name: enum_pages_blocks_about_mini_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_about_mini_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum_pages_blocks_about_mini_link_appearance OWNER TO kript1c;

--
-- Name: enum_pages_blocks_about_mini_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_about_mini_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_about_mini_link_type OWNER TO kript1c;

--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum_pages_blocks_archive_populate_by OWNER TO kript1c;

--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum_pages_blocks_archive_relation_to OWNER TO kript1c;

--
-- Name: enum_pages_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_appearance OWNER TO kript1c;

--
-- Name: enum_pages_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_type OWNER TO kript1c;

--
-- Name: enum_pages_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum_pages_blocks_content_columns_size OWNER TO kript1c;

--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_appearance OWNER TO kript1c;

--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_type OWNER TO kript1c;

--
-- Name: enum_pages_blocks_services_services_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_services_services_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum_pages_blocks_services_services_link_appearance OWNER TO kript1c;

--
-- Name: enum_pages_blocks_services_services_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_blocks_services_services_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_services_services_link_type OWNER TO kript1c;

--
-- Name: enum_pages_hero_buttons_contact_size; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_buttons_contact_size AS ENUM (
    'sm',
    'default',
    'lg'
);


ALTER TYPE public.enum_pages_hero_buttons_contact_size OWNER TO kript1c;

--
-- Name: enum_pages_hero_buttons_contact_variant; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_buttons_contact_variant AS ENUM (
    'primary',
    'secondary',
    'secondaryCustom',
    'outline',
    'ghost'
);


ALTER TYPE public.enum_pages_hero_buttons_contact_variant OWNER TO kript1c;

--
-- Name: enum_pages_hero_buttons_schedule_size; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_buttons_schedule_size AS ENUM (
    'sm',
    'default',
    'lg'
);


ALTER TYPE public.enum_pages_hero_buttons_schedule_size OWNER TO kript1c;

--
-- Name: enum_pages_hero_buttons_schedule_variant; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_buttons_schedule_variant AS ENUM (
    'primary',
    'secondary',
    'secondaryCustom',
    'outline',
    'ghost'
);


ALTER TYPE public.enum_pages_hero_buttons_schedule_variant OWNER TO kript1c;

--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline',
    'secondary',
    'ghost',
    'link',
    'destructive',
    'primary',
    'danger',
    'secondaryCustom'
);


ALTER TYPE public.enum_pages_hero_links_link_appearance OWNER TO kript1c;

--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_hero_links_link_type OWNER TO kript1c;

--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_hero_type AS ENUM (
    'none',
    'evolve',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum_pages_hero_type OWNER TO kript1c;

--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_pages_status OWNER TO kript1c;

--
-- Name: enum_payload_jobs_log_state; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_payload_jobs_log_state AS ENUM (
    'failed',
    'succeeded'
);


ALTER TYPE public.enum_payload_jobs_log_state OWNER TO kript1c;

--
-- Name: enum_payload_jobs_log_task_slug; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_payload_jobs_log_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_log_task_slug OWNER TO kript1c;

--
-- Name: enum_payload_jobs_task_slug; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_payload_jobs_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_task_slug OWNER TO kript1c;

--
-- Name: enum_posts_status; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_posts_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_posts_status OWNER TO kript1c;

--
-- Name: enum_redirects_to_type; Type: TYPE; Schema: public; Owner: kript1c
--

CREATE TYPE public.enum_redirects_to_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_redirects_to_type OWNER TO kript1c;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_type public.enum__pages_v_version_hero_type DEFAULT 'evolve'::public.enum__pages_v_version_hero_type,
    version_hero_media_id integer,
    version_hero_rich_text jsonb,
    version_hero_buttons_contact_show boolean DEFAULT false,
    version_hero_buttons_contact_label character varying DEFAULT 'Contact'::character varying,
    version_hero_buttons_contact_size public.enum__pages_v_version_hero_buttons_contact_size DEFAULT 'default'::public.enum__pages_v_version_hero_buttons_contact_size,
    version_hero_buttons_contact_variant public.enum__pages_v_version_hero_buttons_contact_variant DEFAULT 'primary'::public.enum__pages_v_version_hero_buttons_contact_variant,
    version_hero_buttons_schedule_show boolean DEFAULT false,
    version_hero_buttons_schedule_label character varying DEFAULT 'Schedule Appointment'::character varying,
    version_hero_buttons_schedule_size public.enum__pages_v_version_hero_buttons_schedule_size DEFAULT 'default'::public.enum__pages_v_version_hero_buttons_schedule_size,
    version_hero_buttons_schedule_variant public.enum__pages_v_version_hero_buttons_schedule_variant DEFAULT 'primary'::public.enum__pages_v_version_hero_buttons_schedule_variant,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._pages_v OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_main; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_about_main (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    image_style public.enum__pages_v_blocks_about_main_image_style DEFAULT 'round'::public.enum__pages_v_blocks_about_main_image_style,
    image_position public.enum__pages_v_blocks_about_main_image_position DEFAULT 'left'::public.enum__pages_v_blocks_about_main_image_position,
    name character varying,
    credentials character varying,
    header character varying DEFAULT ''::character varying,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_about_main OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_main_detailed_credentials; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_about_main_detailed_credentials (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    state character varying,
    license_number character varying,
    license_name character varying,
    issuing_authority character varying,
    education character varying,
    certification character varying,
    description character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_about_main_detailed_credentials OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_main_detailed_credentials_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_about_main_detailed_credentials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_about_main_detailed_credentials_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_main_detailed_credentials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_about_main_detailed_credentials_id_seq OWNED BY public._pages_v_blocks_about_main_detailed_credentials.id;


--
-- Name: _pages_v_blocks_about_main_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_about_main_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_about_main_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_main_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_about_main_id_seq OWNED BY public._pages_v_blocks_about_main.id;


--
-- Name: _pages_v_blocks_about_mini; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_about_mini (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    image_style public.enum__pages_v_blocks_about_mini_image_style DEFAULT 'round'::public.enum__pages_v_blocks_about_mini_image_style,
    image_position public.enum__pages_v_blocks_about_mini_image_position DEFAULT 'left'::public.enum__pages_v_blocks_about_mini_image_position,
    header character varying DEFAULT ''::character varying,
    rich_text jsonb,
    link_type public.enum__pages_v_blocks_about_mini_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_about_mini_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_about_mini_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_about_mini_link_appearance,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_about_mini OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_mini_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_about_mini_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_about_mini_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_about_mini_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_about_mini_id_seq OWNED BY public._pages_v_blocks_about_mini.id;


--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    intro_content jsonb,
    populate_by public.enum__pages_v_blocks_archive_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_archive_populate_by,
    relation_to public.enum__pages_v_blocks_archive_relation_to DEFAULT 'posts'::public.enum__pages_v_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_archive OWNER TO kript1c;

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_archive_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNED BY public._pages_v_blocks_archive.id;


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_content OWNER TO kript1c;

--
-- Name: _pages_v_blocks_content_columns; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    size public.enum__pages_v_blocks_content_columns_size DEFAULT 'oneThird'::public.enum__pages_v_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum__pages_v_blocks_content_columns_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_content_columns_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_content_columns OWNER TO kript1c;

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_content_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_content_columns_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNED BY public._pages_v_blocks_content_columns.id;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_content_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_cta OWNER TO kript1c;

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_cta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_cta_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNED BY public._pages_v_blocks_cta.id;


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_cta_links_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_cta_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_cta_links OWNER TO kript1c;

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_cta_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_cta_links_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNED BY public._pages_v_blocks_cta_links.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_media_block OWNER TO kript1c;

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_media_block_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_blocks_services; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying DEFAULT 'Services'::character varying,
    background_image_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_services OWNER TO kript1c;

--
-- Name: _pages_v_blocks_services_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_services_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_services_id_seq OWNED BY public._pages_v_blocks_services.id;


--
-- Name: _pages_v_blocks_services_services; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_blocks_services_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    subheading character varying,
    description jsonb,
    link_type public.enum__pages_v_blocks_services_services_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_services_services_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_services_services_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_services_services_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_services_services OWNER TO kript1c;

--
-- Name: _pages_v_blocks_services_services_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_blocks_services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_blocks_services_services_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_blocks_services_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_blocks_services_services_id_seq OWNED BY public._pages_v_blocks_services_services.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public._pages_v_rels OWNER TO kript1c;

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_rels_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_version_hero_links OWNER TO kript1c;

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._pages_v_version_hero_links_id_seq OWNER TO kript1c;

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _posts_v; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._posts_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_image_id integer,
    version_content jsonb,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__posts_v_version_status DEFAULT 'draft'::public.enum__posts_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._posts_v OWNER TO kript1c;

--
-- Name: _posts_v_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._posts_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._posts_v_id_seq OWNER TO kript1c;

--
-- Name: _posts_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._posts_v_id_seq OWNED BY public._posts_v.id;


--
-- Name: _posts_v_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._posts_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public._posts_v_rels OWNER TO kript1c;

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._posts_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._posts_v_rels_id_seq OWNER TO kript1c;

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._posts_v_rels_id_seq OWNED BY public._posts_v_rels.id;


--
-- Name: _posts_v_version_populated_authors; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public._posts_v_version_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    name character varying
);


ALTER TABLE public._posts_v_version_populated_authors OWNER TO kript1c;

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public._posts_v_version_populated_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public._posts_v_version_populated_authors_id_seq OWNER TO kript1c;

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNED BY public._posts_v_version_populated_authors.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    slug character varying,
    slug_lock boolean DEFAULT true,
    parent_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.categories OWNER TO kript1c;

--
-- Name: categories_breadcrumbs; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.categories_breadcrumbs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    doc_id integer,
    url character varying,
    label character varying
);


ALTER TABLE public.categories_breadcrumbs OWNER TO kript1c;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO kript1c;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: footer; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.footer (
    id integer NOT NULL,
    tagline character varying,
    copyright character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.footer OWNER TO kript1c;

--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_id_seq OWNER TO kript1c;

--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.footer_id_seq OWNED BY public.footer.id;


--
-- Name: footer_nav_items; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.footer_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_nav_items_link_type DEFAULT 'reference'::public.enum_footer_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_nav_items OWNER TO kript1c;

--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.footer_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.footer_rels OWNER TO kript1c;

--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.footer_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_rels_id_seq OWNER TO kript1c;

--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.footer_rels_id_seq OWNED BY public.footer_rels.id;


--
-- Name: footer_social_links; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.footer_social_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    platform character varying NOT NULL,
    url character varying NOT NULL,
    icon_id integer NOT NULL
);


ALTER TABLE public.footer_social_links OWNER TO kript1c;

--
-- Name: header; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.header (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.header OWNER TO kript1c;

--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.header_id_seq OWNER TO kript1c;

--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.header_id_seq OWNED BY public.header.id;


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_link_type DEFAULT 'reference'::public.enum_header_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.header_nav_items OWNER TO kript1c;

--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.header_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.header_rels OWNER TO kript1c;

--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.header_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.header_rels_id_seq OWNER TO kript1c;

--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.header_rels_id_seq OWNED BY public.header_rels.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    caption jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    sizes_thumbnail_url character varying,
    sizes_thumbnail_width numeric,
    sizes_thumbnail_height numeric,
    sizes_thumbnail_mime_type character varying,
    sizes_thumbnail_filesize numeric,
    sizes_thumbnail_filename character varying,
    sizes_square_url character varying,
    sizes_square_width numeric,
    sizes_square_height numeric,
    sizes_square_mime_type character varying,
    sizes_square_filesize numeric,
    sizes_square_filename character varying,
    sizes_small_url character varying,
    sizes_small_width numeric,
    sizes_small_height numeric,
    sizes_small_mime_type character varying,
    sizes_small_filesize numeric,
    sizes_small_filename character varying,
    sizes_medium_url character varying,
    sizes_medium_width numeric,
    sizes_medium_height numeric,
    sizes_medium_mime_type character varying,
    sizes_medium_filesize numeric,
    sizes_medium_filename character varying,
    sizes_large_url character varying,
    sizes_large_width numeric,
    sizes_large_height numeric,
    sizes_large_mime_type character varying,
    sizes_large_filesize numeric,
    sizes_large_filename character varying,
    sizes_xlarge_url character varying,
    sizes_xlarge_width numeric,
    sizes_xlarge_height numeric,
    sizes_xlarge_mime_type character varying,
    sizes_xlarge_filesize numeric,
    sizes_xlarge_filename character varying,
    sizes_og_url character varying,
    sizes_og_width numeric,
    sizes_og_height numeric,
    sizes_og_mime_type character varying,
    sizes_og_filesize numeric,
    sizes_og_filename character varying
);


ALTER TABLE public.media OWNER TO kript1c;

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_id_seq OWNER TO kript1c;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying,
    hero_type public.enum_pages_hero_type DEFAULT 'evolve'::public.enum_pages_hero_type,
    hero_media_id integer,
    hero_rich_text jsonb,
    hero_buttons_contact_show boolean DEFAULT false,
    hero_buttons_contact_label character varying DEFAULT 'Contact'::character varying,
    hero_buttons_contact_size public.enum_pages_hero_buttons_contact_size DEFAULT 'default'::public.enum_pages_hero_buttons_contact_size,
    hero_buttons_contact_variant public.enum_pages_hero_buttons_contact_variant DEFAULT 'primary'::public.enum_pages_hero_buttons_contact_variant,
    hero_buttons_schedule_show boolean DEFAULT false,
    hero_buttons_schedule_label character varying DEFAULT 'Schedule Appointment'::character varying,
    hero_buttons_schedule_size public.enum_pages_hero_buttons_schedule_size DEFAULT 'default'::public.enum_pages_hero_buttons_schedule_size,
    hero_buttons_schedule_variant public.enum_pages_hero_buttons_schedule_variant DEFAULT 'primary'::public.enum_pages_hero_buttons_schedule_variant,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status
);


ALTER TABLE public.pages OWNER TO kript1c;

--
-- Name: pages_blocks_about_main; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_about_main (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    image_style public.enum_pages_blocks_about_main_image_style DEFAULT 'round'::public.enum_pages_blocks_about_main_image_style,
    image_position public.enum_pages_blocks_about_main_image_position DEFAULT 'left'::public.enum_pages_blocks_about_main_image_position,
    name character varying,
    credentials character varying,
    header character varying DEFAULT ''::character varying,
    rich_text jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_about_main OWNER TO kript1c;

--
-- Name: pages_blocks_about_main_detailed_credentials; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_about_main_detailed_credentials (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    state character varying,
    license_number character varying,
    license_name character varying,
    issuing_authority character varying,
    education character varying,
    certification character varying,
    description character varying
);


ALTER TABLE public.pages_blocks_about_main_detailed_credentials OWNER TO kript1c;

--
-- Name: pages_blocks_about_mini; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_about_mini (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    image_style public.enum_pages_blocks_about_mini_image_style DEFAULT 'round'::public.enum_pages_blocks_about_mini_image_style,
    image_position public.enum_pages_blocks_about_mini_image_position DEFAULT 'left'::public.enum_pages_blocks_about_mini_image_position,
    header character varying DEFAULT ''::character varying,
    rich_text jsonb,
    link_type public.enum_pages_blocks_about_mini_link_type DEFAULT 'reference'::public.enum_pages_blocks_about_mini_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_about_mini_link_appearance DEFAULT 'default'::public.enum_pages_blocks_about_mini_link_appearance,
    block_name character varying
);


ALTER TABLE public.pages_blocks_about_mini OWNER TO kript1c;

--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    intro_content jsonb,
    populate_by public.enum_pages_blocks_archive_populate_by DEFAULT 'collection'::public.enum_pages_blocks_archive_populate_by,
    relation_to public.enum_pages_blocks_archive_relation_to DEFAULT 'posts'::public.enum_pages_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    block_name character varying
);


ALTER TABLE public.pages_blocks_archive OWNER TO kript1c;

--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


ALTER TABLE public.pages_blocks_content OWNER TO kript1c;

--
-- Name: pages_blocks_content_columns; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    size public.enum_pages_blocks_content_columns_size DEFAULT 'oneThird'::public.enum_pages_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum_pages_blocks_content_columns_link_type DEFAULT 'reference'::public.enum_pages_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum_pages_blocks_content_columns_link_appearance
);


ALTER TABLE public.pages_blocks_content_columns OWNER TO kript1c;

--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    rich_text jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_cta OWNER TO kript1c;

--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_cta_links_link_type DEFAULT 'reference'::public.enum_pages_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_cta_links_link_appearance
);


ALTER TABLE public.pages_blocks_cta_links OWNER TO kript1c;

--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_media_block OWNER TO kript1c;

--
-- Name: pages_blocks_services; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying DEFAULT 'Services'::character varying,
    background_image_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_services OWNER TO kript1c;

--
-- Name: pages_blocks_services_services; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_blocks_services_services (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    subheading character varying,
    description jsonb,
    link_type public.enum_pages_blocks_services_services_link_type DEFAULT 'reference'::public.enum_pages_blocks_services_services_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_services_services_link_appearance DEFAULT 'default'::public.enum_pages_blocks_services_services_link_appearance
);


ALTER TABLE public.pages_blocks_services_services OWNER TO kript1c;

--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


ALTER TABLE public.pages_hero_links OWNER TO kript1c;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO kript1c;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public.pages_rels OWNER TO kript1c;

--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_rels_id_seq OWNER TO kript1c;

--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_jobs; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_jobs (
    id integer NOT NULL,
    input jsonb,
    completed_at timestamp(3) with time zone,
    total_tried numeric DEFAULT 0,
    has_error boolean DEFAULT false,
    error jsonb,
    task_slug public.enum_payload_jobs_task_slug,
    queue character varying DEFAULT 'default'::character varying,
    wait_until timestamp(3) with time zone,
    processing boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_jobs OWNER TO kript1c;

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.payload_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payload_jobs_id_seq OWNER TO kript1c;

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.payload_jobs_id_seq OWNED BY public.payload_jobs.id;


--
-- Name: payload_jobs_log; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_jobs_log (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    executed_at timestamp(3) with time zone NOT NULL,
    completed_at timestamp(3) with time zone NOT NULL,
    task_slug public.enum_payload_jobs_log_task_slug NOT NULL,
    task_i_d character varying NOT NULL,
    input jsonb,
    output jsonb,
    state public.enum_payload_jobs_log_state NOT NULL,
    error jsonb
);


ALTER TABLE public.payload_jobs_log OWNER TO kript1c;

--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_locked_documents OWNER TO kript1c;

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payload_locked_documents_id_seq OWNER TO kript1c;

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer,
    users_id integer,
    redirects_id integer,
    payload_jobs_id integer
);


ALTER TABLE public.payload_locked_documents_rels OWNER TO kript1c;

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payload_locked_documents_rels_id_seq OWNER TO kript1c;

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_migrations OWNER TO kript1c;

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payload_migrations_id_seq OWNER TO kript1c;

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_preferences OWNER TO kript1c;

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payload_preferences_id_seq OWNER TO kript1c;

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


ALTER TABLE public.payload_preferences_rels OWNER TO kript1c;

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payload_preferences_rels_id_seq OWNER TO kript1c;

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying,
    hero_image_id integer,
    content jsonb,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_posts_status DEFAULT 'draft'::public.enum_posts_status
);


ALTER TABLE public.posts OWNER TO kript1c;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO kript1c;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_populated_authors; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.posts_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.posts_populated_authors OWNER TO kript1c;

--
-- Name: posts_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.posts_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public.posts_rels OWNER TO kript1c;

--
-- Name: posts_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.posts_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_rels_id_seq OWNER TO kript1c;

--
-- Name: posts_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.posts_rels_id_seq OWNED BY public.posts_rels.id;


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.redirects (
    id integer NOT NULL,
    "from" character varying NOT NULL,
    to_type public.enum_redirects_to_type DEFAULT 'reference'::public.enum_redirects_to_type,
    to_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.redirects OWNER TO kript1c;

--
-- Name: redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.redirects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.redirects_id_seq OWNER TO kript1c;

--
-- Name: redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.redirects_id_seq OWNED BY public.redirects.id;


--
-- Name: redirects_rels; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.redirects_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.redirects_rels OWNER TO kript1c;

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.redirects_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.redirects_rels_id_seq OWNER TO kript1c;

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.redirects_rels_id_seq OWNED BY public.redirects_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: kript1c
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


ALTER TABLE public.users OWNER TO kript1c;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kript1c
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO kript1c;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kript1c
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_about_main id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_about_main_id_seq'::regclass);


--
-- Name: _pages_v_blocks_about_main_detailed_credentials id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main_detailed_credentials ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_about_main_detailed_credentials_id_seq'::regclass);


--
-- Name: _pages_v_blocks_about_mini id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_mini ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_about_mini_id_seq'::regclass);


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_archive ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_archive_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_columns id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_columns_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_cta ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_services id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_services_id_seq'::regclass);


--
-- Name: _pages_v_blocks_services_services id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services_services ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_services_services_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _posts_v id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v ALTER COLUMN id SET DEFAULT nextval('public._posts_v_id_seq'::regclass);


--
-- Name: _posts_v_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_rels ALTER COLUMN id SET DEFAULT nextval('public._posts_v_rels_id_seq'::regclass);


--
-- Name: _posts_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_version_populated_authors ALTER COLUMN id SET DEFAULT nextval('public._posts_v_version_populated_authors_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer ALTER COLUMN id SET DEFAULT nextval('public.footer_id_seq'::regclass);


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_rels ALTER COLUMN id SET DEFAULT nextval('public.footer_rels_id_seq'::regclass);


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header ALTER COLUMN id SET DEFAULT nextval('public.header_id_seq'::regclass);


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_rels ALTER COLUMN id SET DEFAULT nextval('public.header_rels_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_jobs id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_jobs ALTER COLUMN id SET DEFAULT nextval('public.payload_jobs_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_rels ALTER COLUMN id SET DEFAULT nextval('public.posts_rels_id_seq'::regclass);


--
-- Name: redirects id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects ALTER COLUMN id SET DEFAULT nextval('public.redirects_id_seq'::regclass);


--
-- Name: redirects_rels id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects_rels ALTER COLUMN id SET DEFAULT nextval('public.redirects_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v (id, parent_id, version_title, version_hero_type, version_hero_media_id, version_hero_rich_text, version_hero_buttons_contact_show, version_hero_buttons_contact_label, version_hero_buttons_contact_size, version_hero_buttons_contact_variant, version_hero_buttons_schedule_show, version_hero_buttons_schedule_label, version_hero_buttons_schedule_size, version_hero_buttons_schedule_variant, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
8	2	About	none	\N	\N	f	Contact	default	primary	f	Schedule Appointment	default	primary	\N	\N	\N	2025-04-18 15:15:07.804-05	about	t	2025-04-18 15:23:03.439-05	2025-04-18 15:14:42.681-05	published	2025-04-18 15:23:03.456-05	2025-04-18 15:23:03.456-05	t	f
6	2	About	none	\N	\N	f	Contact	default	primary	f	Schedule Appointment	default	primary	\N	\N	\N	2025-04-18 15:15:07.804-05	about	t	2025-04-18 15:20:21.276-05	2025-04-18 15:14:42.681-05	published	2025-04-18 15:20:21.303-05	2025-04-18 15:20:21.303-05	f	f
4	2	\N	evolve	\N	\N	f	Contact	default	primary	f	Schedule Appointment	default	primary	\N	\N	\N	\N	\N	t	2025-04-18 15:14:42.681-05	2025-04-18 15:14:42.681-05	draft	2025-04-18 15:14:42.702-05	2025-04-18 15:14:42.702-05	f	f
7	2	About	none	\N	\N	f	Contact	default	primary	f	Schedule Appointment	default	primary	\N	\N	\N	2025-04-18 15:15:07.804-05	about	t	2025-04-18 15:23:01.543-05	2025-04-18 15:14:42.681-05	draft	2025-04-18 15:20:25.86-05	2025-04-18 15:23:01.551-05	f	t
10	1	Home	evolve	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "GUIDING YOU ON THE PATH TO WELLNESS", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Perhaps you're down or anxious - maybe you're unsure about the future of a relationship, feel that you have lost touch with your true self and identity, or just feel that you aren't living the life you were meant to lead and are ready to imagine a new future. Therapy is a process of growth and self-discovery. In my therapy sessions I help cultivate personal and life transformation by encouraging the adoption of new attitudes and feelings, and deeper connection with self.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	t	Your journey to healing starts here	default	secondaryCustom	f	Schedule Appointment	default	primary	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-04-18 14:48:53.768-05	home	t	2025-04-18 15:25:13.638-05	2025-04-18 14:48:28.266-05	published	2025-04-18 15:25:13.665-05	2025-04-18 15:25:13.665-05	t	f
5	2	About	none	\N	\N	f	Contact	default	primary	f	Schedule Appointment	default	primary	\N	\N	\N	2025-04-18 15:15:07.804-05	about	t	2025-04-18 15:20:15.687-05	2025-04-18 15:14:42.681-05	draft	2025-04-18 15:14:43.01-05	2025-04-18 15:20:15.693-05	f	t
1	1	Home	highImpact	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	Contact	default	primary	f	Schedule Appointment	default	primary	Payload Website Template	4	An open-source website built with Payload and Next.js.	\N	home	t	2025-04-18 14:48:28.272-05	2025-04-18 14:48:28.266-05	published	2025-04-18 14:48:28.304-05	2025-04-18 14:48:28.305-05	f	f
2	1	Home	evolve	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "GUIDING YOU ON THE PATH TO WELLNESS", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Perhaps you're down or anxious - maybe you're unsure about the future of a relationship, feel that you have lost touch with your true self and identity, or just feel that you aren't living the life you were meant to lead and are ready to imagine a new future. Therapy is a process of growth and self-discovery. In my therapy sessions I help cultivate personal and life transformation by encouraging the adoption of new attitudes and feelings, and deeper connection with self.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	t	Your journey to healing starts here	default	secondaryCustom	f	Schedule Appointment	default	primary	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-04-18 14:48:53.768-05	home	t	2025-04-18 15:04:33.086-05	2025-04-18 14:48:28.266-05	draft	2025-04-18 14:48:51.168-05	2025-04-18 15:04:33.092-05	f	t
9	1	Home	evolve	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "GUIDING YOU ON THE PATH TO WELLNESS", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Perhaps you're down or anxious - maybe you're unsure about the future of a relationship, feel that you have lost touch with your true self and identity, or just feel that you aren't living the life you were meant to lead and are ready to imagine a new future. Therapy is a process of growth and self-discovery. In my therapy sessions I help cultivate personal and life transformation by encouraging the adoption of new attitudes and feelings, and deeper connection with self.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	t	Your journey to healing starts here	default	secondaryCustom	f	Schedule Appointment	default	primary	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-04-18 14:48:53.768-05	home	t	2025-04-18 15:25:09.102-05	2025-04-18 14:48:28.266-05	draft	2025-04-18 15:25:06.6-05	2025-04-18 15:25:09.108-05	f	t
3	1	Home	evolve	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "GUIDING YOU ON THE PATH TO WELLNESS", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Perhaps you're down or anxious - maybe you're unsure about the future of a relationship, feel that you have lost touch with your true self and identity, or just feel that you aren't living the life you were meant to lead and are ready to imagine a new future. Therapy is a process of growth and self-discovery. In my therapy sessions I help cultivate personal and life transformation by encouraging the adoption of new attitudes and feelings, and deeper connection with self.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	t	Your journey to healing starts here	default	secondaryCustom	f	Schedule Appointment	default	primary	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-04-18 14:48:53.768-05	home	t	2025-04-18 15:04:35.69-05	2025-04-18 14:48:28.266-05	published	2025-04-18 15:04:35.725-05	2025-04-18 15:04:35.725-05	f	f
\.


--
-- Data for Name: _pages_v_blocks_about_main; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_about_main (_order, _parent_id, _path, id, media_id, image_style, image_position, name, credentials, header, rich_text, _uuid, block_name) FROM stdin;
1	7	version.layout	163	6	rounded	right	Portia Goyette	LMFT Licensed Marriage & Family Therapist - Brainspotting Practitioner	About Me	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "What is Lorem Ipsum?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lorem Ipsum", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do we use it?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where can I get some?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802b2c10b4310c75001b670	\N
1	8	version.layout	164	6	rounded	right	Portia Goyette	LMFT Licensed Marriage & Family Therapist - Brainspotting Practitioner	About Me	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "What is Lorem Ipsum?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lorem Ipsum", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do we use it?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where can I get some?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802b2c10b4310c75001b670	\N
1	5	version.layout	107	6	rounded	right	Portia Goyette	LMFT Licensed Marriage & Family Therapist - Brainspotting Practitioner	About Me	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "What is Lorem Ipsum?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lorem Ipsum", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do we use it?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where can I get some?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802b2c10b4310c75001b670	\N
1	6	version.layout	108	6	rounded	right	Portia Goyette	LMFT Licensed Marriage & Family Therapist - Brainspotting Practitioner	About Me	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "What is Lorem Ipsum?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lorem Ipsum", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do we use it?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where can I get some?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802b2c10b4310c75001b670	\N
\.


--
-- Data for Name: _pages_v_blocks_about_main_detailed_credentials; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_about_main_detailed_credentials (_order, _parent_id, id, state, license_number, license_name, issuing_authority, education, certification, description, _uuid) FROM stdin;
1	163	233	Washington	LF60707416	LMFT, Licensed Marriage & Family Therapist	Washington Department of Health 	\N	\N	\N	6802b36a0b4310c75001b672
2	163	234	Oregon	T1315	LMFT, Licensed Marriage & Family Therapist	Oregon Board of Licensed Professional Counselors and Therapists	\N	\N	\N	6802b4090b4310c75001b674
3	163	235	Texas	205837	LMFT, Licensed Marriage & Family Therapist	State of Texas	\N	\N	\N	6802b4400b4310c75001b676
4	163	236	Hawaii	MFT516	LMFT, Licensed Marriage & Family Therapist	Hawaii Professional and Vocational Licensing Board	\N	\N	\N	6802b4700b4310c75001b678
1	164	237	Washington	LF60707416	LMFT, Licensed Marriage & Family Therapist	Washington Department of Health 	\N	\N	\N	6802b36a0b4310c75001b672
2	164	238	Oregon	T1315	LMFT, Licensed Marriage & Family Therapist	Oregon Board of Licensed Professional Counselors and Therapists	\N	\N	\N	6802b4090b4310c75001b674
3	164	239	Texas	205837	LMFT, Licensed Marriage & Family Therapist	State of Texas	\N	\N	\N	6802b4400b4310c75001b676
4	164	240	Hawaii	MFT516	LMFT, Licensed Marriage & Family Therapist	Hawaii Professional and Vocational Licensing Board	\N	\N	\N	6802b4700b4310c75001b678
1	107	70	Washington	LF60707416	LMFT, Licensed Marriage & Family Therapist	Washington Department of Health 	\N	\N	\N	6802b36a0b4310c75001b672
1	108	71	Washington	LF60707416	LMFT, Licensed Marriage & Family Therapist	Washington Department of Health 	\N	\N	\N	6802b36a0b4310c75001b672
\.


--
-- Data for Name: _pages_v_blocks_about_mini; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_about_mini (_order, _parent_id, _path, id, media_id, image_style, image_position, header, rich_text, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid, block_name) FROM stdin;
1	9	version.layout	351	6	round	left	Hello, my name is Portia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Each one of us is in a constant state of evolution. As we live out our personal stories, we will inevitably experience phases of contentment and joy, turmoil and darkness, and all that exists in between. Nurturing our spirit and emotional wellbeing allows us to expand our capacity for self-reflection, self-awareness, and meaning-making, thereby paving the way for living a more authentic and fulfilling life. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	reference	\N	#	Learn More About Me	secondaryCustom	6802ad390b4310c75001b65c	\N
1	10	version.layout	352	6	round	left	Hello, my name is Portia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Each one of us is in a constant state of evolution. As we live out our personal stories, we will inevitably experience phases of contentment and joy, turmoil and darkness, and all that exists in between. Nurturing our spirit and emotional wellbeing allows us to expand our capacity for self-reflection, self-awareness, and meaning-making, thereby paving the way for living a more authentic and fulfilling life. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	reference	\N	#	Learn More About Me	secondaryCustom	6802ad390b4310c75001b65c	\N
1	3	version.layout	348	6	round	left	Hello, my name is Portia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Each one of us is in a constant state of evolution. As we live out our personal stories, we will inevitably experience phases of contentment and joy, turmoil and darkness, and all that exists in between. Nurturing our spirit and emotional wellbeing allows us to expand our capacity for self-reflection, self-awareness, and meaning-making, thereby paving the way for living a more authentic and fulfilling life. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More About Me	secondaryCustom	6802ad390b4310c75001b65c	\N
1	2	version.layout	347	6	round	left	Hello, my name is Portia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Each one of us is in a constant state of evolution. As we live out our personal stories, we will inevitably experience phases of contentment and joy, turmoil and darkness, and all that exists in between. Nurturing our spirit and emotional wellbeing allows us to expand our capacity for self-reflection, self-awareness, and meaning-making, thereby paving the way for living a more authentic and fulfilling life. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More About Me	secondaryCustom	6802ad390b4310c75001b65c	\N
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
3	1	version.layout	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	6802ac8c1268ae4d5dc309e5	Archive Block
4	2	version.layout	87	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "See the latest from my blog", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6802b0240b4310c75001b66c	\N
4	3	version.layout	88	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "See the latest from my blog", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6802b0240b4310c75001b66c	\N
4	9	version.layout	91	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "See the latest from my blog", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6802b0240b4310c75001b66c	\N
4	10	version.layout	92	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "See the latest from my blog", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6802b0240b4310c75001b66c	\N
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
1	1	version.layout	1	6802ac8c1268ae4d5dc309e3	Content Block
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6802ac8c1268ae4d5dc309dd
2	1	2	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6802ac8c1268ae4d5dc309de
3	1	3	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6802ac8c1268ae4d5dc309df
4	1	4	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6802ac8c1268ae4d5dc309e0
5	1	5	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6802ac8c1268ae4d5dc309e1
6	1	6	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6802ac8c1268ae4d5dc309e2
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
4	1	version.layout	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	6802ac8c1268ae4d5dc309e7	CTA
3	9	version.layout	207	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is your call to action. Pick up and click the button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802af5b0b4310c75001b666	\N
3	10	version.layout	208	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is your call to action. Pick up and click the button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802af5b0b4310c75001b666	\N
3	2	version.layout	203	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is your call to action. Pick up and click the button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802af5b0b4310c75001b666	\N
3	3	version.layout	204	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is your call to action. Pick up and click the button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6802af5b0b4310c75001b666	\N
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	custom	\N	/posts	All posts	default	6802ac8c1268ae4d5dc309e6
1	203	146	custom	\N	#	Your journey to healing starts here	outline	6802af7e0b4310c75001b668
1	204	147	custom	\N	#	Your journey to healing starts here	outline	6802af7e0b4310c75001b668
1	207	150	custom	\N	#	Your journey to healing starts here	outline	6802af7e0b4310c75001b668
1	208	151	custom	\N	#	Your journey to healing starts here	outline	6802af7e0b4310c75001b668
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
2	1	version.layout	1	3	6802ac8c1268ae4d5dc309e4	Media Block
\.


--
-- Data for Name: _pages_v_blocks_services; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_services (_order, _parent_id, _path, id, heading, background_image_id, _uuid, block_name) FROM stdin;
2	9	version.layout	268	Services	7	6802addf0b4310c75001b65e	\N
2	10	version.layout	269	Services	7	6802addf0b4310c75001b65e	\N
2	2	version.layout	264	Services	7	6802addf0b4310c75001b65e	\N
2	3	version.layout	265	Services	7	6802addf0b4310c75001b65e	\N
\.


--
-- Data for Name: _pages_v_blocks_services_services; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_blocks_services_services (_order, _parent_id, id, subheading, description, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	268	677	Individual Counseling	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802adff0b4310c75001b660
2	268	678	Brainspotting	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802ae860b4310c75001b662
3	268	679	Clinical Supervision	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802aec90b4310c75001b664
1	269	680	Individual Counseling	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802adff0b4310c75001b660
2	269	681	Brainspotting	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802ae860b4310c75001b662
3	269	682	Clinical Supervision	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802aec90b4310c75001b664
1	265	668	Individual Counseling	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802adff0b4310c75001b660
2	265	669	Brainspotting	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802ae860b4310c75001b662
1	264	665	Individual Counseling	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802adff0b4310c75001b660
2	264	666	Brainspotting	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802ae860b4310c75001b662
3	264	667	Clinical Supervision	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802aec90b4310c75001b664
3	265	670	Clinical Supervision	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom	6802aec90b4310c75001b664
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
1	\N	9	version.layout.0.link.reference	2	\N	\N
2	\N	10	version.layout.0.link.reference	2	\N	\N
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	custom	\N	/posts	All posts	default	6802ac8c1268ae4d5dc309db
2	1	2	custom	\N	/contact	Contact	outline	6802ac8c1268ae4d5dc309dc
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._posts_v (id, parent_id, version_title, version_hero_image_id, version_content, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
4	1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309c8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309c9", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309ca", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309cb", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-04-18 14:48:28.081-05	digital-horizons	t	2025-04-18 14:48:28.178-05	2025-04-18 14:48:28.081-05	published	2025-04-18 14:48:28.183-05	2025-04-18 14:48:28.183-05	t	f
1	1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-04-18 14:48:28.081-05	digital-horizons	t	2025-04-18 14:48:28.082-05	2025-04-18 14:48:28.081-05	published	2025-04-18 14:48:28.097-05	2025-04-18 14:48:28.097-05	f	f
5	2	Global Gaze: Beyond the Headlines	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d3", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d4", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-04-18 14:48:28.117-05	global-gaze	t	2025-04-18 14:48:28.204-05	2025-04-18 14:48:28.117-05	published	2025-04-18 14:48:28.209-05	2025-04-18 14:48:28.209-05	t	f
2	2	Global Gaze: Beyond the Headlines	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-04-18 14:48:28.117-05	global-gaze	t	2025-04-18 14:48:28.118-05	2025-04-18 14:48:28.117-05	published	2025-04-18 14:48:28.147-05	2025-04-18 14:48:28.147-05	f	f
6	3	Dollar and Sense: The Financial Forecast	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d9", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309da", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	1	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-04-18 14:48:28.158-05	dollar-and-sense-the-financial-forecast	t	2025-04-18 14:48:28.24-05	2025-04-18 14:48:28.157-05	published	2025-04-18 14:48:28.248-05	2025-04-18 14:48:28.248-05	t	f
3	3	Dollar and Sense: The Financial Forecast	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	1	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-04-18 14:48:28.158-05	dollar-and-sense-the-financial-forecast	t	2025-04-18 14:48:28.158-05	2025-04-18 14:48:28.157-05	published	2025-04-18 14:48:28.161-05	2025-04-18 14:48:28.161-05	f	f
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._posts_v_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
1	1	1	version.authors	\N	\N	2
2	1	2	version.authors	\N	\N	2
3	1	3	version.authors	\N	\N	2
4	1	4	version.relatedPosts	2	\N	\N
5	2	4	version.relatedPosts	3	\N	\N
6	1	4	version.authors	\N	\N	2
7	1	5	version.relatedPosts	1	\N	\N
8	2	5	version.relatedPosts	3	\N	\N
9	1	5	version.authors	\N	\N	2
10	1	6	version.relatedPosts	1	\N	\N
11	2	6	version.relatedPosts	2	\N	\N
12	1	6	version.authors	\N	\N	2
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public._posts_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.categories (id, title, slug, slug_lock, parent_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.categories_breadcrumbs (_order, _parent_id, id, doc_id, url, label) FROM stdin;
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.footer (id, tagline, copyright, updated_at, created_at) FROM stdin;
1	Compassionate care for your healing journey	evolve counseling and wellness, llc	2025-04-18 15:07:44.659-05	2025-04-18 14:48:25.805-05
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.footer_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: footer_social_links; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.footer_social_links (_order, _parent_id, id, platform, url, icon_id) FROM stdin;
1	1	6802b0b70b4310c75001b66e	Psychology Today	https://www.psychologytoday.com/us/therapists/portia-goyette-vancouver-wa/248393	8
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.header (id, updated_at, created_at) FROM stdin;
1	2025-04-18 15:28:08.228-05	2025-04-18 14:48:25.799-05
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6802b54f0b4310c75001b67c	reference	\N	\N	Home
2	1	6802b4f90b4310c75001b67a	reference	\N	\N	About
3	1	6802ac8c1268ae4d5dc309e8	custom	\N	/posts	Posts
4	1	6802b55f0b4310c75001b67e	custom	\N	#contact	Contact
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.header_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
7	\N	1	navItems.0.link.reference	1	\N
8	\N	1	navItems.1.link.reference	2	\N
9	\N	1	navItems.2.link.reference	2	\N
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.media (id, alt, caption, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, sizes_thumbnail_url, sizes_thumbnail_width, sizes_thumbnail_height, sizes_thumbnail_mime_type, sizes_thumbnail_filesize, sizes_thumbnail_filename, sizes_square_url, sizes_square_width, sizes_square_height, sizes_square_mime_type, sizes_square_filesize, sizes_square_filename, sizes_small_url, sizes_small_width, sizes_small_height, sizes_small_mime_type, sizes_small_filesize, sizes_small_filename, sizes_medium_url, sizes_medium_width, sizes_medium_height, sizes_medium_mime_type, sizes_medium_filesize, sizes_medium_filename, sizes_large_url, sizes_large_width, sizes_large_height, sizes_large_mime_type, sizes_large_filesize, sizes_large_filename, sizes_xlarge_url, sizes_xlarge_width, sizes_xlarge_height, sizes_xlarge_mime_type, sizes_xlarge_filesize, sizes_xlarge_filename, sizes_og_url, sizes_og_width, sizes_og_height, sizes_og_mime_type, sizes_og_filesize, sizes_og_filename) FROM stdin;
1	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-04-18 14:48:27.549-05	2025-04-18 14:48:26.118-05	\N	\N	image-post3-3.webp	image/webp	14662	1920	1080	50	50	\N	300	169	image/webp	1240	image-post3-3-300x169.webp	\N	500	500	image/webp	2732	image-post3-3-500x500.webp	\N	600	338	image/webp	3018	image-post3-3-600x338.webp	\N	900	506	image/webp	5010	image-post3-3-900x506.webp	\N	1400	788	image/webp	9070	image-post3-3-1400x788.webp	\N	1920	1080	image/webp	14662	image-post3-3-1920x1080.webp	\N	1200	630	image/webp	6950	image-post3-3-1200x630.webp
2	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-04-18 14:48:27.812-05	2025-04-18 14:48:26.117-05	\N	\N	image-post1-3.webp	image/webp	15924	1920	1080	50	50	\N	300	169	image/webp	1524	image-post1-3-300x169.webp	\N	500	500	image/webp	3792	image-post1-3-500x500.webp	\N	600	338	image/webp	3622	image-post1-3-600x338.webp	\N	900	506	image/webp	5936	image-post1-3-900x506.webp	\N	1400	788	image/webp	10210	image-post1-3-1400x788.webp	\N	1920	1080	image/webp	15924	image-post1-3-1920x1080.webp	\N	1200	630	image/webp	8114	image-post1-3-1200x630.webp
3	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-04-18 14:48:27.865-05	2025-04-18 14:48:26.117-05	\N	\N	image-post2-3.webp	image/webp	22332	1920	1080	50	50	\N	300	169	image/webp	2248	image-post2-3-300x169.webp	\N	500	500	image/webp	4952	image-post2-3-500x500.webp	\N	600	338	image/webp	5066	image-post2-3-600x338.webp	\N	900	506	image/webp	8036	image-post2-3-900x506.webp	\N	1400	788	image/webp	13880	image-post2-3-1400x788.webp	\N	1920	1080	image/webp	22332	image-post2-3-1920x1080.webp	\N	1200	630	image/webp	11010	image-post2-3-1200x630.webp
4	Straight metallic shapes with a blue gradient	\N	2025-04-18 14:48:28.076-05	2025-04-18 14:48:26.117-05	\N	\N	image-hero1-3.webp	image/webp	49432	3200	1800	50	50	\N	300	169	image/webp	2544	image-hero1-3-300x169.webp	\N	500	500	image/webp	4810	image-hero1-3-500x500.webp	\N	600	338	image/webp	5750	image-hero1-3-600x338.webp	\N	900	506	image/webp	9402	image-hero1-3-900x506.webp	\N	1400	788	image/webp	16492	image-hero1-3-1400x788.webp	\N	1920	1080	image/webp	24346	image-hero1-3-1920x1080.webp	\N	1200	630	image/webp	12846	image-hero1-3-1200x630.webp
5	Women overlooking the ocean	\N	2025-04-18 14:49:30.259-05	2025-04-18 14:49:29.497-05	\N	\N	artem-kovalev-fk3XUcfTAvk-unsplash-3.jpg	image/jpeg	1135443	4104	2736	50	50	\N	300	200	image/jpeg	5745	artem-kovalev-fk3XUcfTAvk-unsplash-3-300x200.jpg	\N	500	500	image/jpeg	15938	artem-kovalev-fk3XUcfTAvk-unsplash-3-500x500.jpg	\N	600	400	image/jpeg	16224	artem-kovalev-fk3XUcfTAvk-unsplash-3-600x400.jpg	\N	900	600	image/jpeg	30775	artem-kovalev-fk3XUcfTAvk-unsplash-3-900x600.jpg	\N	1400	933	image/jpeg	62824	artem-kovalev-fk3XUcfTAvk-unsplash-3-1400x933.jpg	\N	1920	1280	image/jpeg	108836	artem-kovalev-fk3XUcfTAvk-unsplash-3-1920x1280.jpg	\N	1200	630	image/jpeg	34652	artem-kovalev-fk3XUcfTAvk-unsplash-3-1200x630.jpg
6	Portia Goyette - LMFT	\N	2025-04-18 14:51:57.299-05	2025-04-18 14:51:57.109-05	\N	\N	professional headshot-3.jpg	image/jpeg	1759883	1832	1824	50	50	\N	300	299	image/jpeg	17669	professional headshot-3-300x299.jpg	\N	500	500	image/jpeg	47177	professional headshot-3-500x500.jpg	\N	600	597	image/jpeg	66962	professional headshot-3-600x597.jpg	\N	900	896	image/jpeg	150905	professional headshot-3-900x896.jpg	\N	1400	1394	image/jpeg	353786	professional headshot-3-1400x1394.jpg	\N	\N	\N	\N	\N	\N	\N	1200	630	image/jpeg	132031	professional headshot-3-1200x630.jpg
7	Grass on the beach	\N	2025-04-18 14:54:36.181-05	2025-04-18 14:54:35.996-05	\N	\N	empathysites-therapist-website-design-template-calm-plants-beach-3.jpg	image/jpeg	154158	2000	1333	50	50	\N	300	200	image/jpeg	7740	empathysites-therapist-website-design-template-calm-plants-beach-3-300x200.jpg	\N	500	500	image/jpeg	31499	empathysites-therapist-website-design-template-calm-plants-beach-3-500x500.jpg	\N	600	400	image/jpeg	27108	empathysites-therapist-website-design-template-calm-plants-beach-3-600x400.jpg	\N	900	600	image/jpeg	61103	empathysites-therapist-website-design-template-calm-plants-beach-3-900x600.jpg	\N	1400	933	image/jpeg	143998	empathysites-therapist-website-design-template-calm-plants-beach-3-1400x933.jpg	\N	1920	1280	image/jpeg	244181	empathysites-therapist-website-design-template-calm-plants-beach-3-1920x1280.jpg	\N	1200	630	image/jpeg	89919	empathysites-therapist-website-design-template-calm-plants-beach-3-1200x630.jpg
8	Psychology Today Logo	\N	2025-04-18 15:07:04.612-05	2025-04-18 15:07:04.601-05	\N	\N	logo-psychology-today-2.webp	image/webp	1814	271	60	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages (id, title, hero_type, hero_media_id, hero_rich_text, hero_buttons_contact_show, hero_buttons_contact_label, hero_buttons_contact_size, hero_buttons_contact_variant, hero_buttons_schedule_show, hero_buttons_schedule_label, hero_buttons_schedule_size, hero_buttons_schedule_variant, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
2	About	none	\N	\N	f	Contact	default	primary	f	Schedule Appointment	default	primary	\N	\N	\N	2025-04-18 15:15:07.804-05	about	t	2025-04-18 15:23:03.439-05	2025-04-18 15:14:42.681-05	published
1	Home	evolve	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "GUIDING YOU ON THE PATH TO WELLNESS", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Perhaps you're down or anxious - maybe you're unsure about the future of a relationship, feel that you have lost touch with your true self and identity, or just feel that you aren't living the life you were meant to lead and are ready to imagine a new future. Therapy is a process of growth and self-discovery. In my therapy sessions I help cultivate personal and life transformation by encouraging the adoption of new attitudes and feelings, and deeper connection with self.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	t	Your journey to healing starts here	default	secondaryCustom	f	Schedule Appointment	default	primary	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-04-18 14:48:53.768-05	home	t	2025-04-18 15:25:13.638-05	2025-04-18 14:48:28.266-05	published
\.


--
-- Data for Name: pages_blocks_about_main; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_about_main (_order, _parent_id, _path, id, media_id, image_style, image_position, name, credentials, header, rich_text, block_name) FROM stdin;
1	2	layout	6802b2c10b4310c75001b670	6	rounded	right	Portia Goyette	LMFT Licensed Marriage & Family Therapist - Brainspotting Practitioner	About Me	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "What is Lorem Ipsum?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lorem Ipsum", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do we use it?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where can I get some?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "justify", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N
\.


--
-- Data for Name: pages_blocks_about_main_detailed_credentials; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_about_main_detailed_credentials (_order, _parent_id, id, state, license_number, license_name, issuing_authority, education, certification, description) FROM stdin;
1	6802b2c10b4310c75001b670	6802b36a0b4310c75001b672	Washington	LF60707416	LMFT, Licensed Marriage & Family Therapist	Washington Department of Health 	\N	\N	\N
2	6802b2c10b4310c75001b670	6802b4090b4310c75001b674	Oregon	T1315	LMFT, Licensed Marriage & Family Therapist	Oregon Board of Licensed Professional Counselors and Therapists	\N	\N	\N
3	6802b2c10b4310c75001b670	6802b4400b4310c75001b676	Texas	205837	LMFT, Licensed Marriage & Family Therapist	State of Texas	\N	\N	\N
4	6802b2c10b4310c75001b670	6802b4700b4310c75001b678	Hawaii	MFT516	LMFT, Licensed Marriage & Family Therapist	Hawaii Professional and Vocational Licensing Board	\N	\N	\N
\.


--
-- Data for Name: pages_blocks_about_mini; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_about_mini (_order, _parent_id, _path, id, media_id, image_style, image_position, header, rich_text, link_type, link_new_tab, link_url, link_label, link_appearance, block_name) FROM stdin;
1	1	layout	6802ad390b4310c75001b65c	6	round	left	Hello, my name is Portia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Each one of us is in a constant state of evolution. As we live out our personal stories, we will inevitably experience phases of contentment and joy, turmoil and darkness, and all that exists in between. Nurturing our spirit and emotional wellbeing allows us to expand our capacity for self-reflection, self-awareness, and meaning-making, thereby paving the way for living a more authentic and fulfilling life. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	reference	\N	#	Learn More About Me	secondaryCustom	\N
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
4	1	layout	6802b0240b4310c75001b66c	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "See the latest from my blog", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	\N
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
3	1	layout	6802af5b0b4310c75001b666	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is your call to action. Pick up and click the button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	6802af5b0b4310c75001b666	6802af7e0b4310c75001b668	custom	\N	#	Your journey to healing starts here	outline
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_services; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_services (_order, _parent_id, _path, id, heading, background_image_id, block_name) FROM stdin;
2	1	layout	6802addf0b4310c75001b65e	Services	7	\N
\.


--
-- Data for Name: pages_blocks_services_services; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_blocks_services_services (_order, _parent_id, id, subheading, description, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	6802addf0b4310c75001b65e	6802adff0b4310c75001b660	Individual Counseling	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom
2	6802addf0b4310c75001b65e	6802ae860b4310c75001b662	Brainspotting	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom
3	6802addf0b4310c75001b65e	6802aec90b4310c75001b664	Clinical Supervision	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	custom	\N	#	Learn More	secondaryCustom
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
1	\N	1	layout.0.link.reference	2	\N	\N
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_jobs (id, input, completed_at, total_tried, has_error, error, task_slug, queue, wait_until, processing, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_jobs_log (_order, _parent_id, id, executed_at, completed_at, task_slug, task_i_d, input, output, state, error) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
8	\N	2025-04-18 14:50:25.425-05	2025-04-18 14:50:25.426-05
175	\N	2025-04-18 15:03:15.554-05	2025-04-18 15:03:15.555-05
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id, users_id, redirects_id, payload_jobs_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	dev	-1	2025-04-18 15:25:26.234-05	2025-04-18 14:47:35.506-05
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
1	pages-list	{"preset": null}	2025-04-18 14:48:47.08-05	2025-04-18 14:48:47.081-05
4	media-list	{"preset": null}	2025-04-18 15:15:03.624-05	2025-04-18 15:15:03.625-05
3	collection-pages-2	{"fields": {"layout": {"collapsed": ["6802b2c10b4310c75001b670"]}, "_index-1": {"tabIndex": 1}, "layout.0.detailedCredentials": {"collapsed": ["6802b36a0b4310c75001b672", "6802b4090b4310c75001b674", "6802b4400b4310c75001b676", "6802b4700b4310c75001b678"]}}}	2025-04-18 15:24:55.597-05	2025-04-18 15:14:52.65-05
2	collection-pages-1	{"fields": {"layout": {"collapsed": ["6802addf0b4310c75001b65e", "6802af5b0b4310c75001b666", "6802b0240b4310c75001b66c"]}, "_index-1": {"tabIndex": 1}, "layout.2.links": {"collapsed": ["6802af7e0b4310c75001b668"]}, "layout.1.services": {"collapsed": ["6802adff0b4310c75001b660", "6802ae860b4310c75001b662", "6802aec90b4310c75001b664"]}}}	2025-04-18 15:25:02.671-05	2025-04-18 14:51:02.617-05
5	global-header	{"fields": {"navItems": {"collapsed": ["6802b54f0b4310c75001b67c", "6802b4f90b4310c75001b67a", "6802ac8c1268ae4d5dc309e8", "6802b55f0b4310c75001b67e", "6802b5850b4310c75001b680"]}}}	2025-04-18 15:27:48.004-05	2025-04-18 15:27:48.004-05
6	categories-list	{"preset": null}	2025-04-18 15:28:57.208-05	2025-04-18 15:28:57.208-05
7	users-list	{"preset": null}	2025-04-18 15:29:12.816-05	2025-04-18 15:29:12.816-05
8	nav	{"groups": {"Globals": {"open": true}}}	2025-04-18 15:29:17.218-05	2025-04-18 15:29:16.568-05
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
1	\N	1	user	1
21	\N	4	user	1
30	\N	3	user	1
31	\N	2	user	1
32	\N	5	user	1
33	\N	6	user	1
34	\N	7	user	1
36	\N	8	user	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.posts (id, title, hero_image_id, content, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
1	Digital Horizons: A Glimpse into Tomorrow	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309c8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309c9", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309ca", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309cb", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	2	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-04-18 14:48:28.081-05	digital-horizons	t	2025-04-18 14:48:28.178-05	2025-04-18 14:48:28.081-05	published
2	Global Gaze: Beyond the Headlines	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d3", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d4", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-04-18 14:48:28.117-05	global-gaze	t	2025-04-18 14:48:28.204-05	2025-04-18 14:48:28.117-05	published
3	Dollar and Sense: The Financial Forecast	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d8", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309d9", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6802ac8c1268ae4d5dc309da", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	1	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-04-18 14:48:28.158-05	dollar-and-sense-the-financial-forecast	t	2025-04-18 14:48:28.24-05	2025-04-18 14:48:28.157-05	published
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.posts_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.posts_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
4	1	1	relatedPosts	2	\N	\N
5	2	1	relatedPosts	3	\N	\N
6	1	1	authors	\N	\N	2
7	1	2	relatedPosts	1	\N	\N
8	2	2	relatedPosts	3	\N	\N
9	1	2	authors	\N	\N	2
10	1	3	relatedPosts	1	\N	\N
11	2	3	relatedPosts	2	\N	\N
12	1	3	authors	\N	\N	2
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.redirects (id, "from", to_type, to_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.redirects_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kript1c
--

COPY public.users (id, name, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
1	Ron Goyette	2025-04-18 14:48:15.108-05	2025-04-18 14:48:15.008-05	ron@goyette.io	\N	\N	d5f6b4bc8106107646e00a3822c48af378e31e6076ed19cff77045d882dc0b90	f72f95a21e77e178c1f37e0a91955dba313970c3c18134c42fc583113f1a00bc6bd5ac704f09a7bcaa5f453122f767c3b96a63083c7dea139151507722acf9bf866a3f66e318270e81a24e1d8f0fa5e0ffaca8611d5476225badbdf021147f18c926a2d0a31e7bfb532b8ee267fa0392b2c8fdf1d484e5eb52531a9e53199c78f7288b62d1aaabd8cab7ece54eaf16bb3cd876b904e53406194091dee7d7839561ef4c63134daadac39611f97c32a3e11be32b13f4f9937b07c9c26a2fb76d095423cf05de91cf9cbca8a0dad38002c5f92be9601c5be602b3ea6642c32fa8cd26cf511a6178efbdec71a5350ff70b55fcd5c0c45d02817d5476d042a9b0ab502ae0d05408b1ac559468cfa1ff517c91069acaa64d5befefab6921bd7313a166700b8cb398d951f66f9ac9346f0bac3fa09dc62e971f2a50b3fc1dba35a79b507d3123406ae9b9459bd3a60933f09415d93a8a1bf061090f6ebbb568faa8675110902fdbfdddebf69416d39f755408ab92580914bbd77e8a237bd72f71669e27d57dd1f32c08fce23e4694168a3bcdf55b78997df7cd00437dc2941805511b02e537a679e2647c319ec4f8aa033f756867b253a24fb7bf16a77455c4275ddeed7f95c7158472bee901b8fd2b18d39a1fb6abeaf53145a7d3afb3e309e184ab668abb8c1fa09c2712d8a094ffcd11776df3cb1aea70ee2c2bebd6b5e06a8d9fc9	0	\N
2	Demo Author	2025-04-18 14:48:26.364-05	2025-04-18 14:48:26.132-05	demo-author@example.com	\N	\N	bb3bde83f5e01739f85552c9e915f499e3a9065ba6e2063579e5774324fd3769	edcfd86ed3a916ec4bce64f99ca417882f1b99ab3dae3cf79c6bfdbe6d5af3d769cc27256c2554e347d9b7248d4d71593498333357c771cf4de439332a6304f35c0035a77b3314507d8731330c098191e01259db65db0717b43e9e1090be1443b008fc5e8ce082e28fe554811ca2da5e4ad65e1d9e2abe634e6a2f67d9918c9716b868de62fa274fd4952588ed4ed85fc0a6bdee84559f7f96538866d2edfe8588eaa42588425f1046d31b5110b8a95d2c82e01689e556e900c92972e90753d586ee4028db441f6fc3f59ac18c53b6a06ffd53408026ab7b746623634e9cca75b6afd31fc53ee2893d15dc2aa33ee5a10b86a77e0ce1f0416a6e35f293d7361bfb74ce17345d318d4c44f52a9d1bbb62d3cbce59936e768b36a7127f014f6ca4411e46507de68dfa530b6a2593f88bcc9aa38b65497bc0ca487c9a09e618e86bf48f9f0e9c66b1f36b18e3b37673c2f1790d703da0462408fcb522fcdba12349c2bf083abe07015deb140e5ad39f51f92b3f4d77bfe53585a19da86415e07f3bd8b7f965d145c11d16076ecde6e3812da95cb5b3a9c1a937d9c9faa1e9ab349083612051c9854be768523ed10668da6391915390632a417f8cd89f9c44b72cd848a2a2ca6a3f424d8eb6beaa61316bd245981e3f93e70459bd6a097fe65e244de2aece9e34470508d39b5dbbb32c01f516ad9b7fb2f81eed5fbb5f69f603dde7	0	\N
\.


--
-- Name: _pages_v_blocks_about_main_detailed_credentials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_about_main_detailed_credentials_id_seq', 240, true);


--
-- Name: _pages_v_blocks_about_main_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_about_main_id_seq', 164, true);


--
-- Name: _pages_v_blocks_about_mini_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_about_mini_id_seq', 352, true);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 92, true);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 300, true);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 50, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 208, true);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 151, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 54, true);


--
-- Name: _pages_v_blocks_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_services_id_seq', 269, true);


--
-- Name: _pages_v_blocks_services_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_blocks_services_services_id_seq', 682, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 10, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 2, true);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 26, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._posts_v_id_seq', 6, true);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._posts_v_rels_id_seq', 12, true);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public._posts_v_version_populated_authors_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, true);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.header_id_seq', 1, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 9, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.media_id_seq', 8, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.pages_id_seq', 2, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 1, true);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.payload_jobs_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 306, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 605, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 8, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 36, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.posts_id_seq', 3, true);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.posts_rels_id_seq', 12, true);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.redirects_id_seq', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.redirects_rels_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kript1c
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: _pages_v_blocks_about_main_detailed_credentials _pages_v_blocks_about_main_detailed_credentials_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main_detailed_credentials
    ADD CONSTRAINT _pages_v_blocks_about_main_detailed_credentials_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_about_main _pages_v_blocks_about_main_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main
    ADD CONSTRAINT _pages_v_blocks_about_main_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_about_mini _pages_v_blocks_about_mini_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_mini
    ADD CONSTRAINT _pages_v_blocks_about_mini_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_services _pages_v_blocks_services_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services
    ADD CONSTRAINT _pages_v_blocks_services_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_services_services _pages_v_blocks_services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services_services
    ADD CONSTRAINT _pages_v_blocks_services_services_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: _posts_v _posts_v_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_rels _posts_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: categories_breadcrumbs categories_breadcrumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: footer_nav_items footer_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_pkey PRIMARY KEY (id);


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_pkey PRIMARY KEY (id);


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pkey PRIMARY KEY (id);


--
-- Name: footer_social_links footer_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_social_links
    ADD CONSTRAINT footer_social_links_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_pkey PRIMARY KEY (id);


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_main_detailed_credentials pages_blocks_about_main_detailed_credentials_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_main_detailed_credentials
    ADD CONSTRAINT pages_blocks_about_main_detailed_credentials_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_main pages_blocks_about_main_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_main
    ADD CONSTRAINT pages_blocks_about_main_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_mini pages_blocks_about_mini_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_mini
    ADD CONSTRAINT pages_blocks_about_mini_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services pages_blocks_services_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services_services pages_blocks_services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_services_services
    ADD CONSTRAINT pages_blocks_services_services_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs_log payload_jobs_log_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs payload_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_jobs
    ADD CONSTRAINT payload_jobs_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_populated_authors posts_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: posts_rels posts_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_pkey PRIMARY KEY (id);


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects
    ADD CONSTRAINT redirects_pkey PRIMARY KEY (id);


--
-- Name: redirects_rels redirects_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_about_main_detailed_credentials_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_main_detailed_credentials_order_idx ON public._pages_v_blocks_about_main_detailed_credentials USING btree (_order);


--
-- Name: _pages_v_blocks_about_main_detailed_credentials_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_main_detailed_credentials_parent_id_idx ON public._pages_v_blocks_about_main_detailed_credentials USING btree (_parent_id);


--
-- Name: _pages_v_blocks_about_main_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_main_media_idx ON public._pages_v_blocks_about_main USING btree (media_id);


--
-- Name: _pages_v_blocks_about_main_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_main_order_idx ON public._pages_v_blocks_about_main USING btree (_order);


--
-- Name: _pages_v_blocks_about_main_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_main_parent_id_idx ON public._pages_v_blocks_about_main USING btree (_parent_id);


--
-- Name: _pages_v_blocks_about_main_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_main_path_idx ON public._pages_v_blocks_about_main USING btree (_path);


--
-- Name: _pages_v_blocks_about_mini_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_mini_media_idx ON public._pages_v_blocks_about_mini USING btree (media_id);


--
-- Name: _pages_v_blocks_about_mini_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_mini_order_idx ON public._pages_v_blocks_about_mini USING btree (_order);


--
-- Name: _pages_v_blocks_about_mini_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_mini_parent_id_idx ON public._pages_v_blocks_about_mini USING btree (_parent_id);


--
-- Name: _pages_v_blocks_about_mini_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_about_mini_path_idx ON public._pages_v_blocks_about_mini USING btree (_path);


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_archive_order_idx ON public._pages_v_blocks_archive USING btree (_order);


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_archive_parent_id_idx ON public._pages_v_blocks_archive USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_archive_path_idx ON public._pages_v_blocks_archive USING btree (_path);


--
-- Name: _pages_v_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_content_columns_order_idx ON public._pages_v_blocks_content_columns USING btree (_order);


--
-- Name: _pages_v_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_content_columns_parent_id_idx ON public._pages_v_blocks_content_columns USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_cta_links_order_idx ON public._pages_v_blocks_cta_links USING btree (_order);


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_cta_links_parent_id_idx ON public._pages_v_blocks_cta_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_cta_order_idx ON public._pages_v_blocks_cta USING btree (_order);


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_cta_parent_id_idx ON public._pages_v_blocks_cta USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_cta_path_idx ON public._pages_v_blocks_cta USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_blocks_services_background_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_services_background_image_idx ON public._pages_v_blocks_services USING btree (background_image_id);


--
-- Name: _pages_v_blocks_services_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_services_order_idx ON public._pages_v_blocks_services USING btree (_order);


--
-- Name: _pages_v_blocks_services_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_services_parent_id_idx ON public._pages_v_blocks_services USING btree (_parent_id);


--
-- Name: _pages_v_blocks_services_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_services_path_idx ON public._pages_v_blocks_services USING btree (_path);


--
-- Name: _pages_v_blocks_services_services_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_services_services_order_idx ON public._pages_v_blocks_services_services USING btree (_order);


--
-- Name: _pages_v_blocks_services_services_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_blocks_services_services_parent_id_idx ON public._pages_v_blocks_services_services USING btree (_parent_id);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_rels_categories_id_idx ON public._pages_v_rels USING btree (categories_id);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_rels_posts_id_idx ON public._pages_v_rels USING btree (posts_id);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v USING btree (version_meta_image_id);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v USING btree (version_slug);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: _posts_v_autosave_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_autosave_idx ON public._posts_v USING btree (autosave);


--
-- Name: _posts_v_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_created_at_idx ON public._posts_v USING btree (created_at);


--
-- Name: _posts_v_latest_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_latest_idx ON public._posts_v USING btree (latest);


--
-- Name: _posts_v_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_parent_idx ON public._posts_v USING btree (parent_id);


--
-- Name: _posts_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_rels_categories_id_idx ON public._posts_v_rels USING btree (categories_id);


--
-- Name: _posts_v_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_rels_order_idx ON public._posts_v_rels USING btree ("order");


--
-- Name: _posts_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_rels_parent_idx ON public._posts_v_rels USING btree (parent_id);


--
-- Name: _posts_v_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_rels_path_idx ON public._posts_v_rels USING btree (path);


--
-- Name: _posts_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_rels_posts_id_idx ON public._posts_v_rels USING btree (posts_id);


--
-- Name: _posts_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_rels_users_id_idx ON public._posts_v_rels USING btree (users_id);


--
-- Name: _posts_v_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_updated_at_idx ON public._posts_v USING btree (updated_at);


--
-- Name: _posts_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_meta_version_meta_image_idx ON public._posts_v USING btree (version_meta_image_id);


--
-- Name: _posts_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_populated_authors_order_idx ON public._posts_v_version_populated_authors USING btree (_order);


--
-- Name: _posts_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_populated_authors_parent_id_idx ON public._posts_v_version_populated_authors USING btree (_parent_id);


--
-- Name: _posts_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_version__status_idx ON public._posts_v USING btree (version__status);


--
-- Name: _posts_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_version_created_at_idx ON public._posts_v USING btree (version_created_at);


--
-- Name: _posts_v_version_version_hero_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_version_hero_image_idx ON public._posts_v USING btree (version_hero_image_id);


--
-- Name: _posts_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_version_slug_idx ON public._posts_v USING btree (version_slug);


--
-- Name: _posts_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX _posts_v_version_version_updated_at_idx ON public._posts_v USING btree (version_updated_at);


--
-- Name: categories_breadcrumbs_doc_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_breadcrumbs_doc_idx ON public.categories_breadcrumbs USING btree (doc_id);


--
-- Name: categories_breadcrumbs_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_breadcrumbs_order_idx ON public.categories_breadcrumbs USING btree (_order);


--
-- Name: categories_breadcrumbs_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_breadcrumbs_parent_id_idx ON public.categories_breadcrumbs USING btree (_parent_id);


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_created_at_idx ON public.categories USING btree (created_at);


--
-- Name: categories_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_parent_idx ON public.categories USING btree (parent_id);


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_slug_idx ON public.categories USING btree (slug);


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX categories_updated_at_idx ON public.categories USING btree (updated_at);


--
-- Name: footer_nav_items_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_nav_items_order_idx ON public.footer_nav_items USING btree (_order);


--
-- Name: footer_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_nav_items_parent_id_idx ON public.footer_nav_items USING btree (_parent_id);


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_rels_order_idx ON public.footer_rels USING btree ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_rels_pages_id_idx ON public.footer_rels USING btree (pages_id);


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_rels_parent_idx ON public.footer_rels USING btree (parent_id);


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_rels_path_idx ON public.footer_rels USING btree (path);


--
-- Name: footer_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_rels_posts_id_idx ON public.footer_rels USING btree (posts_id);


--
-- Name: footer_social_links_icon_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_social_links_icon_idx ON public.footer_social_links USING btree (icon_id);


--
-- Name: footer_social_links_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_social_links_order_idx ON public.footer_social_links USING btree (_order);


--
-- Name: footer_social_links_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX footer_social_links_parent_id_idx ON public.footer_social_links USING btree (_parent_id);


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_nav_items_order_idx ON public.header_nav_items USING btree (_order);


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_nav_items_parent_id_idx ON public.header_nav_items USING btree (_parent_id);


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_rels_order_idx ON public.header_rels USING btree ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_rels_pages_id_idx ON public.header_rels USING btree (pages_id);


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_rels_parent_idx ON public.header_rels USING btree (parent_id);


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_rels_path_idx ON public.header_rels USING btree (path);


--
-- Name: header_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX header_rels_posts_id_idx ON public.header_rels USING btree (posts_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_sizes_large_sizes_large_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_large_sizes_large_filename_idx ON public.media USING btree (sizes_large_filename);


--
-- Name: media_sizes_medium_sizes_medium_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_medium_sizes_medium_filename_idx ON public.media USING btree (sizes_medium_filename);


--
-- Name: media_sizes_og_sizes_og_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_og_sizes_og_filename_idx ON public.media USING btree (sizes_og_filename);


--
-- Name: media_sizes_small_sizes_small_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_small_sizes_small_filename_idx ON public.media USING btree (sizes_small_filename);


--
-- Name: media_sizes_square_sizes_square_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_square_sizes_square_filename_idx ON public.media USING btree (sizes_square_filename);


--
-- Name: media_sizes_thumbnail_sizes_thumbnail_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_thumbnail_sizes_thumbnail_filename_idx ON public.media USING btree (sizes_thumbnail_filename);


--
-- Name: media_sizes_xlarge_sizes_xlarge_filename_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_sizes_xlarge_sizes_xlarge_filename_idx ON public.media USING btree (sizes_xlarge_filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_about_main_detailed_credentials_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_main_detailed_credentials_order_idx ON public.pages_blocks_about_main_detailed_credentials USING btree (_order);


--
-- Name: pages_blocks_about_main_detailed_credentials_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_main_detailed_credentials_parent_id_idx ON public.pages_blocks_about_main_detailed_credentials USING btree (_parent_id);


--
-- Name: pages_blocks_about_main_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_main_media_idx ON public.pages_blocks_about_main USING btree (media_id);


--
-- Name: pages_blocks_about_main_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_main_order_idx ON public.pages_blocks_about_main USING btree (_order);


--
-- Name: pages_blocks_about_main_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_main_parent_id_idx ON public.pages_blocks_about_main USING btree (_parent_id);


--
-- Name: pages_blocks_about_main_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_main_path_idx ON public.pages_blocks_about_main USING btree (_path);


--
-- Name: pages_blocks_about_mini_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_mini_media_idx ON public.pages_blocks_about_mini USING btree (media_id);


--
-- Name: pages_blocks_about_mini_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_mini_order_idx ON public.pages_blocks_about_mini USING btree (_order);


--
-- Name: pages_blocks_about_mini_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_mini_parent_id_idx ON public.pages_blocks_about_mini USING btree (_parent_id);


--
-- Name: pages_blocks_about_mini_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_about_mini_path_idx ON public.pages_blocks_about_mini USING btree (_path);


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_archive_order_idx ON public.pages_blocks_archive USING btree (_order);


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_archive_parent_id_idx ON public.pages_blocks_archive USING btree (_parent_id);


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_archive_path_idx ON public.pages_blocks_archive USING btree (_path);


--
-- Name: pages_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_content_columns_order_idx ON public.pages_blocks_content_columns USING btree (_order);


--
-- Name: pages_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_content_columns_parent_id_idx ON public.pages_blocks_content_columns USING btree (_parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_cta_links_order_idx ON public.pages_blocks_cta_links USING btree (_order);


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_cta_links_parent_id_idx ON public.pages_blocks_cta_links USING btree (_parent_id);


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_cta_order_idx ON public.pages_blocks_cta USING btree (_order);


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_cta_parent_id_idx ON public.pages_blocks_cta USING btree (_parent_id);


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_cta_path_idx ON public.pages_blocks_cta USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_blocks_services_background_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_services_background_image_idx ON public.pages_blocks_services USING btree (background_image_id);


--
-- Name: pages_blocks_services_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_services_order_idx ON public.pages_blocks_services USING btree (_order);


--
-- Name: pages_blocks_services_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_services_parent_id_idx ON public.pages_blocks_services USING btree (_parent_id);


--
-- Name: pages_blocks_services_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_services_path_idx ON public.pages_blocks_services USING btree (_path);


--
-- Name: pages_blocks_services_services_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_services_services_order_idx ON public.pages_blocks_services_services USING btree (_order);


--
-- Name: pages_blocks_services_services_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_blocks_services_services_parent_id_idx ON public.pages_blocks_services_services USING btree (_parent_id);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages USING btree (meta_image_id);


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_rels_categories_id_idx ON public.pages_rels USING btree (categories_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_rels_posts_id_idx ON public.pages_rels USING btree (posts_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_jobs_completed_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_completed_at_idx ON public.payload_jobs USING btree (completed_at);


--
-- Name: payload_jobs_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_created_at_idx ON public.payload_jobs USING btree (created_at);


--
-- Name: payload_jobs_has_error_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_has_error_idx ON public.payload_jobs USING btree (has_error);


--
-- Name: payload_jobs_log_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_log_order_idx ON public.payload_jobs_log USING btree (_order);


--
-- Name: payload_jobs_log_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_log_parent_id_idx ON public.payload_jobs_log USING btree (_parent_id);


--
-- Name: payload_jobs_processing_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_processing_idx ON public.payload_jobs USING btree (processing);


--
-- Name: payload_jobs_queue_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_queue_idx ON public.payload_jobs USING btree (queue);


--
-- Name: payload_jobs_task_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_task_slug_idx ON public.payload_jobs USING btree (task_slug);


--
-- Name: payload_jobs_total_tried_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_total_tried_idx ON public.payload_jobs USING btree (total_tried);


--
-- Name: payload_jobs_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_updated_at_idx ON public.payload_jobs USING btree (updated_at);


--
-- Name: payload_jobs_wait_until_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_jobs_wait_until_idx ON public.payload_jobs USING btree (wait_until);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_categories_id_idx ON public.payload_locked_documents_rels USING btree (categories_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_payload_jobs_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_payload_jobs_id_idx ON public.payload_locked_documents_rels USING btree (payload_jobs_id);


--
-- Name: payload_locked_documents_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_posts_id_idx ON public.payload_locked_documents_rels USING btree (posts_id);


--
-- Name: payload_locked_documents_rels_redirects_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_redirects_id_idx ON public.payload_locked_documents_rels USING btree (redirects_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: posts__status_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts__status_idx ON public.posts USING btree (_status);


--
-- Name: posts_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_created_at_idx ON public.posts USING btree (created_at);


--
-- Name: posts_hero_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_hero_image_idx ON public.posts USING btree (hero_image_id);


--
-- Name: posts_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_meta_meta_image_idx ON public.posts USING btree (meta_image_id);


--
-- Name: posts_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_populated_authors_order_idx ON public.posts_populated_authors USING btree (_order);


--
-- Name: posts_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_populated_authors_parent_id_idx ON public.posts_populated_authors USING btree (_parent_id);


--
-- Name: posts_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_rels_categories_id_idx ON public.posts_rels USING btree (categories_id);


--
-- Name: posts_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_rels_order_idx ON public.posts_rels USING btree ("order");


--
-- Name: posts_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_rels_parent_idx ON public.posts_rels USING btree (parent_id);


--
-- Name: posts_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_rels_path_idx ON public.posts_rels USING btree (path);


--
-- Name: posts_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_rels_posts_id_idx ON public.posts_rels USING btree (posts_id);


--
-- Name: posts_rels_users_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_rels_users_id_idx ON public.posts_rels USING btree (users_id);


--
-- Name: posts_slug_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_slug_idx ON public.posts USING btree (slug);


--
-- Name: posts_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX posts_updated_at_idx ON public.posts USING btree (updated_at);


--
-- Name: redirects_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_created_at_idx ON public.redirects USING btree (created_at);


--
-- Name: redirects_from_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_from_idx ON public.redirects USING btree ("from");


--
-- Name: redirects_rels_order_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_rels_order_idx ON public.redirects_rels USING btree ("order");


--
-- Name: redirects_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_rels_pages_id_idx ON public.redirects_rels USING btree (pages_id);


--
-- Name: redirects_rels_parent_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_rels_parent_idx ON public.redirects_rels USING btree (parent_id);


--
-- Name: redirects_rels_path_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_rels_path_idx ON public.redirects_rels USING btree (path);


--
-- Name: redirects_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_rels_posts_id_idx ON public.redirects_rels USING btree (posts_id);


--
-- Name: redirects_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX redirects_updated_at_idx ON public.redirects USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: kript1c
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _pages_v_blocks_about_main_detailed_credentials _pages_v_blocks_about_main_detailed_credentials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main_detailed_credentials
    ADD CONSTRAINT _pages_v_blocks_about_main_detailed_credentials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_about_main(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_about_main _pages_v_blocks_about_main_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main
    ADD CONSTRAINT _pages_v_blocks_about_main_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_about_main _pages_v_blocks_about_main_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_main
    ADD CONSTRAINT _pages_v_blocks_about_main_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_about_mini _pages_v_blocks_about_mini_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_mini
    ADD CONSTRAINT _pages_v_blocks_about_mini_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_about_mini _pages_v_blocks_about_mini_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_about_mini
    ADD CONSTRAINT _pages_v_blocks_about_mini_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_services _pages_v_blocks_services_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services
    ADD CONSTRAINT _pages_v_blocks_services_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_services _pages_v_blocks_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services
    ADD CONSTRAINT _pages_v_blocks_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_services_services _pages_v_blocks_services_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_blocks_services_services
    ADD CONSTRAINT _pages_v_blocks_services_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_services(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_parent_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_parent_id_posts_id_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE SET NULL;


--
-- Name: _posts_v_rels _posts_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: _posts_v _posts_v_version_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_hero_image_id_media_id_fk FOREIGN KEY (version_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_doc_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_doc_id_categories_id_fk FOREIGN KEY (doc_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories categories_parent_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_categories_id_fk FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: footer_nav_items footer_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: footer_social_links footer_social_links_icon_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_social_links
    ADD CONSTRAINT footer_social_links_icon_id_media_id_fk FOREIGN KEY (icon_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: footer_social_links footer_social_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.footer_social_links
    ADD CONSTRAINT footer_social_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_main_detailed_credentials pages_blocks_about_main_detailed_credentials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_main_detailed_credentials
    ADD CONSTRAINT pages_blocks_about_main_detailed_credentials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_about_main(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_main pages_blocks_about_main_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_main
    ADD CONSTRAINT pages_blocks_about_main_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_main pages_blocks_about_main_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_main
    ADD CONSTRAINT pages_blocks_about_main_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_mini pages_blocks_about_mini_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_mini
    ADD CONSTRAINT pages_blocks_about_mini_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_mini pages_blocks_about_mini_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_about_mini
    ADD CONSTRAINT pages_blocks_about_mini_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services pages_blocks_services_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_services pages_blocks_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services_services pages_blocks_services_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_blocks_services_services
    ADD CONSTRAINT pages_blocks_services_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_services(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages pages_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_jobs_log payload_jobs_log_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_jobs_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_payload_jobs_fk FOREIGN KEY (payload_jobs_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_redirects_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_redirects_fk FOREIGN KEY (redirects_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: posts posts_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts posts_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts_populated_authors posts_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: kript1c
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

