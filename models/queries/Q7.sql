with query7 as (
    SELECT dg.name
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_genre') }} dg ON ft.GenreId = dg.GenreId
    INNER JOIN {{ ref('dim_album') }} da ON ft.AlbumId = da.AlbumId
    WHERE da.prod_year = 2000
    GROUP BY dg.name
    ORDER BY COUNT(ft.trackid) DESC
    LIMIT 1
)

select * from query7