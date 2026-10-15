

-- 1. Number of movies released per year
SELECT
    release_year,
    COUNT(*) AS movies_count
FROM movies
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year;


-- 2. Most-rated movies
SELECT
    m.title,
    COUNT(r.rating) AS rating_count
FROM movies m
JOIN ratings r
    ON m.movie_id = r.movie_id
GROUP BY m.movie_id, m.title
ORDER BY rating_count DESC
LIMIT 10;


-- 3. Highest-rated movies
-- Only include movies with at least 50 ratings
SELECT
    m.title,
    COUNT(r.rating) AS rating_count,
    ROUND(AVG(r.rating), 2) AS average_rating
FROM movies m
JOIN ratings r
    ON m.movie_id = r.movie_id
GROUP BY m.movie_id, m.title
HAVING COUNT(r.rating) >= 50
ORDER BY average_rating DESC
LIMIT 10;


-- 4. Most-rated genres
SELECT
    g.genre_name,
    COUNT(r.rating) AS rating_count
FROM genres g
JOIN movie_genres mg
    ON g.genres_id = mg.genres_id
JOIN ratings r
    ON mg.movie_id = r.movie_id
GROUP BY g.genres_id, g.genre_name
ORDER BY rating_count DESC
LIMIT 10;


-- 5. Highest-rated genres
-- Only include genres with at least 1,000 ratings
SELECT
    g.genre_name,
    COUNT(r.rating) AS rating_count,
    ROUND(AVG(r.rating), 2) AS average_rating
FROM genres g
JOIN movie_genres mg
    ON g.genres_id = mg.genres_id
JOIN ratings r
    ON mg.movie_id = r.movie_id
GROUP BY g.genres_id, g.genre_name
HAVING COUNT(r.rating) >= 1000
ORDER BY average_rating DESC
LIMIT 10;


-- 6. Genre performance
-- Only include genres with at least 5,000 ratings
SELECT
    g.genre_name,
    COUNT(r.rating) AS rating_count,
    ROUND(AVG(r.rating), 2) AS average_rating
FROM genres g
JOIN movie_genres mg
    ON g.genres_id = mg.genres_id
JOIN ratings r
    ON mg.movie_id = r.movie_id
GROUP BY g.genres_id, g.genre_name
HAVING COUNT(r.rating) >= 5000
ORDER BY average_rating DESC;
