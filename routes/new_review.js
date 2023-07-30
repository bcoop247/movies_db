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

router.get('/:id', (req, res) => {
  
  res.render('new_review');
})

router.post('/:id', (req, res) => {
  const { userReview } = req.body;
  console.log(userReview);
  res.redirect('home');
})

module.exports = router;