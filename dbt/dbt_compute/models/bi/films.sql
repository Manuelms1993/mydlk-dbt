SELECT
  `id`,
  `title`,
  `type`,
  release_year,
  age_certification,
  `runtime`,
  genres,
  production_countries,
  seasons
FROM {{ source('raw','films') }}