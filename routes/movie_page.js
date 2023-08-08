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
//Not fully sure how the below middleware works in app
router.use(express.urlencoded({ extended: true }));
// router.use(express.json());

router.get('/:id', async (req, res) => {
  
  try{
  const dataSetOne = await db.query(`
  SELECT  a.first_name, a.last_name, m.movie, m.rating, m.id, m.genre
  FROM actors as a
  JOIN movies_actors as ma ON actor_id = a.id
  JOIN movies as m ON movie_id = m.id
  WHERE m.id = $1
  ;`, [req.params.id]);

  const dataSetTwo = await db.query(`
  SELECT review_text FROM movie_reviews
  WHERE movie_id = $1;
`, [req.params.id]);

  res.render('movie_page', { movie: {title: dataSetOne[0].movie, rating: dataSetOne[0].rating, id: dataSetOne[0].id}, actors: dataSetOne, reviews: dataSetTwo }, );
  } 
  catch(error){
    // Handle errors and respond with an appropriate error message
    res.status(500).send('Error fetching data');
  }
})

router.get('/new_review/:id', (req, res) => {
  res.render('new_review');
})

router.post('/new_review/:id', async (req, res) => {
  const { user_review } = req.body;
  const movieId = req.params.id; 
  
  await db.query(`INSERT INTO movie_reviews(review_text, movie_id) VALUES ($1, $2)`, [user_review, movieId])
  .then((data) => {  res.send(`
  <script>
    alert("Your Review has Been Posted!");
    const parameter = "${movieId}";
    window.location.href = "/movie_page/" + parameter;
  </script>
`);} )
  .catch((error) => {res.status(error).send('ERROR POSTING')});

})

router.get('/delete/:id', async (req, res) => {
  const id = req.params.id;
  await db.query(`DELETE FROM movie_reviews WHERE movie_id = $1`, id)
  .then(res.send(`delete success <a href ="/movie_page/${id}"> Back </a>`))
  .catch((error) => {res.status(error).send('error deleting')});

})


module.exports = router;

