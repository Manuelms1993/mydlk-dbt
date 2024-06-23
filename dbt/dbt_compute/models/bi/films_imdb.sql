{{ config(
  materialized='table',
  unique_key='id'
)}}

SELECT
    fi.*,
    im.imdb_score,
    im.imdb_votes,
    im.tmdb_popularity,
    im.tmdb_score
FROM raw.films fi
INNER JOIN raw.imdb im ON im.id = fi.id
