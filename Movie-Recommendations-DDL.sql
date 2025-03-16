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
imdb_rating numeric(10,2),
tomato_rating numeric (5,2),
letterboxd_rating numeric (5,2),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--Production Details for Movie
CREATE TABLE production(
production_id SERIAL PRIMARY KEY,
movie_id SERIAL,
director varchar(50),
producer varchar(50),
screenwriter varchar(50),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--Where Movie is being Digitally Hosted, Details of Host and Payment
CREATE TABLE d_location(
d_id SERIAL PRIMARY KEY,
movie_id SERIAL,
host_name varchar(20),
host_website varchar(50),
cost_to_watch numeric(30,2),
subscription_req bool,
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--State, City and theatre where movie is playing?
CREATE TABLE p_location(
p_id SERIAL PRIMARY KEY,
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
