with source as (

    select * from "chinook"."main"."raw_genre"
),

renamed AS (
    SELECT
       genre_id,
       name AS genre_name
    FROM source
)

SELECT * FROM renamed