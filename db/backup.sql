--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: content; Type: SCHEMA; Schema: -; Owner: app
--

CREATE SCHEMA content;


ALTER SCHEMA content OWNER TO app;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.auth_group OWNER TO app;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO app;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_group_permissions OWNER TO app;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO app;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    content_type_id bigint,
    codename text,
    name text
);


ALTER TABLE public.auth_permission OWNER TO app;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO app;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password text,
    last_login timestamp with time zone,
    is_superuser boolean,
    username text,
    last_name text,
    email text,
    is_staff boolean,
    is_active boolean,
    date_joined timestamp with time zone,
    first_name text
);


ALTER TABLE public.auth_user OWNER TO app;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);


ALTER TABLE public.auth_user_groups OWNER TO app;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO app;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO app;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_user_user_permissions OWNER TO app;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO app;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: diary_diaryentry; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.diary_diaryentry (
    id bigint NOT NULL,
    date date,
    steps bigint,
    study_hours bigint
);


ALTER TABLE public.diary_diaryentry OWNER TO app;

--
-- Name: diary_diaryentry_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.diary_diaryentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diary_diaryentry_id_seq OWNER TO app;

--
-- Name: diary_diaryentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.diary_diaryentry_id_seq OWNED BY public.diary_diaryentry.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    action_time timestamp with time zone,
    object_id text,
    object_repr text,
    change_message text,
    content_type_id bigint,
    user_id bigint,
    action_flag smallint
);


ALTER TABLE public.django_admin_log OWNER TO app;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO app;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label text,
    model text
);


ALTER TABLE public.django_content_type OWNER TO app;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO app;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app text,
    name text,
    applied timestamp with time zone
);


ALTER TABLE public.django_migrations OWNER TO app;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO app;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.django_session (
    session_key text NOT NULL,
    session_data text,
    expire_date timestamp with time zone
);


ALTER TABLE public.django_session OWNER TO app;

--
-- Name: lessons_chapter; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.lessons_chapter (
    id bigint NOT NULL,
    number integer,
    name text
);


ALTER TABLE public.lessons_chapter OWNER TO app;

--
-- Name: lessons_chapter_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.lessons_chapter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_chapter_id_seq OWNER TO app;

--
-- Name: lessons_chapter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.lessons_chapter_id_seq OWNED BY public.lessons_chapter.id;


--
-- Name: lessons_lesson; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.lessons_lesson (
    id bigint NOT NULL,
    title text,
    content text,
    "order" integer,
    chapter_order integer,
    chapter_id bigint
);


ALTER TABLE public.lessons_lesson OWNER TO app;

--
-- Name: lessons_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.lessons_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_lesson_id_seq OWNER TO app;

--
-- Name: lessons_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.lessons_lesson_id_seq OWNED BY public.lessons_lesson.id;


--
-- Name: lessons_userlessonprogress; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.lessons_userlessonprogress (
    id bigint NOT NULL,
    completed boolean,
    lesson_id bigint,
    user_id bigint
);


ALTER TABLE public.lessons_userlessonprogress OWNER TO app;

--
-- Name: lessons_userlessonprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.lessons_userlessonprogress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_userlessonprogress_id_seq OWNER TO app;

