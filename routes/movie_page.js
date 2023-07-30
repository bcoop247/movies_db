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


router.get('/:id', async (req, res) => {
  await db.many(`
  SELECT a.first_name, a.last_name, m.movie, m.rating
  FROM actors as a
  JOIN movies_actors as ma ON actor_id = a.id
  JOIN movies as m ON movie_id = m.id
  WHERE m.id = $1
  ;`, [req.params.id])
  .then(data => {
    res.render('movie_page', { movie: {title: data[0].movie, rating: data[0].rating}, actors: data });
  })
  .catch(error => {
    res.status(200).send('Error', error);
  })
})

module.exports = router;

