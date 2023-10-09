with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ ref('raw_genre') }}
),

renamed AS (
    SELECT
       genre_id,
       name AS genre_name
    FROM source
)

SELECT * FROM renamed
