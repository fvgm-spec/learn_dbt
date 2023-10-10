
  
    
    

    create  table
      "chinook"."main"."dim_track__dbt_tmp"
  
    as (
      

     WITH track AS (
          SELECT track_id, 
                 track.track_name,
                 artist.artist_name,
                 track.track_composer_name,
                 album.album_title,
                 genre.genre_name,
                 track.track_milliseconds,
                 track.track_bytes,
                 media_type.media_type_name
            FROM "chinook"."main"."stg_track" track
       LEFT JOIN "chinook"."main"."stg_album" album USING (album_id)
       LEFT JOIN "chinook"."main"."stg_artist" artist USING (artist_id)
       LEFT JOIN "chinook"."main"."stg_genre" genre USING (genre_id)
       LEFT JOIN "chinook"."main"."stg_media_type" media_type USING (media_type_id)
     )
     
     SELECT * FROM track
    );
  
  