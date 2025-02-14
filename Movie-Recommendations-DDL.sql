--DDL file


CREATE TABLE movie(
movie_id SERIAL PRIMARY KEY,
title varchar(50),
director varchar(50),
producer varchar(50),
genre varchar(20),
duration numeric(3,0),
tomato_rating numeric (5,2),
release_date date);

--State, City and theatre where movie is playing?
CREATE TABLE location(

)


CREATE TABLE plays(

)