-- Join movies and actors tables (in movie_page route)
SELECT a.first_name, a.last_name, m.movie
FROM actors as a
JOIN movies_actors as ma ON actor_id = a.id
JOIN movies m ON movie_id = m.id
WHERE m.id = 1;
;

-- Select all records from movies (in home route)
SELECT * FROM movies;

-- Example to delete a single record by the id and movie_id
DELETE FROM movie_reviews
WHERE movie_reviews.movie_id = 5 AND movie_reviews.id = 11;

-- Example to update a users email address based on their username as the condition
UPDATE users
SET email = 'tigerwoods1@yahoo.com'
WHERE username = 'twoods';
