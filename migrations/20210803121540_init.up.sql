CREATE TABLE users
(
    id            serial       not null unique,
    chat_id       int          not null,
    last_step     varchar(255)
);

CREATE TABLE companies
(
    id            serial       not null unique,
    name          varchar(255) not null
);

CREATE TABLE answers
(
    id            serial       not null unique,
    answer        varchar(255) not null,
    question      varchar(255),
    company_id    int          references companies (id) on delete no action not null
);