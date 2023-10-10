with source as (

    select * from "chinook"."main"."raw_artist"
),

renamed AS (
    SELECT
       artist_id,
       name AS artist_name
    FROM source
)

SELECT * FROM renamed