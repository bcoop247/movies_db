DROP TABLE IF EXISTS actors;

CREATE TABLE IF NOT EXISTS actors(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  birth_date DATE,
  nationality VARCHAR(50)
);

INSERT INTO actors (first_name, last_name, birth_date, nationality)
VALUES
('Keanu', 'Reeves', '1964-09-02', 'Canadian'),
('Adam', 'Sandler', '1966-09-09', 'American'),
('Ben', 'Stiller', '1965-11-30', 'American'),
('Chris', 'Hemsworth', '1983-08-11', 'Australian'),
('Christain', 'Bale', '1974-01-30', 'British'),
('Arnold', 'Schwarzenegger', '1947-07-30', 'Austrian'),
('Leonardo', 'DiCaprio', '1974-11-11', 'American'),
('Will', 'Ferrell', '1967-07-16', 'American'),
('Matt', 'Damon', '1970-08-10', 'American'),
('Lin', 'Shaye', '1943-10-12', 'American')
;

INSERT INTO actors (first_name, last_name, birth_date, nationality)
VALUES 
('Vince', 'Vaugh', '1970-03-28', 'American'),
('Owen', 'Wilson', '1968-11-18', 'American'),
('Tom', 'Hardy', '1977-09-15', 'British');

INSERT INTO actors (first_name, last_name, birth_date, nationality)
VALUES 
('Ethan', 'Hawke', '1970-11-06', 'American'),
('James', 'Ransone', '1979-06-02', 'American');

INSERT INTO actors (first_name, last_name)
VALUES 
('Ian', 'McShane'),
('Laurence', 'Fishburn'),
('Anne', 'Hathaway'),
('Gary', 'Oldman'),
('Julie', 'Bowen'),
('Carl', 'Weathers'),
('Christopher', 'McDonald'),
('Christine', 'Taylor'),
('Patrick', 'Wilson'),
('Franka', 'Potente');




