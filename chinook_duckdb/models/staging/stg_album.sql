with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ ref('raw_album') }}
),

renamed AS (
    SELECT
       album_id,
       title AS album_title,
       artist_id
    FROM source
)

SELECT * FROM renamed
