Mysql -u root -p 
-- Enter password: your password
SHOW Databases;
-- List all the database created in our database


CREATE database IMDB;
use IMDB;

create table Movie_Name(Id INT NOT NULL auto_increment, Picture_Name VARCHAR(500)
 NOT NULL UNIQUE,  PRIMARY KEY (Id));

insert INTO Movie_Name VALUES (1 , "The Dark Knight Rises"), (2 , "Inception"), 
(3, "Harry Potter and the Philospher stone"), (4, "Avengers End Game"); 

Create table Movie_Genre(GenreID INT NOT NULL, GenreName VARCHAR(300) NOT NULL,
 FOREIGN KEY (GenreID) references Movie_Name(Id));
 
 INSERT INTO Movie_Genre VALUES ( 1 , "Action"), (1, "Science Fiction"),(2 , "Science Fiction"),
 (2, "Thriller"), (2,"Adventure"), (3, "Adventure"), (3, "Epic"), (3, "Mystery"), (4, "Action"), (4, "Fantasy"),
 (4, "War");
 
 Create table Artists (Artid int NOT NULL, Artist_name VARCHAR (200) NOT null, 
 Roles_in_film varchar (200) not null, Artist_skills VARCHAR (100) not null,
 Foreign key (Artid) references Movie_Name(Id));

 Insert into Artists values (1, "Christian Bale", "Hero", "Dubbing Artsist"),
 (1, "Christian Bale", "Hero", "play back singer"),
 (1,  "Heath Ledger", "Villain", "Matrix player"),(1,  "Heath Ledger", "Sub-ordinate", "Chess player"), 
 (2, "Leonardo Dicaprio", "Hero", "Dubbing Artsist" ), (2, "Cillian Murphy", "Hero-Brother", "Dubbing Artsist"),
 (2, "Cillian Murphy", "Villain", "Observer"), (2, "Tom Hardy", "Hero", "Observer"),
 (3, "Daniel Radclife", "Hero", "Soccer"),(3, "Daniel Radclife", "Suspected-Villain", "chess"),
 (3, "Emma wastson", "Lead character", "Spanish speaker"), (3 ,"Rupert Grint", "Lead actor", "Soccer"),
 (3 ,"Rupert Grint", "Villain", "chess player"), (3 ,"Rupert Grint", "Bother", "Runs Fast"),
 (4, "Robert Downey.jr", "Hero", "Observer"), (4, "Scarllet Johnson", "Heroine", "spanish speaker"),
 (4, "Scarllet Johnson", "Sister", "Pianoist"),(4, "Scarllet Johnson", "Mother", "Guitarist");
 

  
 Create Table Rev_userRev (Revid INT not null, Reviews Varchar (1000) not null, Reviewer_Name Varchar(200) Not null,
 Foreign Key(Revid) references Movie_Name(Id));  
 
 INSERT into Rev_userRev Values (1, "Possibly my personal favourite of the Nolan Batman films, 
 and I do like Batman Begins and The Dark Knight very much. Is it perfect? For me, not quite,
 there are so many plot strand in a long running time that the film occasionally(and there is
 a big emphasis on that) sags in momentum and some of the strands in the ending could have done 
 with more development. It is a brilliant film all the same, one of the highlights so far of the year.", "Ryan Romero"),
 (1 , "The dark knight rises is the brooding and epic finale to Nolans Bat franchise.
 It is the seemingly visually compelling film in contrast to the dark knight.", "Oregami creations"),
 (2, "I saw Memento very recently, something that turned out to be a great miss.I saw it again, just to make a couple of thins straight-and i'll definitely do the same with Inception.",
 "Ryan Romitoi"), (2,"Christopher Nolan might just end up as the most alluring and enigmatic film maker of contemporary cinema. Memento, The Prestige, Dark Knight and now Inception: 
 Nolan's oeuvre is definitely one of the most creative outpourings in commerce and cliche-ridden Hollywood", "Nilanjan Pathak"),
 (2, "Everything about it is so masterfully crafted, ranging from the plot development, to the very scores used in the background and end credits - 
 my all time favourite is 'Time' by Hans Zimmer (who is a genius film score composer if I might add).", "Ekenze Ozigbu"),
 (3, "While it may not be as flashy, refined, or impressive as the rest of the films in the franchise, Sorcerer’s Stone (or Philosopher’s Stone for the Potter purists) deserves immense credit for setting up this series so wonderfully, and laying a fantastic foundation off of which the other films could be built.",
 "Reena Devi"), (4, "Where to begin, where to begin! You know a movie is outstanding when the end credits alone are more epic than the majority of films released in the last 20 years! This film is the pure definition of an emotional roller coaster ", 
 "Bharati Madavi"), (4, "The film's storytelling is some of the best ever seen in blockbuster filmaking, combining smart writing, 
 intimate character moments, and exceptional world building to create one of the best blockbuster stories 
 ever.", "Ashif khan");
 

select Id, Picture_Name, GenreName, Artist_name, Roles_in_film, Artist_skills, Reviews, Reviewer_Name
 FROM Movie_Name Join Movie_Genre On Movie_Genre.GenreID = Movie_Name.id Join Artists on 
Artists.Artid = Movie_Name.id Join Rev_userRev on Rev_userRev.Revid =  Movie_Name.id  order by id;

select * From Movie_Genre;
Select * from Artists;
Select * from Rev_userRev;


*********************************************************
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
