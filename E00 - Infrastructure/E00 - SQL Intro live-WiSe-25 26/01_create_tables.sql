-- DROP TABLE users;
CREATE TABLE users (
    id serial PRIMARY KEY,
    name VarCHAR(50) NOT NULL UNIQUE,
    registraion_date TIMESTAMP    
);

ALTER TABLE users RENAME registraion_date  TO registration_date;
ALTER TABLE users ALTER COLUMN registration_date SET DEFAULT now();

-- DROP TABLE posts;

CREATE TABLE posts (
    id serial PRIMARY KEY,
    title VarCHAR(200) NOT NULL,
    body Text,
    author_id INTEGER,
    publish_date timestamp,
    FOREIGN KEY (author_id ) REFERENCES users(id)

);

ALTER TABLE posts ALTER COLUMN publish_date SET DEFAULT now();

-- DROP TABLE comments;

CREATE TABLE comments (
 id serial PRIMARY KEY,
 author_id INTEGER,
 post_id INTEGER,
 message TEXT,
 FOREIGN KEY (author_id ) REFERENCES users(id),
 FOREIGN KEY (post_id) REFERENCES posts(id),
 publish_date timestamp default current_timestamp
);

