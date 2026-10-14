# Import libraries
import pandas as pd
import os

os.makedirs("data/processed", exist_ok=True)

# File paths
raw_movies_path = "data/raw/ml-latest-small/movies.csv"

# Read raw data
movies_df = pd.read_csv(raw_movies_path)

# Data Transformation 

# Renaming the column
movies_df = movies_df.rename(columns={"movieId": "movie_id"})

# Extracting the release Year from the title, if the the Year is missing replace with NA
movies_df["release_year"] = movies_df["title"].str.extract(r"\((\d{4})").astype("Int64")

# Removing the release Year from the title
movies_df["title"] = movies_df["title"].str.replace(
    r"\s*\(\d{4}\)$",
    "",
    regex=True
)

# Split the Genres from the pipe "|"
movies_df["genres"] = movies_df["genres"].str.split("|")

# Creating one list for all the Genres available
genre_names = sorted(
    set(
        genre
        for grenre_list in movies_df["genres"]
        for genre in grenre_list

    )
)

# Give each Genre an genre_id by creating the gendre DataFrame
genres_df = pd.DataFrame({
    "genre_id": range(1, len(genre_names) + 1),
    "genre_name": genre_names
})

# Linking each movie with its corresponding Genres
movie_genre_rows = []

for _, movie in movies_df.iterrows():
    for genre in movie["genres"]:
        movie_genre_rows.append({
            "movie_id": movie["movie_id"],
            "genre_name": genre
        })

movie_genres_df = pd.DataFrame(movie_genre_rows)

movie_genres_df = movie_genres_df.merge(
    genres_df,
    on="genre_name",
    how="left"
)

movie_genres_df = movie_genres_df[["movie_id", "genre_id"]]

movies_df = movies_df[["movie_id", "title", "release_year"]]



# Save processed data
movies_df.to_csv("data/processed/movies.csv", index=False)
genres_df.to_csv("data/processed/genres.csv", index=False)
movie_genres_df.to_csv("data/processed/movie_genres.csv", index=False)

print("\nProcessed files saved successfully.")
