with source as (

    select * from "chinook"."main"."raw_media_type"
),

renamed AS (
    SELECT
       media_type_id,
       name AS media_type_name
    FROM source
)

SELECT * FROM renamed