with query5 as (
    SELECT da.artist_name, COUNT(*) as nb_album
    FROM {{ ref('dim_album') }} da
    GROUP BY da.artist_name
)

select * from query5
