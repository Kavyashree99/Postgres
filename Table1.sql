\connect "BOOK_MANAGEMENT_DB"
-- Table: book_management_schema.author_details

-- DROP TABLE book_management_schema.author_details;

CREATE TABLE IF NOT EXISTS book_management_schema.author_details
(
    id int,
    author_name character varying COLLATE pg_catalog."default" NOT NULL,
    author_details character varying COLLATE pg_catalog."default" NOT NULL,
	bookId character varying COLLATE pg_catalog."default",
    CONSTRAINT author_details_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE book_management_schema.author_details
    OWNER to localuser;