--
-- Name: lessons_userlessonprogress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.lessons_userlessonprogress_id_seq OWNED BY public.lessons_userlessonprogress.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: diary_diaryentry id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.diary_diaryentry ALTER COLUMN id SET DEFAULT nextval('public.diary_diaryentry_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: lessons_chapter id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_chapter ALTER COLUMN id SET DEFAULT nextval('public.lessons_chapter_id_seq'::regclass);


--
-- Name: lessons_lesson id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_lesson ALTER COLUMN id SET DEFAULT nextval('public.lessons_lesson_id_seq'::regclass);


--
-- Name: lessons_userlessonprogress id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_userlessonprogress ALTER COLUMN id SET DEFAULT nextval('public.lessons_userlessonprogress_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_diaryentry	Can add diary entry
26	7	change_diaryentry	Can change diary entry
27	7	delete_diaryentry	Can delete diary entry
28	7	view_diaryentry	Can view diary entry
29	8	add_chapter	Can add Chapter
30	8	change_chapter	Can change Chapter
31	8	delete_chapter	Can delete Chapter
32	8	view_chapter	Can view Chapter
33	9	add_lesson	Can add Lesson
34	9	change_lesson	Can change Lesson
35	9	delete_lesson	Can delete Lesson
36	9	view_lesson	Can view Lesson
37	10	add_userlessonprogress	Can add UserLessonProgress
38	10	change_userlessonprogress	Can change UserLessonProgress
39	10	delete_userlessonprogress	Can delete UserLessonProgress
40	10	view_userlessonprogress	Can view UserLessonProgress
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$600000$8ZA2QC9tZFTf3WdIRYDMf8$5Hypin/GH0XzeAD61r/1vJmnkhKA3VCJPKm3GIwz7TQ=	\N	t	tier		tier@gmail.com	t	t	2024-03-21 18:26:22.799216+00	
2	pbkdf2_sha256$600000$S3rQEZtHlfKHOCGne9fBW9$N5VSyYn1Y/DsmGee76hhS81yw+27m4jD+hZqjuHvjM4=	2024-04-05 11:12:53.679998+00	t	admin			t	t	2024-03-21 18:26:51.9218+00	
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: diary_diaryentry; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.diary_diaryentry (id, date, steps, study_hours) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
1	2024-03-21 18:33:01.352939+00	1	0. Podstawy Pythona	[{"added": {}}]	8	2	1
2	2024-03-21 18:33:18.080352+00	2	1. Podstawy Pygame	[{"added": {}}]	8	2	1
3	2024-03-21 20:00:59.152572+00	1	intro	[{"added": {}}]	9	2	1
4	2024-03-21 20:01:38.634702+00	2	Podstawy pracy z zmiennymi	[{"added": {}}]	9	2	1
5	2024-03-21 20:02:27.32458+00	3	Wprowadzenie Pygame	[{"added": {}}]	9	2	1
6	2024-03-21 20:02:38.25362+00	3	Wprowadzenie Pygame	[{"changed": {"fields": ["Order"]}}]	9	2	2
7	2024-03-21 20:02:55.028671+00	2	Podstawy pracy z zmiennymi	[]	9	2	2
8	2024-03-22 21:01:09.388746+00	1	intro	[]	9	2	2
9	2024-03-22 21:01:27.353556+00	1	intro	[]	9	2	2
10	2024-03-22 21:10:32.596829+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
11	2024-03-22 21:14:10.163717+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
12	2024-03-22 21:15:24.142983+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
13	2024-03-22 21:16:19.282567+00	1	intro	[]	9	2	2
14	2024-03-22 21:17:11.843596+00	2	Podstawy pracy z zmiennymi	[{"changed": {"fields": ["Content"]}}]	9	2	2
15	2024-03-26 15:39:48.971337+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
16	2024-03-26 15:40:27.955239+00	2	Podstawy pracy z zmiennymi	[{"changed": {"fields": ["Content"]}}]	9	2	2
17	2024-03-26 15:43:56.991128+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
18	2024-03-26 16:00:24.308574+00	1	intro	[]	9	2	2
19	2024-03-26 16:01:34.960705+00	1	intro	[]	9	2	2
20	2024-03-26 16:03:40.632119+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
21	2024-03-26 16:15:50.637904+00	1	intro	[]	9	2	2
22	2024-03-26 16:17:24.378318+00	1	intro	[{"changed": {"fields": ["Content"]}}]	9	2	2
23	2024-03-26 16:49:07.242316+00	2	Podstawy pracy z zmiennymi	[]	9	2	2
24	2024-03-26 17:28:15.851786+00	1	UserLessonProgress object (1)	[{"added": {}}]	10	2	1
25	2024-03-26 17:28:23.59464+00	2	UserLessonProgress object (2)	[{"added": {}}]	10	2	1
26	2024-03-26 17:28:36.49558+00	3	UserLessonProgress object (3)	[{"added": {}}]	10	2	1
27	2024-03-26 17:28:41.411523+00	2	UserLessonProgress object (2)	[{"changed": {"fields": ["Completed"]}}]	10	2	2
28	2024-04-02 16:37:06.963231+00	4	UserLessonProgress object (4)	[{"added": {}}]	10	2	1
29	2024-04-02 16:37:16.502768+00	5	UserLessonProgress object (5)	[{"added": {}}]	10	2	1
30	2024-04-02 16:37:24.274896+00	6	UserLessonProgress object (6)	[{"added": {}}]	10	2	1
31	2024-04-02 16:37:33.342274+00	7	UserLessonProgress object (7)	[{"added": {}}]	10	2	1
32	2024-04-02 16:37:42.705996+00	8	UserLessonProgress object (8)	[{"added": {}}]	10	2	1
33	2024-04-02 16:38:53.489969+00	9	UserLessonProgress object (9)	[{"added": {}}]	10	2	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	diary	diaryentry
8	lessons	chapter
9	lessons	lesson
10	lessons	userlessonprogress
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-09-07 14:19:32.263661+00
2	auth	0001_initial	2023-09-07 14:19:32.282145+00
3	admin	0001_initial	2023-09-07 14:19:32.292724+00
4	admin	0002_logentry_remove_auto_add	2023-09-07 14:19:32.301915+00
5	admin	0003_logentry_add_action_flag_choices	2023-09-07 14:19:32.312566+00
6	contenttypes	0002_remove_content_type_name	2023-09-07 14:19:32.330601+00
7	auth	0002_alter_permission_name_max_length	2023-09-07 14:19:32.340997+00
8	auth	0003_alter_user_email_max_length	2023-09-07 14:19:32.349963+00
9	auth	0004_alter_user_username_opts	2023-09-07 14:19:32.356625+00
10	auth	0005_alter_user_last_login_null	2023-09-07 14:19:32.366577+00
11	auth	0006_require_contenttypes_0002	2023-09-07 14:19:32.368551+00
12	auth	0007_alter_validators_add_error_messages	2023-09-07 14:19:32.37492+00
13	auth	0008_alter_user_username_max_length	2023-09-07 14:19:32.385606+00
14	auth	0009_alter_user_last_name_max_length	2023-09-07 14:19:32.394979+00
15	auth	0010_alter_group_name_max_length	2023-09-07 14:19:32.405089+00
16	auth	0011_update_proxy_permissions	2023-09-07 14:19:32.411084+00
17	auth	0012_alter_user_first_name_max_length	2023-09-07 14:19:32.4197+00
18	sessions	0001_initial	2023-09-07 14:19:32.424448+00
19	diary	0001_initial	2024-03-12 15:10:10.655903+00
20	lessons	0001_initial	2024-03-12 15:10:10.670888+00
21	lessons	0002_alter_lesson_options_and_more	2024-03-12 18:56:45.819875+00
22	lessons	0003_lesson_chapter_lesson_chapter_order_and_more	2024-03-20 12:58:16.720727+00
23	lessons	0004_chapter_alter_lesson_chapter	2024-03-21 18:27:11.938337+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
8a2i9tvs8lup5r21knp6z1jjcjqoar0v	.eJxVjDsOwjAQBe_iGllefxNKes5g7XptHECOFCcV4u4QKQW0b2beS0Tc1hq3npc4sTgLLU6_G2F65LYDvmO7zTLNbV0mkrsiD9rldeb8vBzu30HFXr91IfCW3aCAC2AxwZYRmQIqbZwJiopJyoPOxWUIWSfF4IYAfmQfLJJ4fwDn3DfE:1rs6DO:AVkv2djsbbOTj5N1cOGhVe8BDvhkLe4JK0KSEJGLz4c	2024-04-17 19:24:06.091368+00
wiqsreapo7qmftqekm5x5wbj2zoxg9lw	.eJxVjDsOwjAQBe_iGllefxNKes5g7XptHECOFCcV4u4QKQW0b2beS0Tc1hq3npc4sTgLLU6_G2F65LYDvmO7zTLNbV0mkrsiD9rldeb8vBzu30HFXr91IfCW3aCAC2AxwZYRmQIqbZwJiopJyoPOxWUIWSfF4IYAfmQfLJJ4fwDn3DfE:1rsNkE:C6QsD8UyE7H4FXD8z41Ry0DWZ8otNDChGpR0VkoQvzk	2024-04-18 14:07:10.917593+00
06wqvsbq1fqj4sq6q18ka68ja97xaoef	.eJxVjEEOwiAQRe_C2pACLQwu3XsGMtMZpGpKUtqV8e7apAvd_vfef6mE21rS1mRJE6uzsur0uxGOD5l3wHecb1WPdV6XifSu6IM2fa0sz8vh_h0UbOVbx2zJ9UCOLJEg-Oxt9kAGu5jZQYche5YgZAbpQ8AIzLn3JCYCDKTeHwHkOK8:1rsUBM:keRwQZu9CQEBDfXxBd-GUhhepWT1W6BVSH4N2l2I1O0	2024-04-18 20:59:36.055038+00
12xsz0h1t00oq6hhxq63nmtwy5i0cf8j	.eJxVjEEOwiAQRe_C2pACLQwu3XsGMtMZpGpKUtqV8e7apAvd_vfef6mE21rS1mRJE6uzsur0uxGOD5l3wHecb1WPdV6XifSu6IM2fa0sz8vh_h0UbOVbx2zJ9UCOLJEg-Oxt9kAGu5jZQYche5YgZAbpQ8AIzLn3JCYCDKTeHwHkOK8:1rshV7:9Jab38qFr9ncmLN2z0FN4Yt7Etxz35_i2GNzPhDGWeo	2024-04-19 11:12:53.682145+00
\.


--
-- Data for Name: lessons_chapter; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.lessons_chapter (id, number, name) FROM stdin;
1	0	Podstawy Pythona
2	1	Podstawy Pygame
\.


--
-- Data for Name: lessons_lesson; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.lessons_lesson (id, title, content, "order", chapter_order, chapter_id) FROM stdin;
273	Pierwszy program w Pythonie na Replit	## Dlaczego warto uczyć się Pythona?\n\nPython to super język programowania dla początkujących, który jest bardzo popularny na całym świecie. Jest prosty do zrozumienia, jakbyś pisał zwykłe zdania po polsku, a przy tym jest bardzo mocny – możesz za jego pomocą robić gry, programy, a nawet sterować robotami! Python jest jak magiczny wężyk, który pomaga tworzyć nowe, niesamowite rzeczy w komputerze. Dlatego warto go poznać i nauczyć się nim posługiwać. Kto wie, może kiedyś dzięki Pythonowi stworzysz coś, co zmieni świat!\n\n⚠️ Uczymy się języka Python3, ponieważ pozostałe wersje tego języka są już przestarzałe i nie są wspierane.\n\n\n\n## Krok 1: Rejestracja na Replit\n1. Wejdź na stronę [Replit](https://replit.com/).\n2. Kliknij przycisk "Sign up" (Zarejestruj się) w prawym górnym rogu strony.\n3. Wypełnij wszystkie potrzebne pola lub zarejestruj się za pomocą Google, GitHub.\n4. Potwierdź swój adres e-mail, jeśli zostaniesz o to poproszony.\n\n## Krok 2: Tworzenie nowego projektu\n1. Po zalogowaniu kliknij przycisk "+ New Repl" (Nowy Repl).\n2. W oknie, które się otworzy, wybierz język "Python".\n3. Nadaj swojemu projektowi nazwę, na przykład "HelloWorld".\n4. Kliknij przycisk "Create Repl" (Stwórz Repl).\n\n## Krok 3: Pisanie kodu\n1. W centralnym oknie zobaczysz miejsce, w którym możesz pisać swój kod.\n2. Usuń wszelki kod, który może być tam już napisany.\n3. Wpisz następujący kod:\n```python\nprint("Hello, World!")\n```\n\n## Krok 4: Uruchamianie kodu\n1. Po wpisaniu kodu naciśnij zielony przycisk "Run" (Uruchom), który znajduje się w górnej części ekranu.\n2. Na dole ekranu zobaczysz wynik działania twojego programu. Powinien wyglądać tak:\n\nHello, World!\n\n**Gratulacje!** Właśnie napisałeś i uruchomiłeś swoją pierwszą program w Pythonie na Replit!\n\n\n	0	0	1
274	Podstawy pracy z zmiennymi	\nW tej lekcji przyjrzymy się podstawom pracy ze zmiennymi w Pythonie. Zmienne to fundament każdego programu, i zrozumienie, jak działają, jest niezwykle ważne dla początkującego programisty.\n\n## Wyświetlanie informacji na ekranie\n\nDo wyświetlania informacji na ekranie w Pythonie służy funkcja `print()`.\nJuż użyliśmy jej w poprzedniej lekcji.\n\nFunkcja `print()` służy do wyświetlania informacji na ekranie. Kiedy wpisujemy `print("Hello, World!")`, mówimy Pythonowi: "Hej, wydrukuj na ekranie te słowa między cudzysłowami". Ważne jest, aby pamiętać, że nie ma spacji między nazwą funkcji `print` a nawiasem otwierającym - są one zawsze zapisywane razem, bezpośrednio jeden za drugim. To tak, jakbyś mówił do przyjaciela "powiedz to", a nie "powiedz... to" - słowo i nawias muszą iść razem, aby Python zrozumiał, że chcesz coś wydrukować.\n\n\nPrzykład:\n\n```python\nprint("Hello, World!")\n```\n\nKiedy uruchomisz ten kod, na ekranie pojawi się tekst "Hello, World!".\n\n## Deklarowanie zmiennych\n\nZmienna to sposób na przechowywanie danych do ich późniejszego wykorzystania.\nDla uproszczenia możesz sobie wyobrazić, że zmienna to rodzaj\n"pudełka", w którym możesz przechowywać wartości.\nAby zapisać wartość wyrażenia w zmiennej, użyj instrukcji przypisania.\nWpisz nazwę zmiennej, potem znak równości (=), który nazywamy operatorem\nprzypisania, a na końcu wartość. Na przykład, wpisz w interaktywnej konsoli\nnastępującą komendę:\n\n```python\nspam = 15\n```\n\n![obrazek1](/static/article_images/pl/u1_img1.png)\n\n⚠️TODO zwrócić uwagę na to, że spacje są wokół znaku równości.\n\nTeraz spróbujmy zapisać w zmiennej tekst, a nie liczbę.\nPrzykład:\n\n```python\nname = "Jan"\nsurname = "Kowalski"\n```\n\nW tym przykładzie stworzyliśmy zmienną o nazwie `name` i przypisaliśmy jej wartość "Jan", oraz zmienną o nazwie `surname` i przypisaliśmy jej wartość "Kowalski".\n\nUżywamy liter alfabetu angielskiego dla nazw zmiennych, co pozwala na stworzenie uniwersalnego języka dla programistów na całym świecie.\nZawartość zmiennej może być w dowolnym języku.\n\n## Zasady i wskazówki dotyczące wyboru nazw zmiennych:\n\n📛 **Nazwa zmiennej powinna być zrozumiała:**\nUżywaj nazw, które pomogą Tobie i innym zrozumieć, do czego służy zmienna. Na przykład, `score` dla wyniku w grze.\n\n🔡 **Używaj tylko liter, cyfr i podkreśleń:**\nZmienne mogą zawierać tylko litery (a-z, A-Z), cyfry (0-9) i podkreślenia (_). Na przykład, `player1_score`.\n\n🚫 **Nie zaczynaj nazwy od cyfry:**\nNazwa zmiennej nie może się zaczynać od cyfry. Więc `1st_player` jest niepoprawne, ale `first_player` lub `player1` są w porządku.\n\n🐫 **Używaj podkreśleń dla nazw składających się z kilku słów:**\nJeśli nazwa zmiennej składa się z dwóch lub więcej słów, łącz je podkreśleniem, na przykład `player_name` lub `game_score`.\n\n🔠 **Wielkość liter ma znaczenie:**\nPamiętaj, że `score` i `Score` to różne zmienne, ponieważ Python rozróżnia wielkość liter.\n\n🚷 **Unikaj używania zarezerwowanych słów:**\nIstnieją słowa, które Python używa dla swoich potrzeb, takie jak `print`. Nie używaj ich jako nazw zmiennych, aby uniknąć pomyłek.\n\n🎉 **Przykłady dobrych nazw zmiennych:**\n`lives_left`: liczba pozostałych żyć w grze.\n`total_score`: całkowity wynik.\n`best_player`: najlepszy gracz.\n`is_game_over`: flaga wskazująca, czy gra się skończyła.\n\n🚨 **Przykłady złych nazw zmiennych:**\n`a`: nie wiadomo, do czego służy ta zmienna.\n`1st_player`: zaczyna się od cyfry.\n`player-name`: używa myślnika zamiast podkreślenia.\n`print`: to zarezerwowane słowo w Pythonie.\n\n## Typy danych\n\nW Pythonie mamy kilka podstawowych typów danych:\n\n### Łańcuchy znaków\n\nŁańcuchy znaków służą do przechowywania informacji tekstowych.\n\nPrzykłady:\n\n```python\nmy_string = 'abc 123'\nanother_str = "nowa"\nsuper_str = '''Pierwszy wiersz\nDrugi wiersz'''\nbig_text = """Tutaj mamy bardzo długi tekst\nktóry nigdy nie zmieści się w jednej linii"""\n```\n\n### Liczby całkowite (int)\n\nTo są liczby bez części dziesiętnej.\n\nPrzykład:\n\n```python\nage = 10\n```\n\n### Liczby zmiennoprzecinkowe (float)\n\nTo liczby, które mają część dziesiętną.\n\nPrzykład:\n\n```python\nweight = 45.5\n```\n⚠️ TODO zwrócić uwagę na to, że używamy kropki, a nie przecinka.\n\n### Wartości logiczne\n\nTo proste wartości, które mogą być albo `True` (prawda), albo `False` (fałsz).\n\nPrzykład:\n\n```python\nhas_homework = True\n```\n\n⚠️ TODO wyjaśnić, że funkcja `print` może przyjmować wiele argumentów.\n\n```python\nprint("Cześć", name)\nCześć Anna\n```\n\n❓ Możliwe, że należy podzielić tę lekcję na dwie części: zmienne tekstowe i inne typy zmiennych.\n\n## Zadania\n\n### Zadanie 1: Wyświetlanie informacji na ekranie\n\n1. Wyświetl na ekranie swoje imię.\n2. Wyświetl na ekranie swój wiek.\n3. Wyświetl na ekranie swoje ulubione zwierzę.\n\n### Zadanie 2: Deklarowanie zmiennych\n\n1. Utwórz zmienną `fruit` i przypisz jej wartość swojego ulubionego owocu.\n2. Utwórz zmienną `number` i przypisz jej wartość swojej ulubionej liczby.\n3. Wyświetl na ekranie obie zmienne przy pomocy funkcji `print()`.\n\n### Zadanie 3: Typy danych\n\n1. **Łańcuchy znaków**:\n   - Utwórz zmienną tekstową `song` i przypisz jej tytuł swojej ulubionej piosenki.\n   - Utwórz wieloliniową zmienną tekstową `poem` i napisz w niej krótki wiersz lub czterowiersz.\n   - Wyświetl obie zmienne na ekranie.\n\n2. **Liczby całkowite (int)**:\n   - Utwórz zmienną `year` i przypisz jej rok swojego urodzenia.\n   - Utwórz zmienną `shoes_size` i przypisz jej rozmiar swojego obuwia.\n   - Wyświetl różnicę między bieżącym rokiem a rokiem swojego urodzenia.\n\n3. **Liczby zmiennoprzecinkowe (float)**:\n   - Utwórz zmienną `height` i przypisz jej swój wzrost\n  \n   \nOczywiście, oto opis zadania po polsku:\n\n---\n### Zadanie 4: Rozpoznawanie Poprawnych Nazw Zmiennych w Pythonie\n\nSpójrz na poniższą listę zmiennych i zdecyduj, które z nich są prawidłowe, a które nie:\n\n1. `user_id`\n2. `123score`\n3. `average_height`\n4. `total-score`\n5. `MaxScore`\n6. `email_address`\n7. `isActive`\n8. `player_name`\n9. `temperature`\n10. `user@id`\n11. `car_speed`\n12. `print`\n13. `final result`\n14. `total_games`\n15. `email.address`\n16. `user name`\n17. `is_active`\n18. `Temperature!`\n19. `max_score`\n20. `final_result`\n\nTwoim zadaniem jest przeanalizować każdą zmienną i zdecydować, czy jest ona napisana zgodnie z zasadami nazewnictwa zmiennych w Pythonie, czy też nie. Pamiętaj, że poprawne nazwy zmiennych nie powinny zaczynać się od cyfr, zawierać spacji czy znaków specjalnych, a także nie mogą być słowami zarezerwowanymi w Pythonie.\n	1	1	1
275	Konwersja typów danych i wprowadzanie danych	\r\nW tej lekcji przyjrzymy się, jak konwertować różne typy danych oraz jak odbierać dane od użytkownika przy pomocy funkcji `input()`.\r\n\r\n## Określanie typu danych zmiennej\r\n\r\nCzasami musimy określić typ danych, aby zrozumieć, jakie operacje można zastosować do zmiennej.\r\nFunkcja **type()** w Pythonie rozwiązuje ten problem.\r\nTo funkcja jest jak "magiczne okulary", które pozwalają nam zobaczyć, z czego zrobiona jest rzecz w świecie Pythona.\r\nGdy patrzymy na zmienną przez te okulary (czyli używamy funkcji type()), możemy dowiedzieć się, czy zmienna jest tekstem,\r\nliczbą, listą czy czymś innym. Pomaga to zrozumieć, co możemy zrobić z tą zmienną i jak z nią pracować.\r\n\r\n```python\r\nname = 'Sasha'\r\nprint(type(name))  # <class 'str'>\r\n```\r\n\r\nPatrzymy na nazwę typu, który type() zwraca w cudzysłowach, dla zmiennej **name** otrzymaliśmy **str**.\r\n\r\n## Konwersja typów danych\r\n\r\nCzasami potrzebujemy zmienić typ danych. Na przykład, przekształcić tekst na liczbę lub odwrotnie. Python ma specjalne funkcje do tego.\r\n\r\nPrzykłady:\r\n\r\n```python\r\nnumber_str = "123"\r\nprint(type(number_str))  # <class 'str'>\r\nnumber_int = int(number_str)\r\nprint(type(number_int))  # <class 'int'>\r\n\r\ntext = str(456)\r\nprint(type(text))  # <class 'str'>\r\n```\r\n\r\nW pierwszym przykładzie przekształciliśmy tekst "123" na liczbę 123, a w drugim przykładzie przekształciliśmy liczbę 456 na tekst "456".\r\n\r\n## Wprowadzanie danych za pomocą input()\r\n\r\nFunkcja `input()` umożliwia otrzymywanie danych od użytkownika. Gdy program się uruchamia, oczekuje, aż użytkownik coś wpisze.\r\n\r\nPrzykład:\r\n\r\n```python\r\nname = input("Wprowadź swoje imię: ")\r\nprint("Cześć", name)\r\n```\r\n\r\nW tym przykładzie program poprosi Cię o wprowadzenie imienia, a następnie przywita Cię.\r\n\r\n---\r\n\r\n## Zadania do lekcji 2: Konwersja typów danych i wprowadzanie danych\r\n\r\n### Zadanie 1: Konwersja typów danych\r\n\r\n1. Utwórz zmienną z tekstem "100" i przekształć ją na liczbę. Wyświetl na ekranie typ uzyskanej zmiennej.\r\n2. Utwórz zmienną z liczbą 50 i przekształć ją na tekst. Wyświetl na ekranie typ uzyskanej zmiennej.\r\n\r\n### Zadanie 2: Wprowadzanie danych\r\n\r\n1. Zapytaj użytkownika o jego wiek za pomocą funkcji `input()`.\r\n2. Przekształć wprowadzony wiek na liczbę.\r\n3. Wyświetl na ekranie komunikat: "Twój wiek to (ile lat wprowadził użytkownik)".\r\n\r\n	2	2	1
276	Operacje na danych	\r\nW tej lekcji przyjrzymy się podstawowym operacjom, które możemy wykonywać na danych w Pythonie.\r\n\r\n## Operacje arytmetyczne\r\n\r\nPython oferuje podstawowe operacje arytmetyczne, które pozwalają na wykonywanie matematycznych działań na liczbach.\r\n\r\nPrzykłady:\r\n\r\n```python\r\na = 10\r\nb = 5\r\n\r\nsum_result = a + b  # Dodawanie\r\nprint(sum_result)  # Wynik: 15\r\n\r\ndiff_result = a - b  # Odejmowanie\r\nprint(diff_result)  # Wynik: 5\r\n\r\nmult_result = a * b  # Mnożenie\r\nprint(mult_result)  # Wynik: 50\r\n\r\ndiv_result = a / b  # Dzielenie\r\nprint(div_result)  # Wynik: 2.0\r\n\r\npower = a ** b\r\n```\r\n\r\n\r\n## Operacje porównania\r\n\r\nOperacje porównania pozwalają na porównywanie wartości i otrzymywanie wyniku w postaci wartości logicznych (`True` lub `False`).\r\n\r\nPrzykłady:\r\n\r\n```python\r\na = 10\r\nb = 5\r\n\r\nis_greater = a > b  # Większe\r\nprint(is_greater)  # Wynik: True\r\n\r\nis_less = a < b  # Mniejsze\r\nprint(is_less)  # Wynik: False\r\n\r\nis_equal = a == b  # Równe\r\nprint(is_equal)  # Wynik: False\r\n\r\nis_not_equal = a != b  # Nierówne\r\nprint(is_not_equal)  # Wynik: True\r\n\r\nis_greater_or_equal = a >= b  # Większe lub równe\r\nprint(is_greater_or_equal)  # Wynik: True\r\n\r\nis_less_or_equal = a <= b  # Mniejsze lub równe\r\nprint(is_less_or_equal)  # Wynik: False\r\n```\r\n\r\n---\r\n\r\n## Zadania do lekcji 3: Operacje na danych\r\n\r\n### Zadanie 1: Operacje arytmetyczne\r\n\r\n1. Utwórz dwie zmienne z dowolnymi wartościami liczbowymi.\r\n2. Wykonaj i wyświetl wynik wszystkich operacji arytmetycznych pomiędzy tymi zmiennymi.\r\n\r\n### Zadanie 2: Operacje porównania\r\n\r\n1. Utwórz dwie zmienne z różnymi wartościami liczbowymi.\r\n2. Porównaj te zmienne przy użyciu wszystkich operacji porównania i wyświetl wyniki na ekranie.\r\n\r\n	3	3	1
277	Operatory warunkowe	\r\nW tej lekcji przyjrzymy się, jak tworzyć konstrukcje warunkowe w Pythonie, aby program mógł podejmować różne decyzje w zależności od określonych warunków.\r\n\r\n## Operator if\r\n\r\nOperator `if` pozwala sprawdzić warunek i wykonać blok kodu, jeśli warunek jest prawdziwy.\r\n\r\nPrzykład:\r\n\r\n```python\r\nage = 15\r\n\r\nif age < 18:\r\n    print("Nie możesz jeszcze głosować na wyborach.")\r\n```\r\nto warunek dobrze wizualizuje się przy pomocy diagramu blokowego\r\n\r\n**Diagram blokowy** to graficzne przedstawienie algorytmu lub procesu, \r\nużywające różnych geometrycznych kształtów do oznaczania różnych rodzajów instrukcji, oraz strzałek wskazujących kierunek przepływu wykonania. \r\n\r\nKażdy kształt w diagramie blokowym reprezentuje konkretny typ operacji, na przykład prostokąty są często używane do operacji (lub działań), a romby - do podejmowania decyzji.\r\n\r\n![obrazek](/static/article_images/pl/u4_img0.png)\r\n\r\n## Operatory elif i else\r\n\r\n`elif` jest używany do sprawdzania dodatkowych warunków, jeśli poprzedni warunek był fałszywy. `else` wykonuje się, gdy żaden z poprzednich warunków nie był prawdziwy.\r\n\r\nPrzykład:\r\n\r\n```python\r\nweather = "słonecznie"\r\n\r\nif weather == "deszcz":\r\n    print("Weź parasol!")\r\nelif weather == "słonecznie":\r\n    print("Nie zapomnij o kremie przeciwsłonecznym!")\r\nelse:\r\n    print("Przygotuj się na każdą pogodę!")\r\n```\r\n\r\n## Zagnieżdżone warunki (bloki z wcięciem)\r\n\r\nCzasami warunki mogą być zagnieżdżone, co pozwala na tworzenie bardziej skomplikowanych konstrukcji logicznych.\r\n\r\nPrzykład:\r\n\r\n```python\r\nage = 16\r\nhas_permission = True\r\n\r\nif age < 18:\r\n    if has_permission:\r\n        print("Możesz wejść, ale tylko z dorosłym.")\r\n    else:\r\n        print("Niestety, nie możesz wejść.")\r\nelse:\r\n    print("Witamy!")\r\n```\r\n\r\n![obrazek](/static/article_images/pl/u4_img1.png)\r\n\r\n---\r\n\r\n## Zadania do lekcji 4: Operatory warunkowe\r\n\r\n### Zadanie 1: Operator if\r\n\r\n1. Stwórz zmienną z wartością liczbową.\r\n2. Używając operatora `if`, sprawdź, czy twoja liczba jest większa niż 10 i wyświetl odpowiedni komunikat.\r\n\r\n### Zadanie 2: Operatory elif i else\r\n\r\n1. Stwórz zmienną zawierającą aktualną temperaturę powietrza.\r\n2. Używając `if`, `elif` i `else`, wyświetl komunikat o tym, co należy ubrać (na przykład, jeśli temperatura jest poniżej 0, to "Ubierz się ciepło", jeśli od 0 do 15 — "Weź kurtkę" itd.).\r\n\r\n### Zadanie 3: Zagnieżdżone warunki\r\n\r\n1. Stwórz dwie zmienne boolowskie: `is_student` i `has_discount_card`.\r\n2. Używając zagnieżdżonych warunków, określ, ile student powinien zapłacić za bilet do kina (na przykład, podstawowa cena to 10 dolarów, studenci płacą o 2 dolary mniej, a jeśli student ma jeszcze kartę rabatową, to płaci o dolar mniej).\r\n	4	4	1
288	Podstawy pracy z zmiennymi	\nW tej lekcji przyjrzymy się podstawom pracy ze zmiennymi w Pythonie.\n\n\n![obrazek1](/static/article_images/pl/u1_img1.png)\n\n⚠️TODO zwrócić uwagę na to, że spacje są wokół znaku równości.\n	15	15	1
278	Lists	Wyobraź sobie, że masz długi pociąg z wieloma wagonami, a w każdym wagonie może podróżować jedna zabawka.\r\nW świecie programowania taki pociąg nazywamy Listą!\r\n\r\n- 🚃 **Wagon** - to jak "komórka" do przechowywania czegoś jednego (w naszym przypadku, zabawki). W programowaniu nazywamy to "elementem listy".\r\n  \r\n- 🏷️ **Numer wagonu** - to sposób, w jaki możemy znaleźć i wybrać konkretny wagon (lub zabawkę wewnątrz). W programowaniu nazywa się to "indeksem" elementu listy.\r\n\r\n- 🧸 **Zabawka w wagonie** - to informacja lub "dane", które przechowujemy w każdym wagonie (lub w każdym elemencie listy).\r\n\r\nTak więc, jeśli chcesz znaleźć, na przykład, pluszowego misia w pociągu, po prostu sprawdzasz każdy wagonik po kolei, aż go znajdziesz. W programowaniu robimy to samo, używając indeksów, aby szybko znaleźć dane w liste!\r\n\r\n⚠️ Numeracja wagonów zaczyna się od 0!\r\n\r\n⚠️ TODO\r\n.                              0                 1                  2            3\r\ntoys_train = ["miś", "zając", "pies", "kot"]\r\n                              -4                -3              -2               -1\r\n\r\n## Indeks listy\r\n\r\n```python\r\ntoys_train = ["miś", "zając", "pies", "kot"]\r\nprint(toys_train[0])  # Wydrukuje: miś\r\nprint(toys_train[1])  # Wydrukuje: zając\r\n```\r\n\r\n### Pobieranie ostatniego elementu listy\r\n\r\nAby dowiedzieć się, jaka zabawka jedzie w ostatnim wagonie, możemy użyć indeksu -1.\r\n\r\nPrzykład:\r\n\r\n```python\r\ntoys_train = ["miś", "zając", "pies", "kot"]\r\nprint(toys_train[-1])  # Wynik: kot\r\n```\r\n⚠️ TODO mówić o -2 w analogii do -1\r\n\r\n## Wycinek\r\nJeśli chcemy wiedzieć, jakie zabawki jadą, na przykład, w drugim i trzecim wagonie, możemy użyć wycinka.\r\n\r\n```python\r\ntoys_train = ["miś", "zając", "pies", "kot"]\r\nprint(toys_train[1:3])  # Wynik: ['zając', 'pies']\r\n```\r\n⚠️ TODO len(l)\r\n\r\n## Pętla for\r\n\r\n### Przejście przez elementy listy\r\n\r\n```python\r\ntoys_train = ["miś", "zając", "pies"]\r\n\r\nfor toy in toys_train:\r\n    print(toy)\r\n```\r\n\r\n### Przejście przez indeksy listy\r\n\r\n```python\r\ntoys_train = ["miś", "zając", "pies", "kot"]\r\n\r\nfor i in range(len(toys_train)):\r\n    print(f"Zabawka w wagonie numer {i} to {toys_train[i]}")\r\n```\r\n\r\n⚠️ TODO PRZENIEŚĆ TUTAJ TUPLE\r\n---\r\n\r\n## Zadania do lekcji 5: listy\r\n\r\n### Zadanie 1: Indeks listy\r\n\r\n1. Stwórz list z 5 różnymi owocami.\r\n2. Wyświetl na ekranie drugi, ostatni i przedostatni owoc z listy.\r\n\r\n### Zadanie 2: Wycinek\r\n\r\n1. Stwórz list z 7 różnymi zwierzętami.\r\n2. Używając wycinka, wyświetl na ekranie zwierzęta od 3 do 5.\r\n\r\n### Zadanie 3: Pętla for\r\n\r\n1. Stwórz listy z 4 różnymi kolorami.\r\n2. Używając pętli `for`, wyświetl każdy kolor w nowej linii z dodatkiem tekstu: "Mój ulubiony kolor to {kolor}".\r\n\r\n### Zadanie 4: Pętla for z indeksami\r\n\r\n1. Stwórz list z 3 różnymi warzywami.\r\n2. Używając pętli `for` i funkcji `range(len(...))`, wyświetl każde warzywo w nowej linii z podaniem jego indeksu w list.\r\n	5	5	1
279	Więcej o pętlach	\r\nW tej lekcji przyjrzymy się pracy z pętlami w Pythonie, a mianowicie z pętlą `while` oraz operatorami kontroli pętli `break` i `continue`.\r\n\r\n## Pętla while\r\n\r\nPętla `while` jest używana do powtarzania bloku kodu, dopóki warunek jest prawdziwy.\r\n\r\nPrzykład:\r\n\r\n```python\r\ncount = 0\r\nwhile count < 5:\r\n    print("Licznik wynosi", count)\r\n    count += 1\r\n```\r\n⚠️ opowiedzieć o nieskończonych pętlach\r\n\r\nW tym przykładzie kod wewnątrz pętli będzie wykonywany, dopóki zmienna `count` jest mniejsza niż 5.\r\n\r\n## Operatory kontroli pętli (break, continue)\r\n\r\n- `break` jest używany do wyjścia z pętli przedwcześnie.\r\n- `continue` pomija pozostałą część bloku kodu i przechodzi do następnej iteracji pętli.\r\n\r\nPrzykład:\r\n\r\n```python\r\ncount = 0\r\nwhile count < 10:\r\n    count = count + 1\r\n    if count == 5:\r\n        continue\r\n    elif count == 8:\r\n        break\r\n    print("Licznik wynosi", count)\r\n```\r\n⚠️ podzielić przykład na dwa oddzielnie break, oddzielnie continue\r\n\r\n---\r\n\r\n## Zadania do lekcji 6: Pętle\r\n\r\n### Zadanie 1: Pętla while\r\n\r\n1. Stwórz zmienną `number` i przypisz jej wartość 15.\r\n2. Używając pętli `while`, zmniejszaj wartość `number` o 1 przy każdej iteracji i wyświetlaj ją na ekranie.\r\n3. Zatrzymaj pętlę, gdy `number` stanie się mniejsze niż 0.\r\n\r\n### Zadanie 2: Operatory kontroli pętli\r\n\r\n1. Stwórz zmienną `num` i przypisz jej wartość 0.\r\n2. Używając pętli `while`, zwiększaj wartość `num` o 2 przy każdej iteracji i wyświetlaj ją na ekranie.\r\n3. Użyj `continue`, aby pominąć iterację, gdy `num` wynosi 6.\r\n4. Użyj `break`, aby zatrzymać pętlę, gdy `num` wynosi 10.\r\n	6	6	1
280	Operacje na listach i tuplach	\r\nW tej lekcji przyjrzymy się pracy z listami i krotkami w Pythonie oraz podstawowym operacjom, które można na nich wykonywać.\r\n\r\n## Tworzenie i używanie list\r\n\r\nJak już wiemy, lista w Pythonie to uporządkowana kolekcja obiektów, które mogą być różnego typu.\r\n\r\nPrzykład:\r\n\r\n```python\r\nfruits = ["jabłko", "banan", "wiśnia"]\r\nprint(fruits[0])  # wydrukuje: jabłko\r\n```\r\n\r\n## Operacje na listach\r\n\r\nListy pozwalają na dodawanie, usuwanie i sortowanie elementów.\r\n\r\nPrzykłady:\r\n\r\n```python\r\n# Dodawanie elementu\r\nfruits.append("pomarańcza")\r\n\r\n# Usuwanie elementu\r\nfruits.remove("banan")\r\n\r\n# Sortowanie listy\r\nfruits.sort()\r\n```\r\n\r\n⚠️ opowiedzieć o reverse  \r\ninsert (wstawianie z przesunięciem)  \r\nb = l.copy()  \r\nunsorted.sort(reverse=True)\r\n\r\n\r\n\r\n## tuples i ich cechy\r\n\r\nTuple jest podobny do listy, ale w przeciwieństwie do listy, tuple jest niezmienny.\r\n\r\nPrzykład:\r\n\r\n```python\r\ncolors = ("czerwony", "zielony", "niebieski")\r\nprint(colors[1])  # wydrukuje: zielony\r\n```\r\njeśli spróbujemy dodać element do tuple - otrzymamy błąd.\r\n\r\n---\r\n\r\n## Zadania do lekcji 7: Listy i tuples\r\n\r\n### Zadanie 1: Praca z listami\r\n\r\n1. Stwórz listę `animals` i dodaj do niej kilka nazw zwierząt.\r\n2. Wyświetl na ekranie drugie zwierzę z listy.\r\n3. Dodaj jeszcze jedno zwierzę do listy i wyświetl całą listę na ekranie.\r\n\r\n### Zadanie 2: Operacje na listach\r\n\r\n1. Stwórz listę `numbers` i dodaj do niej kilka liczb.\r\n2. Posortuj listę i wyświetl ją na ekranie.\r\n3. Usuń pierwszą liczbę z listy i ponownie wyświetl listę na ekranie.\r\n\r\n### Zadanie 3: Praca z tuples\r\n\r\n1. Stwórz tuple `cities` i dodaj do niej kilka nazw miast.\r\n2. Wyświetl na ekranie ostatnie miasto z tuple.\r\n3. Spróbuj zmienić wartość jednego z miast w tuple (to powinno spowodować błąd).\r\n	7	7	1
281	Funkcje	\r\nW tej lekcji porozmawiamy o funkcjach w Pythonie i dowiemy się, jak pomagają one w pisaniu kodu.\r\n\r\n## Co to jest funkcja i po co jest potrzebna?\r\n\r\nFunkcje w programowaniu to jak małe pomocniki, które wykonują określone zadania. Wyobraź sobie, że masz robota, który potrafi rysować koło. Mówisz mu: "Rysuj koło", i on to robi. W programowaniu funkcje działają w podobny sposób.\r\n\r\nPrzykład:\r\n\r\n```python\r\ndef draw_circle():\r\n    print("🔵")\r\n```\r\n\r\n## Deklaracja i wywoływanie funkcji\r\n\r\nDeklaracja funkcji to jak stworzenie instrukcji dla robota, a wywołanie funkcji to jak komenda dla robota, aby wykonał tę instrukcję.\r\n\r\nPrzykład:\r\n\r\n```python\r\ndef say_hello():\r\n    print("Cześć!")\r\n\r\n# Wywołanie funkcji\r\nsay_hello()\r\n```\r\n\r\n## Przekazywanie parametrów do funkcji\r\n\r\nParametry w funkcjach to dodatkowe wskazówki dla naszego robota. Na przykład, możesz powiedzieć robotowi: "Rysuj koło czerwonego koloru".\r\n\r\nPrzykład:\r\n\r\n```python\r\ndef greet(name):\r\n    print("Cześć", name)\r\n\r\n# Wywołanie funkcji z parametrem\r\ngreet("Ania")\r\n```\r\n⚠️ opowiedzieć o tym, że jeśli jest kilka parametrów wejściowych przy wywołaniu funkcji, to kolejność ich podania decyduje, do którego argumentu funkcji trafią\r\n⚠️ pokazać to na rysunku\r\n\r\n## Zwracanie wartości z funkcji\r\n\r\nZwracanie wartości z funkcji to jakby robot po wykonaniu polecenia odzywał się do ciebie.\r\n\r\nPrzykład:\r\n\r\n```python\r\ndef add(a, b):\r\n    return a + b\r\n\r\n# Wywołanie funkcji i wyświetlenie wyniku\r\nprint(add(3, 4))  # Wynik: 7\r\n```\r\n⚠️ tutaj podać przykład konwejera na fabryce, na który wjeżdżają zmienne, a na wyjściu jest wynik\r\n---\r\n\r\n## Zadania do lekcji 9: Funkcje\r\n\r\n### Zadanie 1: Tworzenie i wywoływanie funkcji\r\n\r\n1. Stwórz funkcję, która nazywa się count_square i drukuje kwadraty wszystkich liczb od 1 do 10.\r\nWywołaj ją.\r\n\r\n### Zadanie 2: Przekazywanie parametrów\r\n\r\n1. Stwórz funkcję count_average, która przyjmuje numbers a i b jako parametry i wyświetla (a + b)/2.\r\n Wywołaj ją.\r\n\r\n### Zadanie 3: Zwracanie wartości\r\n\r\n1. Stwórz funkcję, która przyjmuje dwie liczby i zwraca ich iloczyn. Wyświetl wynik na ekranie.\r\n	8	8	1
282	Słowniki	\r\nDzisiaj porozmawiamy o tak interesującym temacie, jak słowniki w Pythonie!\r\n\r\n## Co to jest słownik i jak go używać?\r\n\r\nCzy kiedykolwiek używałeś słownika, aby znaleźć znaczenie jakiegoś słowa? W Pythonie słownik działa w podobny sposób! Mamy "klucz" (to słowo, którego szukamy) i "wartość" (to definicja tego słowa).\r\n\r\nPrzykład:\r\n\r\n```python\r\nmy_dict = {"Jabłko": "Okrągły owoc", "Banan": "Długi żółty owoc", "Brzoskwinia": "Owoc z pestką w środku"}\r\n```\r\n\r\n⚠️ wyjaśnić, co to jest klucz słownika, co wartość, najlepiej na obrazku\r\n\r\nKluczami słownika mogą być:\r\n\r\n1. Liczby całkowite (int): \r\n```python\r\nd = {1: 'jeden', 2: 'dwa', 3: 'trzy'}\r\n```\r\n\r\n2. Ciągi znaków (str):\r\n```python\r\nd = {'apple': 5, 'banana': 6}\r\n```\r\n\r\n3. Krotki (tuple), zawierające tylko elementy możliwe do zahashowania:\r\n```python\r\nd = {(1, 'a'): 'jeden a', (2, 'b'): 'dwa b'}\r\n```\r\n\r\n## Dodawanie, usuwanie i zmiana elementów słownika\r\n\r\nMożesz łatwo zmieniać swój słownik, dodając nowe słowa, usuwając niepotrzebne lub zmieniając ich wartości!\r\n\r\n- **Zmiana**  \r\n```python\r\nmy_dict["Jabłko"] = "Bardzo smaczny owoc"\r\n```\r\n\r\n- **Dodawanie**  \r\n```python\r\nmy_dict["Pomarańcza"] = "Owoc pomarańczowy"\r\n```\r\n\r\n- **Usuwanie**  \r\n```python\r\ndel my_dict["Banan"]\r\n```\r\n\r\n⚠️ wyjaśnić o pop\r\n\r\n## Przechodzenie przez słownik za pomocą pętli\r\n\r\nMożemy przejść przez cały słownik i zobaczyć, co mamy!\r\n\r\n⚠️ todo szczegółowo opisać tutaj\r\n```\r\nfor key in new_dict:  ##.keys()\r\n    print(key, new_dict[key])\r\n```\r\n\r\n```python\r\nfor key, value in my_dict.items():\r\n    print(f"{key} to {value}")\r\n```\r\n\r\n---\r\n\r\n## Zadania do lekcji 9: Słowniki\r\n\r\n### Zadanie 1: Tworzenie słownika\r\n1. Stwórz swój słownik z nazwami owoców, kluczami będą ilości liter w nazwie.\r\n2. Wyświetl na ekranie wszystkie pary "klucz-wartość" z twojego słownika.\r\n\r\n### Zadanie 2: Praca ze słownikiem\r\n1. Dodaj do swojego słownika jeszcze jeden owoc.\r\n2. Usuń jeden z owoców ze słownika.\r\n3. Zmień wartość liczby liter dla jednego z owoców.\r\n\r\n### Zadanie 3: Używanie pętli ze słownikiem\r\n1. Napisz pętlę, która wyświetla wszystkie klucze z twojego słownika.\r\n2. Napisz pętlę, która wyświetla wszystkie wartości z twojego słownika.\r\n3. Napisz pętlę, która wyświetla wszystkie pary "klucz-wartość" z twojego słownika.\r\n	9	9	1
283	Podstawy programowania obiektowego	\r\n#### Cel lekcji:\r\nZrozumienie podstaw programowania obiektowego (OOP) w Pythonie.\r\n\r\n#### Opis lekcji:\r\nW tej lekcji poznasz koncepcję klas i obiektów w Pythonie, które są kluczowymi elementami programowania obiektowego.\r\n\r\n#### Klasy i obiekty:\r\nKlasa to szablon dla obiektów. Myśl o niej jak o planie budowy domu.\r\n\r\nPrzykład klasy `Student`:\r\n\r\n```python\r\nclass Student():\r\n    name = 'some_name'\r\n    surname = 'some_surname'\r\n```\r\n\r\n#### Tworzenie obiektów:\r\nObiekt to konkretna instancja klasy.\r\n\r\nPrzykład tworzenia obiektów `Student`:\r\n\r\n```python\r\njan = Student()\r\njan.name = 'Jan'\r\njan.surname = 'Kowalski'\r\nanna = Student()\r\nanna.name = 'Anna'\r\nanna.surname = 'Mrozek'\r\n```\r\n\r\n\r\n\r\n#### Atrybuty i metody:\r\nAtrybuty to zmienne wewnątrz klasy. Metody to funkcje zdefiniowane wewnątrz klasy.\r\n\r\nPrzykład dostępu do atrybutów:\r\n\r\n```python\r\nprint(jan.name)       # Wyświetli "Jan"\r\nprint(anna.surname)   # Wyświetli "Mrozek"\r\n```\r\n\r\n#### __init__()\r\nW klase wyżej,  name i surname są stałymi atrybutami klasy, takimi samymi dla każdego obiektu klasy Student, poki my ich nie zmienim\r\n```python\r\nclass Student():\r\n    def __init__(self, name, surname):\r\n        self.name = name\r\n        self.surname = surname\r\n```\r\nW tym przypadku __init__ przyjmuje parametry name i surname, które stają się indywidualnymi atrybutami dla każdego stworzonego obiektu klasy Student.\r\nKiedy tworzymy obiekty klasy Student, przekazujemy im różne imiona i nazwiska:\r\n```python\r\njan = Student('Jan', 'Kowalski')\r\nanna = Student('Anna', 'Mrozek')\r\n```\r\n\r\n#### Zadania:\r\n1. **Stwórz klasę i obiekty**: Wykorzystaj powyższy kod do stworzenia własnej klasy i obiektów.\r\n2. **Dodaj metodę do klasy**: Napisz metodę w klasie `Student`, która wyświetla pełne imię i nazwisko studenta.\r\n3. **Zmodyfikuj obiekty**: Zmień atrybuty istniejących obiektów i wyświetl wyniki.\r\n	10	10	1
284	Zaawansowane pojęcia programowania obiektowego	\r\n#### Cel lekcji:\r\nZrozumienie zaawansowanych pojęć OOP: dziedziczenie, enkapsulacja i polimorfizm.\r\n\r\n#### Opis lekcji:\r\nPoznajemy bardziej zaawansowane aspekty programowania obiektowego na przykładzie klas `Student` i `Human`.\r\n\r\n#### Dziedziczenie (Inheritance):\r\nDziedziczenie umożliwia tworzenie nowych klas na bazie istniejących.\r\n\r\n```python\r\nclass Human():\r\n    def __init__(self, name, age):\r\n        self.name = name\r\n        self.age = age\r\n\r\nclass Student(Human):\r\n    def __init__(self, name, age, student_id):\r\n        super().__init__(name, age)\r\n        self.student_id = student_id\r\n```\r\n\r\nKlasa `Student` dziedziczy po klasie `Human` i dodaje nowy atrybut `student_id`.\r\n\r\n#### Enkapsulacja (Encapsulation):\r\nEnkapsulacja chroni dane wewnątrz klasy, udostępniając publiczny interfejs.\r\n\r\n```python\r\nclass Human():\r\n    def __init__(self, name, age):\r\n        self.name = name\r\n        self._age = age  # Prywatny atrybut\r\n\r\n    def display_age(self):\r\n        print(self._age)\r\n```\r\n\r\nAtrybut `_age` jest prywatny i dostępny tylko wewnątrz klasy `Human`.\r\n\r\n#### Polimorfizm (Polymorphism):\r\nPolimorfizm pozwala na wykorzystanie jednej metody w różnych kontekstach.\r\n\r\n```python\r\nclass Human():\r\n    def speak(self):\r\n        print("Mówię językiem ludzi.")\r\n\r\nclass Student(Human):\r\n    def speak(self):\r\n        print("Mówię językiem młodzieży.")\r\n\r\njan = Human()\r\njan.speak()  # "Mówię językiem ludzi."\r\n\r\nanna = Student()\r\nanna.speak()  # "Mówię językiem młodzieży."\r\n```\r\n\r\nMetoda `speak` zachowuje się inaczej w zależności od typu obiektu.\r\n\r\n#### Zadania:\r\n1. **Tworzenie klas i obiektów z dziedziczeniem**: Utwórz klasy `Car` i `Ford`, a następnie obiekty tych klas.\r\nCar ma atrybuty:\r\nkola  \r\ntype  \r\n\r\nFord ma atrybut Model  \r\nkazdy model ma swoje wage  \r\n\r\n2. **Dodanie metody z enkapsulacją**: Dodaj metodę do klasy `Human`, która bezpiecznie pokazuje wiek.\r\n3. **Implementacja polimorfizmu**: Dodaj metodę `speak` do obu klas i zobacz, jak różnie działają obiekty przy jej użyciu.\r\n\r\nTa część lekcji wprowadza w świat zaawansowanych koncepcji OOP, które są niezbędne do tworzenia dobrze zorganizowanego i łatwego w utrzymaniu kodu.\r\n	11	11	1
285	Tworzenie własnych pakietów i użycie import	\n#### Cel lekcji:\nNauczyć się tworzenia własnych pakietów w Pythonie i korzystania z nich za pomocą `import`.\n\n#### Opis lekcji:\nW tej lekcji dowiesz się, jak zorganizować swój kod w pakietach, co ułatwia jego ponowne użycie i dystrybucję.\n\n#### Tworzenie pakietu:\nPakiet w Pythonie to sposób na strukturyzowanie modułów (plików Pythona), które grupują powiązany kod.\n\n1. **Struktura katalogu**:\n   Aby utworzyć pakiet, zacznij od utworzenia nowego katalogu. Nazwa katalogu będzie nazwą pakietu. Wewnątrz tego katalogu umieść plik `__init__.py`. Plik ten może być pusty, ale musi istnieć, aby Python rozpoznał katalog jako pakiet.\n\n2. **Dodawanie modułów**:\n   Wewnątrz katalogu pakietu możesz umieścić dowolną liczbę plików Pythona (modułów). Każdy moduł może zawierać funkcje, klasy itp.\n\n```python\nmój_pakiet/\n|-- __init__.py\n|-- moduł1.py\n|-- moduł2.py\n```\n\n#### Użycie `import`:\nAby skorzystać z funkcji lub klas zdefiniowanych w pakiecie, użyj `import` w swoim kodzie.\n\n```python\nfrom mój_pakiet import moduł1\nmoduł1.moja_funkcja()\n```\n\nMożesz także importować poszczególne funkcje bezpośrednio:\n\n```python\nfrom mój_pakiet.moduł1 import moja_funkcja\nmoja_funkcja()\n```\n\nTODO !!!\nTell about try except in this lesson\n\n\n#### Zadania:\n1. **Stwórz własny pakiet**: Zorganizuj swój kod, tworząc pakiet o nazwie `mój_pakiet` z co najmniej dwoma modułami.\n2. **Dodaj funkcje do modułów**: W każdym module zdefiniuj przynajmniej jedną funkcję.\n3. **Użyj swojego pakietu**: W innym pliku Pythona zaimportuj swój pakiet i użyj funkcji, które zdefiniowałeś.\n\n#### Podsumowanie:\nTworzenie własnych pakietów i korzystanie z nich za pomocą `import` to świetny sposób na organizację i ponowne użycie kodu w Pythonie. Ta lekcja pokazuje podstawy, jak zacząć pracę z pakietami.\n\n\n\n	12	12	1
286	Biblioteka Pygame Wprowadzenie	\nCo to jest Pygame?\n\nPygame to "biblioteka do tworzenia gier", zestaw narzędzi, które pomagają programistom w tworzeniu gier. Zaliczają się do nich:\n\n- Grafika i animacja\n- Dźwięk (włączając muzykę)\n- Sterowanie (mysz, klawiatura, gamepad itd.)\n\n#### Pętla gry\n\nW sercu każdej gry leży pętla, która jest zwykle nazywana "pętlą gry". Jest ona wykonywana w kółko, robiąc wszystko, co potrzebne do działania gry. Każda taka iteracja w grze nazywana jest klatką.\n\nW każdej klatce dzieje się wiele rzeczy, ale można je podzielić na trzy kategorie:\n\n- Przetwarzanie wejścia (zdarzenia)\n\nChodzi o wszystko, co dzieje się poza grą - te zdarzenia, na które musi zareagować. Mogą to być naciśnięcia klawiszy na klawiaturze, kliknięcia myszą itd.\n\n- Aktualizacja gry\n\nZmiany wszystkiego, co musi się zmienić w ciągu jednej klatki. Jeśli postać jest w powietrzu, grawitacja powinna ją ciągnąć w dół. Jeśli dwa obiekty spotykają się z dużą prędkością, powinny eksplodować.\n\n- Renderowanie (rysowanie)\n\nNa tym etapie wszystko jest wyświetlane na ekranie: tła, postacie, menu. Wszystko, co gracz powinien zobaczyć, pojawia się na ekranie we właściwym miejscu.\n\n#### Czas\n\nKolejnym ważnym aspektem pętli gry jest szybkość jej działania. Wielu z pewnością zna termin FPS, który oznacza Frames Per Second (lub klatki na sekundę). Wskazuje on, ile razy pętla powinna się powtórzyć w ciągu jednej sekundy. To ważne, aby gra nie była zbyt wolna lub zbyt szybka. Ważne jest również, aby gra działała z taką samą szybkością na różnych komputerach. Jeśli postaci potrzeba 10 sekund, aby przejść przez ekran, te 10 sekund powinno być niezmienne dla wszystkich komputerów.\n\n\n### Tworzenie szablonu Pygame\n\nTeraz, gdy wiemy, z jakich elementów składa się gra, możemy przejść do procesu pisania kodu. Należy zacząć od stworzenia najprostszego programu Pygame, który jedynie otwiera okno i uruchamia pętlę gry. Jest to punkt wyjścia dla każdego projektu Pygame.\n\nNa początku programu należy zaimportować potrzebne biblioteki i zdefiniować podstawowe zmienne konfiguracyjne gry:\n\n```python\n# Szablon Pygame - szkielet dla nowego projektu Pygame\nimport pygame\nimport random\n\nWIDTH = 360  # szerokość okna gry\nHEIGHT = 480 # wysokość okna gry\nFPS = 30 # liczba klatek na sekundę\n```\n\nNastępnie należy otworzyć okno gry:\n\n```python\n# tworzymy grę i okno\npygame.init()\npygame.mixer.init()  # dla dźwięku\nscreen = pygame.display.set_mode((WIDTH, HEIGHT))\npygame.display.set_caption("Moja Gra")\nclock = pygame.time.Clock()\n```\n\n`pygame.init()` to polecenie, które uruchamia Pygame. `screen` to okno programu, które jest tworzone, gdy określamy jego rozmiar w ustawieniach. Następnie trzeba stworzyć `clock`, aby upewnić się, że gra działa z określoną liczbą klatek na sekundę.\n\nTeraz trzeba stworzyć pętlę gry:\n\n```python\n# Pętla gry\nrunning = True\nwhile running:\n    # Przetwarzanie wejścia (zdarzenia)\n    # Aktualizacja\n    # Renderowanie (rysowanie)\n```\n\nPętla gry to pętla `while`, kontrolowana przez zmienną `running`. Jeśli chcesz zakończyć grę, wystarczy zmienić wartość `running` na `False`. W rezultacie pętla się zakończy. Teraz możesz wypełnić każdą sekcję podstawowym kodem.\n\n\n#### Sekcja renderowania (rysowania)\n\nZacznijmy od sekcji rysowania. Ponieważ jeszcze nie mamy postaci, ekran możemy wypełnić jednolitym kolorem. Aby to zrobić, musimy zrozumieć, jak komputer przetwarza kolory.\n\nEkrany komputerów składają się z pikseli, z których każdy zawiera 3 elementy: czerwony, zielony i niebieski. Kolor piksela jest określany przez to, jak świecą te elementy:\nTabela kolorów RGB\n\nKażdy z trzech podstawowych kolorów może mieć wartość od 0 (wyłączony) do 255 (włączony na 100%), co daje dla każdego elementu 256 opcji.\n\nCałkowitą liczbę kolorów, które może wyświetlić komputer, można obliczyć, mnożąc:\n\n```python\n>>> 256 * 256 * 256\n16777216\n```\n\nTeraz, wiedząc, jak działają kolory, możemy je zdefiniować na początku programu:\n\n```python\n# Kolory (R, G, B)\nBLACK = (0, 0, 0)\nWHITE = (255, 255, 255)\nRED = (255, 0, 0)\nGREEN = (0, 255, 0)\nBLUE = (0, 0, 255)\n```\n\nA następnie wypełnić cały ekran:\n\n```python\n# Renderowanie\nscreen.fill(BLACK)\n```\n\nAle to jeszcze nie wszystko. Wyświetlacz komputera nie działa w ten sposób. Zmiana piksela oznacza przekazanie polecenia karcie graficznej, aby przekazała odpowiednie polecenie ekranowi. W skali komputerowej jest to bardzo wolny proces. Jeśli potrzebujemy narysować na ekranie wiele rzeczy, zajmie to dużo czasu. Można to naprawić oryginalnym sposobem, zwanym podwójnym buforowaniem. Brzmi niezwykle, ale oto co to jest.\n\nWyobraź sobie, że masz dwustronną tablicę, którą można obracać, pokazując to jedną, to drugą stronę. Jedna będzie wyświetlaczem (to, co widzi gracz), a druga pozostanie ukryta, "widziana" tylko przez komputer. Z każdą klatką renderowanie będzie odbywać się na tylnej stronie tablicy. Gdy rysowanie się zakończy, tablica obraca się i jej zawartość jest prezentowana graczowi.\n\n#### Renderowanie w Pygame\n\nOznacza to, że proces rysowania odbywa się raz na klatkę, a nie przy dodawaniu każdego elementu.\n\nW Pygame dzieje się to automatycznie. Wystarczy powiedzieć tablicy, by się obróciła, gdy rysowanie się zakończy. Ta komenda nazywa się flip():\n\n```python\n# Renderowanie\nscreen.fill(BLACK)\n# po narysowaniu wszystkiego, odwracamy ekran\npygame.display.flip()\n```\n\n\n\nNajważniejsze jest, aby funkcja `flip()` była na końcu. Jeśli spróbujesz narysować cokolwiek po przewróceniu, ta zawartość nie zostanie wyświetlona na ekranie.\n\n#### Sekcja wejścia (zdarzeń)\n\nGra jeszcze nie istnieje, więc trudno powiedzieć, jakie przyciski lub inne elementy sterowania będą potrzebne. Ale musimy skonfigurować jedno ważne zdarzenie. Jeśli spróbujesz teraz uruchomić program, zrozumiesz, że nie ma możliwości zamknięcia okna. Kliknięcie na krzyżyk w górnym rogu nie wystarczy. To również zdarzenie, i trzeba poinformować program, aby je uwzględnił, a w konsekwencji, zamknął grę.\n\nZdarzenia mają miejsce cały czas. Co jeśli gracz naciśnie przycisk skoku podczas rysowania? Nie można tego zignorować, w przeciwnym razie gracz będzie rozczarowany. Dlatego pygame przechowuje wszystkie zdarzenia, które miały miejsce od momentu ostatniej klatki. Nawet jeśli gracz będzie spamować przyciskami, nie przegapisz żadnego z nich. Tworzona jest lista, a za pomocą pętli `for` można przejść przez wszystkie z nich.\n\n```python\nfor event in pygame.event.get():\n    # sprawdzenie zamknięcia okna\n    if event.type == pygame.QUIT:\n        running = False\n```\n\nW pygame jest wiele zdarzeń, na które jest w stanie zareagować. `pygame.QUIT` to zdarzenie, które uruchamia się po naciśnięciu krzyżyka i przekazuje wartość `False` do zmiennej `running`, co skutkuje zakończeniem pętli gry.\n\n#### Kontrola FPS\n\nNa razie nie ma co umieścić w sekcji Update (aktualizacja), ale trzeba upewnić się, że ustawienie FPS kontroluje prędkość gry. Można to zrobić w następujący sposób:\n\n```python\nwhile running:\n    # utrzymanie pętli na odpowiedniej szybkości\n    clock.tick(FPS)\n```\n\nFunkcja `tick()` prosi pygame, aby określił, ile czasu zajmuje cykl, a następnie robi pauzę, aby cykl (cała klatka) trwał odpowiedni czas. Jeśli ustawisz wartość FPS na 30, oznacza to, że długość jednej klatki to 1/30, czyli 0,03 sekundy. Jeśli cykl kodu (aktualizacja, renderowanie i inne) zajmuje 0,01 sekundy, wtedy pygame zrobi pauzę na 0,02 sekundy.\n\n#### Podsumowanie\n\nNa koniec, trzeba upewnić się, że kiedy pętla gry się kończy, okno gry zostaje zamknięte. Aby to zrobić, należy umieścić funkcję `pygame.quit()` na końcu kodu. Ostateczny szablon pygame będzie wyglądał tak:\n\n```python\n# Szablon Pygame - szkielet dla nowego projektu Pygame\nimport pygame\nimport random\n\nWIDTH = 360\nHEIGHT = 480\nFPS = 30\n\n# Definiujemy kolory\nWHITE = (255, 255, 255)\nBLACK = (0, 0, 0)\nRED = (255, 0, 0)\nGREEN = (0, 255, 0)\nBLUE = (0, 0, 255)\n\n# Tworzymy grę i okno\npygame.init()\npygame.mixer.init()\nscreen = pygame.display.set_mode((WIDTH, HEIGHT))\npygame.display.set_caption("Moja Gra")\nclock = pygame.time.Clock()\n\n# Pętla gry\nrunning = True\nwhile running:\n    # Utrzymujemy pętlę na odpowiedniej szybkości\n    clock.tick(FPS)\n    # Przetwarzanie wejścia (zdarzenia)\n    for event in pygame.event.get():\n        # sprawdzanie zamknięcia okna\n        if event.type == pygame.QUIT:\n            running = False\n\n    # Aktualizacja\n    \n    # Renderowanie\n    screen.fill(BLACK)\n    # Po narysowaniu wszystkiego, odwracamy ekran\n    pygame.display.flip()\n\npygame.quit()\n```\n\nHurra! Masz działający szablon Pygame. Zapisz go w pliku o zrozumiałej nazwie, np. `pygame_template.py`, aby móc go używać za każdym razem, gdy rozpoczynasz nowy projekt pygame.\n\nW następnym poradniku ten szablon zostanie wykorzystany jako punkt wyjścia do nauki rysowania obiektów na ekranie i ich poruszania.\n	13	13	1
287	Biblioteka Pygame Dalej	\n| Typ zdarzenia | Opis po polsku |\n|---------------|----------------|\n| `pygame.KEYDOWN` | Naciśnięcie klawisza na klawiaturze. |\n| `pygame.KEYUP` | Zwolnienie klawisza na klawiaturze. |\n| `pygame.MOUSEBUTTONDOWN` | Naciśnięcie przycisku myszy. |\n| `pygame.MOUSEBUTTONUP` | Zwolnienie przycisku myszy. |\n| `pygame.MOUSEMOTION` | Ruch myszy. |\n| `pygame.JOYAXISMOTION` | Ruch osi joysticka/gamepada. |\n| `pygame.JOYBUTTONDOWN` | Naciśnięcie przycisku na joysticku/gamepadzie. |\n| `pygame.JOYBUTTONUP` | Zwolnienie przycisku na joysticku/gamepadzie. |\n| `pygame.JOYHATMOTION` | Ruch przycisku kierunkowego (hat) na joysticku/gamepadzie. |\n| `pygame.VIDEORESIZE` | Zmiana rozmiaru okna gry. |\n| `pygame.VIDEOEXPOSE` | Okno gry wymaga odświeżenia. |\n	14	14	1
\.


--
-- Data for Name: lessons_userlessonprogress; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.lessons_userlessonprogress (id, completed, lesson_id, user_id) FROM stdin;
4	t	273	2
5	t	274	2
6	t	275	2
7	t	276	2
8	t	277	2
9	t	278	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, true);


--
-- Name: diary_diaryentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.diary_diaryentry_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 33, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: lessons_chapter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.lessons_chapter_id_seq', 2, true);


--
-- Name: lessons_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.lessons_lesson_id_seq', 288, true);


--
-- Name: lessons_userlessonprogress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.lessons_userlessonprogress_id_seq', 9, true);


--
-- Name: django_migrations idx_16620_django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT idx_16620_django_migrations_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_16629_auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT idx_16629_auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_16635_auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT idx_16635_auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_16641_auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT idx_16641_auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log idx_16647_django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT idx_16647_django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type idx_16656_django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT idx_16656_django_content_type_pkey PRIMARY KEY (id);


--
-- Name: auth_permission idx_16665_auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT idx_16665_auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_group idx_16674_auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_16674_auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_user idx_16683_auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_16683_auth_user_pkey PRIMARY KEY (id);


--
-- Name: django_session idx_16690_sqlite_autoindex_django_session_1; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_16690_sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);


