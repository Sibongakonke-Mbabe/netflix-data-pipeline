
CREATE TABLE links (
    movie_id INTEGER PRIMARY KEY,
    imdb_id INTEGER,
    tmdb_id INTEGER
);

CREATE TABLE ratings (
    user_id INTEGER,
    movie_id INTEGER,
    rating DECIMAL(2,1),
    timestamp BIGINT
);
