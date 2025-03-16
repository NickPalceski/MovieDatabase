-- Data Manipulation

-- Insert movie data
INSERT INTO movie (title, genre, duration, release_date) VALUES
('Dune: Part Two', 'Sci-Fi', 165, '2024-03-01'),
('Mickey 17', 'Black Comedy', 117, '2025-03-07'),
('Snow White', 'Fantasy Musical', 109, '2025-03-21'),
('Captain America: Brave New World', 'Superhero', 118, '2025-02-14'),
('Black Bag', 'Spy Thriller', 125, '2025-03-14');

-- Insert reception of movies (this way we do not have to keep track of movie_id)
INSERT INTO reception (movie_id, tomato_rating)
VALUES
((SELECT movie_id FROM movie WHERE title = 'Dune: Part Two'), 92.50),
((SELECT movie_id FROM movie WHERE title = 'Mickey 17'), 85.00),
((SELECT movie_id FROM movie WHERE title = 'Snow White'), 88.00),
((SELECT movie_id FROM movie WHERE title = 'Captain America: Brave New World'), 90.00),
((SELECT movie_id FROM movie WHERE title = 'Black Bag'), 80.00);

-- Insert production of movies (this way we do not have to keep track of movie_id)
INSERT INTO production (movie_id, director, producer, screenwriter) 
VALUES
((SELECT movie_id FROM movie WHERE title = 'Dune: Part Two'), 'Denis Villeneuve', 'Mary Parent', 'Jon Spaihts'),
((SELECT movie_id FROM movie WHERE title = 'Mickey 17'), 'Bong Joon-ho', 'Dede Gardner', 'Bong Joon-ho'),
((SELECT movie_id FROM movie WHERE title = 'Snow White'), 'Marc Webb', 'Marc Platt', 'Greta Gerwig'),
((SELECT movie_id FROM movie WHERE title = 'Captain America: Brave New World'), 'Julius Onah', 'Kevin Feige', 'Malcolm Spellman'),
((SELECT movie_id FROM movie WHERE title = 'Black Bag'), 'Emily Davis', 'Michael Brown', 'David Wilson');

-- Insert location data of movies (this way we do not have to keep track of movie_id)
INSERT INTO location (movie_id, showing_date, state, city, theatre_name, time_slot) 
VALUES
((SELECT movie_id FROM movie WHERE title = 'Dune: Part Two'), '2025-03-16', 'CA', 'Los Angeles', 'AMC Theaters', '19:30:00'),
((SELECT movie_id FROM movie WHERE title = 'Mickey 17'), '2025-03-16', 'NY', 'New York City', 'Regal Cinemas', '18:45:00'),
((SELECT movie_id FROM movie WHERE title = 'Snow White'), '2025-03-21', 'FL', 'Orlando', 'Disney Springs AMC', '19:00:00'),
((SELECT movie_id FROM movie WHERE title = 'Captain America: Brave New World'), '2025-03-14', 'TX', 'Houston', 'Cinemark XD', '21:00:00'),
((SELECT movie_id FROM movie WHERE title = 'Black Bag'), '2025-03-16', 'IL', 'Chicago', 'IMAX Navy Pier', '20:00:00');

-- Insert miscellaneous data for movies (this way we do not have to keep track of movie_id)
INSERT INTO miscellaneous (movie_id, prequel, sequel, award) 
VALUES
((SELECT movie_id FROM movie WHERE title = 'Dune: Part Two'), 'Dune (2021)', NULL, 'Nominated for Best Visual Effects 2025'),
((SELECT movie_id FROM movie WHERE title = 'Mickey 17'), NULL, NULL, 'Winner of Best Sci-Fi Film 2025'),
((SELECT movie_id FROM movie WHERE title = 'Snow White'), NULL, NULL, 'Nominated for Best Costume Design 2025'),
((SELECT movie_id FROM movie WHERE title = 'Captain America: Brave New World'), 'The Falcon and the Winter Soldier (TV)', NULL, 'Winner of Best Superhero Film 2025'),
((SELECT movie_id FROM movie WHERE title = 'Black Bag'), NULL, NULL, 'Winner of Best Thriller 2025');