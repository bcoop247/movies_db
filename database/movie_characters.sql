DROP TABLE IF EXISTS movie_characters;

CREATE TABLE IF NOT EXISTS movie_characters(
	character_id SERIAL PRIMARY KEY,
  movie_id INT REFERENCES movies(id),
  character_name VARCHAR(100) NOT NULL,
  actor_name VARCHAR NOT NULL,
  description TEXT,
  role_type VARCHAR (50)
);

INSERT INTO movie_characters (character_name, actor_name)
VALUES
('John Wick', 'Keanu Reeves')
('Winston', 'Ian McShane'),
('The Bowery King', 'Laurence Fishburn'),
('Neo', 'Keanu Reeves'),
('Batman', 'Christain Bale'),
('Bruce Wayne', 'Christain Bale'),
('Catwoman', 'Anne Hathaway'),
('Bane', 'Tom Hardy'),
('James Gordon', 'Gary Oldman'),
('Happy Gilmore', 'Adam Sandler'),
('Virginia Venit', 'Julie Bowen'),
('Chubbs Peterson', 'Carl Weathers'),
('Shooter McGavin', 'Christopher McDonald'),
('Peter LaFleur', 'Vince Vaugh'),
('White Goodman', 'Ben Stiller'),
('Kate Veatch', 'Christine Taylor'),
('Josh Lambert', 'Patrick Wilson'),
('Renai Lambert', 'Rose Byrne'),
('Elise Rainier', 'Lin Shaye'),
('Jason Bourne', 'Matt Damon'),
('Marie Helena Krutz', 'Franka Potente');