
  
  create view "chinook"."main"."stg_artist__dbt_tmp" as (
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
  );
