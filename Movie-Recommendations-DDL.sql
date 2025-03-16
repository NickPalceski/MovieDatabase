--DDL file

--General Information on Movie
CREATE TABLE movie(
movie_id SERIAL PRIMARY KEY,
title varchar(50),
genre varchar(20),
duration numeric(3,0),
release_date date);

--Rating and Reception of Movie
CREATE TABLE reception(
rating_id SERIAL PRIMARY KEY,
movie_id SERIAL,
tomato_rating numeric (5,2) NOT NULL,
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--Production Details for Movie
CREATE TABLE production(
production_id SERIAL PRIMARY KEY,
movie_id SERIAL,
director varchar(50) NOT NULL,
producer varchar(50) NOT NULL,
screenwriter varchar(50),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);


--State, City and theatre where movie is playing
CREATE TABLE location(
loc_id SERIAL PRIMARY KEY,
movie_id SERIAL,
showing_date date,
state varchar(2),
city varchar(50),
theatre_name varchar(50),
time_slot time,
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);


CREATE TABLE miscellaneous(
misc_id SERIAL PRIMARY KEY,
movie_id SERIAL,
prequel_id SERIAL,
sequel_id SERIAL,
awards varchar(200),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
FOREIGN KEY (prequel_id) REFERENCES movie(movie_id),
FOREIGN KEY (sequel_id) REFERENCES movie(movie_id)
);
