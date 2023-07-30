-- Join movies and actors tables
SELECT a.first_name, a.last_name, m.movie
FROM actors as a
JOIN movies_actors as ma ON actor_id = a.id
JOIN movies m ON movie_id = m.id
WHERE m.movie = 'John Wick'
;