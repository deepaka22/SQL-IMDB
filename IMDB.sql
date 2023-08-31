Mysql -u root -p 
-- Enter password: your password
SHOW Databases;
-- List all the database created in our database
CREATE DATABASE IMDB;
USE IMBD;
-- Once database is created, Tables are need to be created 
CREATE TABLE Movies (id INT, MOVIE_NAME VARCHAR(200), Genre VARCHAR(200),  Artist(200), Role_in_movie VARCHAR(300), Review INT);
-- filed of the 1st column is created in table as id 
ALTER TABLE Movies ADD COLUMN Name VARCHAR(300);
-- Added additional column in table reviewer's name
-- Show table ---> Movies
-- Descrbibe Movies --> id, movie_name, All the fields and columns will be displayed
ALTER TABLE Movies RENAME COLUMN MOVIE_NAME TO Movie_name;
-- Renamed the column Name
INSERT INTO Movies VALUES (1, "Vikram", "Action", "Kamal Hassan", "Hero", "Director, writter, singer", 8 , "Deepak"  );
-- Values are added to movies 
INSERT INTO MOVIES VALUES (2, "HERO", "Science-fiction", "SK", "Hero", "Hero, singer", 7 , "Prakash"),
(3, "Jailer", "Thriller", "Rajinikanth", "Hero", "hero, mind reader", 8 ,"Venkatesan"), 
(4, "Openhiemer", "science-fiction", "Cillian murphy", "Hero", "hero", 9 , "Deepak"  );
(4, "Asvins", "THriller", "Aswin premnath", "Hero and villain ", "hero, musician", 6 , "Saranya");

UPDATE movies SET Artist = "Aswinadhan premnath" WHERE id = 4;
-- updated the artist name filed in id 4
DELETE FROM movies WHERE id = 1;
-- The movie will be deleted from table
