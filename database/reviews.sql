DROP TABLE IF EXISTS movie_reviews;

CREATE TABLE IF NOT EXISTS movie_reviews (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movies(id),
    user_id INTEGER REFERENCES users(id),
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    review_text TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO movies_reviews (movie_id, review_text)
VALUES
(2, 'pretty good flick'),
(2, 'brilliant film'),
(3, 'was a god good movie'),
(4, 'not to bad'),
(5, 'horrible'),
(6, 'really scary movie');
