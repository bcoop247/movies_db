const express = require('express');
const router = express.Router();
const pgp = require("pg-promise")(/*options*/);
const bcrypt = require('bcrypt');

const dbConfig = {
  host: 'localhost',
  port: 5432,
  database: 'movies',
  user: 'brandoncooper',
  password: 'pass'
};
const db = pgp(dbConfig);
router.use(express.urlencoded({ extended: true }));
router.use(express.json());

router.get('/', (req, res) => {
  res.render('newuser');
});

router.post('/', (req, res) => {
  const { first_name, last_name, email, username, password} = req.body;

  const saltRounds = 10;
  bcrypt.genSalt(saltRounds, function(err, salt){bcrypt.hash(password, salt, function(error, hashedpassword){
    db.query(`INSERT INTO users(first_name, last_name, email, username, password) VALUES ($1, $2, $3, $4, $5)`, 
    [first_name, last_name, email, username, hashedpassword])
    .then((data) => {
      res.send("<p> New Account Created! </p> <br> <p> <a href='/home'> Continue </a> </p>")
    })
    .catch((error) => {
      res.send('<h1> Error Creating Account! </h1> <br> <p>' + error + "</p><h2><a href='/newuser'>Try Again</a></h2>")
      console.log('ERROR', error)
    })

  })});

})

module.exports = router;