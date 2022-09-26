\connect "BOOK_MANAGEMENT_DB"

-- Table: book_management_schema.author_details

-- DROP TABLE book_management_schema.author_details;

CREATE TABLE IF NOT EXISTS book_management_schema.books_details
(
    id character varying,
    book_name character varying COLLATE pg_catalog."default" NOT NULL,
    book_version character varying COLLATE pg_catalog."default" NOT NULL,
	bookId character varying COLLATE pg_catalog."default",
    CONSTRAINT book_details_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE book_management_schema.books_details
    OWNER to localuser;