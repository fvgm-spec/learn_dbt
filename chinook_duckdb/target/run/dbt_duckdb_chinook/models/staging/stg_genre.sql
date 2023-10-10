
  
  create view "chinook"."main"."stg_genre__dbt_tmp" as (
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
  );
