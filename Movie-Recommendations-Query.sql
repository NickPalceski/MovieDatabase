-- Query Questions

-- 1. Return all movies that are currently playing in theaters.
SELECT title, release_date 
FROM movie 
WHERE release_date <= CURRENT_DATE;

-- 2. Find the movies that were released after January 1st.
SELECT title, release_date 
FROM movie 
WHERE release_date > '2025-01-01';

-- 3. Get all movies including their title, release date, and rotten tomato rating. Order by descending.
SELECT movie.title, movie.release_date, reception.tomato_rating
FROM movie
RIGHT JOIN reception ON movie.movie_id = reception.movie_id
ORDER BY reception.tomato_rating DESC;

-- 4.

-- 5.

-- 6.

-- 7.

-- 8.

-- 9.

-- 10.