CREATE TABLE users
(
    id          BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    address     VARCHAR(255),
    birth_date  date,
    description VARCHAR(255),
    username       VARCHAR(255)  NOT NULL,
    first_name        VARCHAR(255),
    password    VARCHAR(255)  NOT NULL,
    last_name     VARCHAR(255),
    create_date date,
    update_date date,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

CREATE TABLE user_roles
(
    user_id BIGINT NOT NULL,
    roles    INTEGER
);

ALTER TABLE user_roles
    ADD CONSTRAINT fkml90kef4w2jy7oxyqv742tsfc FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE NO ACTION ON DELETE NO ACTION;