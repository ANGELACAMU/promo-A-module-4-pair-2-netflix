CREATE DATABASE netflix;
USE netflix;

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

