
  
  create view "chinook"."main"."stg_media_type__dbt_tmp" as (
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
  );
