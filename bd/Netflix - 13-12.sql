
USE Netflix_cornstaymy;

CREATE TABLE movies(
idMovie INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
`title` VARCHAR(45) NOT NULL,
`gender` VARCHAR(45) NOT NULL,
`image` VARCHAR(1000) NOT NULL,
`category` VARCHAR(45) NOT NULL,
`year` INT
);
CREATE TABLE users(
idUser INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
`user` VARCHAR(45) NOT NULL,
`password` VARCHAR(45) NOT NULL,
`name` VARCHAR(45) NOT NULL,
`plan_details` VARCHAR(45) NOT NULL
);
CREATE TABLE actors(
idActor INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
`name` VARCHAR(45) NOT NULL,
`lastname` VARCHAR(45) NOT NULL,
`country` VARCHAR(45) NOT NULL,
`birthday` DATE
);

INSERT INTO movies (title, gender, image, category, year)
VALUES ('Pulp Fiction', 'crimen', 'https://pics.filmaffinity.com/pulp_fiction-210382116-large.jpg', 'top 10', 1994),
('La vita é bella', 'comedia', 'https://pics.filmaffinity.com/la_vita_e_bella-646167341-mmed.jpg', 'top 10', 1996),
('Forrest Gump', 'comedia', 'https://pics.filmaffinity.com/forrest_gump-212765827-mmed.jpg', 'top 10', 1994);

ALTER TABLE users ADD email VARCHAR (45) AFTER name;

INSERT INTO users (user, password, name, email, plan_details)
VALUES ('laura_dev', 'laura', 'Laura', 'laura@gmail.com', 'Standard'),
('maria_dev', 'maria', 'Maria', 'maria@gmail.com', 'Standard'),
('ester_dev', 'ester', 'Ester', 'ester@gmail.com', 'Standard');

INSERT INTO actors (name, lastname, country, birthday)
VALUES ('Tom', 'Hanks', 'Estados Unidos', '1956-07-09'),
('Roberto', 'Benigni', 'Italia', '1952-10-27'),
('John', 'Travolta', 'Estados Unidos', '1954-02-18');
SELECT * FROM actors;
SELECT title, gender FROM movies  WHERE year >= 1990;
SELECT * FROM movies WHERE category = "top 10";
UPDATE movies SET year = 1997  WHERE idMovie = 2;
SELECT * FROM actors WHERE birthday BETWEEN '1950-01-01' AND '1959-12-31';
SELECT name, lastname FROM actors WHERE country = 'Estados Unidos';
SELECT * FROM users WHERE plan_details = 'Standard';
DELETE FROM users WHERE name LIKE 'M%' AND idUser>0;
DESCRIBE users; 
SELECT DATABASE ();

ALTER TABLE users ADD COLUMN fk_users INT;
ALTER TABLE movies ADD COLUMN fk_movies INT;
ALTER TABLE users ADD FOREIGN KEY (fk_movies) REFERENCES movies(idMovie);


CREATE TABLE users_has_movies(
fk_users INT,
fk_movies INT
);

-- La usuaria con id 1 tenga como favoritas las películas con id 1 y 2.
-- La usuaria con id 2 tenga como favorita solo la película con id 2.
INSERT INTO users_has_movies(fk_users, fk_movies)
VALUES (1, 1), (1, 2), (2, 2);


SELECT * FROM movies;