CREATE database books;
   \c books

CREATE TABLE book (
    id          SERIAL PRIMARY KEY,
    author_id   integer NOT NULL,
    name        varchar(40) NOT NULL
);


CREATE TABLE Author (
    id          SERIAL PRIMARY KEY,
    date_birth  date,
    date_death  date,
    full_name   varchar(40) NOT NULL,
    homeland    varchar(40) NOT NULL
);

CREATE TABLE Edition (
    id              SERIAL PRIMARY KEY,
    book_id         integer NOT NULL,
    date_published  date,
    number_copies   integer NOT NULL,
    contry_published       varchar(40) NOT NULL
);