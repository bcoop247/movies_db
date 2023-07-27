DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  movie VARCHAR(50),
  genre VARCHAR (12),
  rating DECIMAL(2, 1),
  release_date DATE
);

INSERT INTO movies (movie, genre, rating, release_date)
VALUES 
('John Wick', 'Action', 7.4, '2014-10-24'),
('The Bourne Identity', 'Action', 7.9, '2002-06-14'),
('Old School', 'Comedy', 7.0, '2003-02-14'),
('The Dark Knight Rises', 'Action', 8.4, '2012-07-20'),
('Happy Gilmore', 'Comedy', 7.0, '1996-02-06'),
('Sinister', 'Horror', 6.8, '2011-04-01'),
('Insidious', 'Horror', 6.8, '2014-10-24'),
('Extraction', 'Action', 6.8, '2020-04-24'),
('Starsky and Hutch', 'Action', 6.1, '2004-02-26'),
('Dodgeball', 'Comedy', 6.7, '2004-06-18')
;
       