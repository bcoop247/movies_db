const express = require('express');
const router = express.Router();
const pgp = require("pg-promise")(/*options*/);
const session = require('express-session');

const dbConfig = {
  host: 'localhost',
  port: 5432,
  database: 'movies',
  user: 'brandoncooper',
  password: 'pass'
};
const db = pgp(dbConfig);


router.get('/', async (req, res) => {
  
  await db.any(`SELECT * FROM movies;`)
  .then((data) => {
    res.render('home', { movies: data } );
  }).catch((error) => {
    console.log('ERROR', error);
  })
  
})

module.exports = router;