--
-- Name: diary_diaryentry idx_16698_diary_diaryentry_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.diary_diaryentry
    ADD CONSTRAINT idx_16698_diary_diaryentry_pkey PRIMARY KEY (id);


--
-- Name: lessons_userlessonprogress idx_16704_lessons_userlessonprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_userlessonprogress
    ADD CONSTRAINT idx_16704_lessons_userlessonprogress_pkey PRIMARY KEY (id);


--
-- Name: lessons_chapter idx_16710_lessons_chapter_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_chapter
    ADD CONSTRAINT idx_16710_lessons_chapter_pkey PRIMARY KEY (id);


--
-- Name: lessons_lesson idx_16719_lessons_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_lesson
    ADD CONSTRAINT idx_16719_lessons_lesson_pkey PRIMARY KEY (id);


--
-- Name: idx_16629_auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16629_auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: idx_16629_auth_group_permissions_group_id_permission_id_0cd325b; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16629_auth_group_permissions_group_id_permission_id_0cd325b ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_16629_auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16629_auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_16635_auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16635_auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: idx_16635_auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16635_auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: idx_16635_auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16635_auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_16641_auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16641_auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_16641_auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16641_auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_16641_auth_user_user_permissions_user_id_permission_id_14a6; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16641_auth_user_user_permissions_user_id_permission_id_14a6 ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_16647_django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16647_django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: idx_16647_django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16647_django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: idx_16656_django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16656_django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: idx_16665_auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16665_auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: idx_16665_auth_permission_content_type_id_codename_01ab375a_uni; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16665_auth_permission_content_type_id_codename_01ab375a_uni ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_16674_sqlite_autoindex_auth_group_1; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16674_sqlite_autoindex_auth_group_1 ON public.auth_group USING btree (name);


