
    
    

select
    media_type_id as unique_field,
    count(*) as n_records

from "chinook"."main"."stg_media_type"
where media_type_id is not null
group by media_type_id
having count(*) > 1


