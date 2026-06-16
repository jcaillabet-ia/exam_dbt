with query2 as (
    SELECT ft.name
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_album') }} AS da ON ft.AlbumId = da.AlbumId
    WHERE da.prod_year = 2000 OR da.prod_year = 2002
)
select * from query2
