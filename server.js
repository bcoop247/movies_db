const express = require('express');
const app = express();
const bcrypt = require('bcrypt')

app.set('view engine', 'ejs'); //setting up the view iengien in which is ejs (npm i ejs)

app.use(express.urlencoded({ extended: true })); //Middleware to parse form data. 
app.use(express.json());

app.get('/', (req, res) => {
  res.render('index', {text: 'world'});
})

const moviePageRouter = require('./routes/movie_page');
// const moviesRouter = require('./routes/movies');
const homeRouter = require('./routes/home');
const loginRouter = require('./routes/login');
const newUserRouter = require('./routes/newuser');
// const newReviewRouter = require('./routes/new_review');

app.use('/movie_page', moviePageRouter);
// app.use('/movies', moviesRouter);
app.use('/home', homeRouter);
app.use('/login', loginRouter);
app.use('/newuser', newUserRouter);
// app.use('/new_review', newReviewRouter);

app.listen(3000, () => {
  console.log('Listening on port 3000.')
})

// TO DO: create the create user page
// hash the passwords
// allow user to search movies db
// allow user to add movei not in the db
// allow user to add review for movies in db
