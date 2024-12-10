USE sql7749765;

ALTER TABLE users ADD COLUMN fk_users INT;
ALTER TABLE users ADD FOREIGN KEY (fk_movies) REFERENCES movies(idMovie);


CREATE TABLE users_has_movies(
fk_users INT,
fk_movies INT
);

-- La usuaria con id 1 tenga como favoritas las películas con id 1 y 2.
-- La usuaria con id 2 tenga como favorita solo la película con id 2.
INSERT INTO users_has_movies(fk_users, fk_movies)
VALUES (1, 1), (1, 2), (2, 2);






