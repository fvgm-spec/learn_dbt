with source as (

    select * from "chinook"."main"."raw_album"
),

renamed AS (
    SELECT
       album_id,
       title AS album_title,
       artist_id
    FROM source
)

SELECT * FROM renamed