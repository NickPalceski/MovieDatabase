--DDL file

--General Information on Movie
CREATE TABLE movie(
movie_id SERIAL PRIMARY KEY,
title VARCHAR(500),
genre VARCHAR(500),
duration NUMERIC(3,0),
release_date DATE
);

--Rating and Reception of Movie
CREATE TABLE reception(
rating_id SERIAL PRIMARY KEY,
movie_id INT,
tomato_rating NUMERIC(5,2) NOT NULL,
FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);

--Production Details for Movie
CREATE TABLE production(
production_id SERIAL PRIMARY KEY,
movie_id INT,
director VARCHAR(500) NOT NULL,
producer VARCHAR(500) NOT NULL,
screenwriter VARCHAR(500),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);

-- Theatre Location Metadata
CREATE TABLE location (
    location_id SERIAL PRIMARY KEY,
    state VARCHAR(2),
    city VARCHAR(50),
    theatre_name VARCHAR(50)
);

-- Showtimes / Plays Relationship (Movie shown at a location)
CREATE TABLE plays (
    play_id SERIAL PRIMARY KEY,
    movie_id INT,
    location_id INT,
    showing_date DATE,
    time_slot TIME,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (location_id) REFERENCES location(location_id) ON DELETE CASCADE
);

-- Movie Relationships: Prequel/Sequel Connections
CREATE TABLE movie_relation (
    relation_id SERIAL PRIMARY KEY,
    movie_id INT,					-- movie ID that HAS a prequel or sequel
    related_movie_id INT,			-- movie ID that IS the prequel or sequel
    relation_type VARCHAR(10) CHECK (relation_type IN ('prequel', 'sequel')),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (related_movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);
