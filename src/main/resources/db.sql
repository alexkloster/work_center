-- CREATE DATABASE "work_center_db"
-- WITH
-- OWNER = postgres
-- ENCODING = 'UTF8'
-- CONNECTION LIMIT = -1;
--
-- \c "work_center_db"


CREATE TABLE "users"
(

    id        BIGSERIAL              NOT NULL,
    name      CHARACTER VARYING(127) NOT NULL,
    login     CHARACTER VARYING(127) NOT NULL,
    password  CHARACTER VARYING(127) NOT NULL,
    role      INT                    NOT NULL,
    phone     character varying(30)  NOT null,
    submitted BOOLEAN                NOT NULL DEFAULT FALSE,

    CONSTRAINT users_pk PRIMARY KEY (id)
);



CREATE TABLE company
(
    id    BIGSERIAL              NOT NULL,
    name  CHARACTER VARYING(127) NOT NULL,
    city  CHARACTER VARYING(127) NOT NULL,
    phone CHARACTER VARYING(127) NOT NULL,

    CONSTRAINT company_pk PRIMARY KEY (id)
);


CREATE TABLE offer
(
    id          BIGSERIAL              NOT NULL,
    name        CHARACTER VARYING(127) NOT NULL,
    company_id  INT                    NOT NULL,
    salary      DOUBLE PRECISION       NOT NULL,
    description CHARACTER VARYING(127) NOT NULL,

    CONSTRAINT offer_pk PRIMARY KEY (id),

    CONSTRAINT company_fk FOREIGN KEY (company_id)
        REFERENCES company (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE

);

CREATE TABLE response
(

    id       BIGSERIAL NOT NULL,
    offer_id INT       NOT NULL,
    user_id  INT       NOT NULL,


    CONSTRAINT response_pk PRIMARY KEY (id),

    CONSTRAINT offer_fk FOREIGN KEY (offer_id)
        REFERENCES offer (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE,

    CONSTRAINT user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE
);




