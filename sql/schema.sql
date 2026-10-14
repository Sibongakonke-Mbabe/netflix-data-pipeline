-- The TABLE for the links Raw data
CREATE TABLE links (
    movie_id INTEGER PRIMARY KEY,
    imdb_id INTEGER,
    tmdb_id INTEGER
);

-- The TABLE for the ratings Raw data
CREATE TABLE ratings (
    user_id INTEGER,
    movie_id INTEGER,
    rating DECIMAL(2,1),
    timestamp BIGINT
);

-- The TABLE for the tags Raw data
CREATE TABLE tags (
    user_id INTEGER,
    movie_id INTEGER,
    tag TEXT,
    timestamp BIGINT
);


