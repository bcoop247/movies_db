DROP TABLE IS EXISTS movie_reviews;

CREATE TABLE movie_reviews (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movies(id),
    user_id INTEGER REFERENCES user(id),
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    review_text TEXT,
    review_date DATE
);