with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ ref('raw_media_type') }}
),

renamed AS (
    SELECT
       media_type_id,
       name AS media_type_name
    FROM source
)

SELECT * FROM renamed
