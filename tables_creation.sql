CREATE DATABASE library;

USE library;

CREATE TABLE users ( 
    id int NOT NULL AUTO_INCREMENT, 
    name varchar(255) NOT NULL, 
    e_mail varchar(255),
    deleted boolean NOT NULL DEFAULT false,
    PRIMARY KEY (id)
);


CREATE TABLE titles(
    id int NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    author_name varchar(255),
    deleted boolean NOT NULL DEFAULT false,
    PRIMARY KEY(id)
);

CREATE TABLE items(
    id int NOT NULL AUTO_INCREMENT,
    title_id int NOT NULL,
    publisher varchar(255),
    date_published DATE,
    PRIMARY KEY(id),
    deleted boolean NOT NULL DEFAULT false,
    FOREIGN KEY (title_id) REFERENCES titles(id) ON DELETE CASCADE
);

CREATE TABLE checkout_items(
    user_id int NOT NULL,
    item_id int NOT NULL,
    checkout_date DATE NOT NULL,
    return_date DATE NOT NULL,
    returned boolean NOT NULL DEFAULT false,
    deleted boolean NOT NULL DEFAULT false,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
);

