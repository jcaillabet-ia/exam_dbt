with query9 as (
    SELECT ft.TrackId
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_genre') }} dg ON ft.GenreId = dg.GenreId
    INNER JOIN {{ ref('dim_album') }} da ON ft.AlbumId = da.AlbumId
    WHERE dg.name = 'Rock' AND da.Artist_country = 'France'
)

select * from query9
