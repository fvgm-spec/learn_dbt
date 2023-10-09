with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ ref('raw_artist') }}
),

renamed AS (
    SELECT
       artist_id,
       name AS artist_name
    FROM source
)

SELECT * FROM renamed