--
-- Name: idx_16683_sqlite_autoindex_auth_user_1; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16683_sqlite_autoindex_auth_user_1 ON public.auth_user USING btree (username);


--
-- Name: idx_16690_django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16690_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_16704_lessons_userlessonprogress_lesson_id_898377fa; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16704_lessons_userlessonprogress_lesson_id_898377fa ON public.lessons_userlessonprogress USING btree (lesson_id);


--
-- Name: idx_16704_lessons_userlessonprogress_user_id_94a0dd8e; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16704_lessons_userlessonprogress_user_id_94a0dd8e ON public.lessons_userlessonprogress USING btree (user_id);


--
-- Name: idx_16704_lessons_userlessonprogress_user_id_lesson_id_f7a70b03; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16704_lessons_userlessonprogress_user_id_lesson_id_f7a70b03 ON public.lessons_userlessonprogress USING btree (user_id, lesson_id);


--
-- Name: idx_16710_sqlite_autoindex_lessons_chapter_1; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16710_sqlite_autoindex_lessons_chapter_1 ON public.lessons_chapter USING btree (number);


--
-- Name: idx_16719_lessons_lesson_chapter_id_c29dc589; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX idx_16719_lessons_lesson_chapter_id_c29dc589 ON public.lessons_lesson USING btree (chapter_id);


--
-- Name: idx_16719_lessons_lesson_chapter_id_chapter_order_b221e540_uniq; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16719_lessons_lesson_chapter_id_chapter_order_b221e540_uniq ON public.lessons_lesson USING btree (chapter_id, chapter_order);


--
-- Name: idx_16719_sqlite_autoindex_lessons_lesson_1; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX idx_16719_sqlite_autoindex_lessons_lesson_1 ON public.lessons_lesson USING btree ("order");


--
-- Name: auth_group_permissions auth_group_permissions_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_permission auth_permission_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: lessons_lesson lessons_lesson_chapter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_lesson
    ADD CONSTRAINT lessons_lesson_chapter_id_fkey FOREIGN KEY (chapter_id) REFERENCES public.lessons_chapter(id);


--
-- Name: lessons_userlessonprogress lessons_userlessonprogress_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_userlessonprogress
    ADD CONSTRAINT lessons_userlessonprogress_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.lessons_lesson(id);


--
-- Name: lessons_userlessonprogress lessons_userlessonprogress_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.lessons_userlessonprogress
    ADD CONSTRAINT lessons_userlessonprogress_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- PostgreSQL database dump complete
--

