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

//render the login form. 
router.get('/', (req, res) => {
  res.render('login');
})

//Handle the form submission.
router.post('/', async (req, res) => {
  const { username, password } = req.body;
  try {
    const user = await db.oneOrNone(
      `SELECT username, password 
       FROM users 
       WHERE username = $1 `, 
      [username]);

    if(user && bcrypt.compareSync(password, user.password))
    {
      res.redirect('home');
      
    }else{
      res.status(401).send('<script>alert("Invalid Username or Password"); window.location.href="/login";</script>');
    };

  }catch(error){
    console.log('ERROR', error);
    res.status(500).send('Server Error');
  }

})

module.exports = router;