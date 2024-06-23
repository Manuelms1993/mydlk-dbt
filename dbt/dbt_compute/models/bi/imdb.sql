SELECT
  `id`,
  `title`,
  `imdb_score`,
  `imdb_votes`,
  `tmdb_popularity`,
  `tmdb_score`
FROM {{ source('raw','imdb') }}