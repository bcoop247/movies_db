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

INSERT INTO movies_actors(movie_id, actor_id)
VALUES
(6, 14),
(6, 15);

INSERT INTO movies_actors(movie_id, actor_id)
VALUES
(1, 16),
(1, 17),
(4, 18),
(4, 19),
(5, 20),
(5, 21),
(5, 22),
(10, 23),
(7, 24),
(2, 25);