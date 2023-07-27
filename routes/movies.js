const express = require('express');
const router = express.Router();
const pgp = require("pg-promise")(/*options*/);

const dbConfig = {
  host: 'localhost',
  port: 5432,
  database: 'movies',
  user: 'brandoncooper',
  password: 'pass'
};
const db = pgp(dbConfig);

//Child router of parent router in which is for /movies
router.get('/', async (req, res) => {
  await db.any('SELECT * FROM movies')
    .then(data => {
        
        res.render('movies', { movies: data });
    })
    .catch(error => {
        console.error('Error:', error);
    });
})

module.exports = router;

// THOUGHHTS - Start database with ten etnries and if the entry does not exist upon user search have them have the option to enter it as a new movie. Also, provide functin so the user can add a review for a movie. Have the user be able to search for the movie by name, director, or actors. 
