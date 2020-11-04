CREATE DATABASE register_db;

\l                          -- show list DATABASE
\c register_db              -- use DATABASE

CREATE TABLE public."user" (
    id integer NOT NULL DEFAULT nextval('user_id_seq'::regclass),
    phone_number character(15) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    dob date,
    gender character(1) COLLATE pg_catalog."default",
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id),
    CONSTRAINT email_unique UNIQUE (email),
    CONSTRAINT phone_number_unique UNIQUE (phone_number)
);