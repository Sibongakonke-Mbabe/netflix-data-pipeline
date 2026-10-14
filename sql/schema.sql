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


-- The TABLE for the movies 
CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT,
    release_year INTEGER
);


-- The TABLE for genres 
CREATE TABLE genres (
    genres_id INTEGER PRIMARY KEY,
    genre_name TEXT UNIQUE
);


-- The TABLE for movie_genres. The link between the movie and its genres
CREATE TABLE movie_genres (
    movie_id INTEGER,
    genres_id INTEGER,

    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genres_id) REFERENCES genres(genres_id),

    PRIMARY KEY (movie_id, genres_id)
);
