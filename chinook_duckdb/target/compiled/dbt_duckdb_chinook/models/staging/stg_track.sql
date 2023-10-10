with source as (

    select * from "chinook"."main"."raw_track"
),

renamed AS (
    SELECT
      track_id,
       name AS track_name,
       album_id,
       media_type_id,
       genre_id,
       composer AS track_composer_name,
       milliseconds AS track_milliseconds,
       bytes AS track_bytes,
       unit_price AS track_unit_price
    FROM source
)

SELECT * FROM renamed