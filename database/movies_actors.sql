DROP TABLE IF EXISTS movies_actors;

CREATE TABLE IF NOT EXISTS movies_actors (
  movie_id INTEGER REFERENCES movies(id), 
  actor_id INTEGER REFERENCES actors(id)
);

INSERT INTO movies_actors (movie_id, actor_id)
VALUES
(1, 1),
(2, 9),
(3, 8),
(3, 11),
(4, 5),
(5, 2),
(7, 10),
(8, 4),
(9, 3),
(9, 12),
(10, 3)
;