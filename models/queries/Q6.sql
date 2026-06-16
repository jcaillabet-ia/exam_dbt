with query6 as (
    SELECT da.artist_name, COUNT(*) as nb_morceau
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_album') }} da ON ft.AlbumId = da.AlbumId
    GROUP BY da.artist_name
)

select * from query6
