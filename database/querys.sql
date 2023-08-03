-- Join movies and actors tables
SELECT a.first_name, a.last_name, m.movie
FROM actors as a
JOIN movies_actors as ma ON actor_id = a.id
JOIN movies m ON movie_id = m.id
WHERE m.movie = 'John Wick'
;

SELECT actors.first_name, movies.movie, movie_reviews.review_text
FROM actors
JOIN movies_actors ON actor_id = actors.id
JOIN movies ON movies_actors.movie_id = movies.id
JOIN movie_reviews ON movie_reviews.movie_id = movies.id

WHERE movies.id = 2
;

 SELECT a.first_name, a.last_name, m.movie, m.rating, m.id, movie_reviews.review_text
  FROM actors as a
  JOIN movies_actors as ma ON actor_id = a.id
  JOIN movies as m ON movie_id = m.id
  JOIN movie_reviews ON movie_reviews.movie_id = m.id
  WHERE m.id = $1;


-- THIS IS A TESTING QUERY 
  SELECT DISTINCT ON (m.id)
    m.movie AS movie_title,
    a.first_name,
    a.last_name,
    r.review_text
FROM
    movies m
JOIN
    movies_actors ma ON m.id = ma.movie_id
JOIN
    actors a ON ma.actor_id = a.id
LEFT JOIN
    movie_reviews r ON m.id = r.movie_id
    WHERE m.id = 6;
    
;