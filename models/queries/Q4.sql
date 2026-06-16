with query4 as (
    SELECT da.title
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_album') }} AS da ON ft.AlbumId = da.AlbumId
    GROUP BY ft.AlbumId, da.title
    ORDER BY sum(ft.Milliseconds) DESC
    LIMIT 10
)
select * from query4
