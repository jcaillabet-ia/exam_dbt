with query3 as (
    SELECT ft.name as Track_Name, dc.name as Composer_Name
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_genre') }} AS dg ON ft.GenreId = dg.GenreId
    INNER JOIN {{ ref('dim_composer') }} dc ON ft.ComposerId = dc.ComposerId
    WHERE dg.name = 'Rock' OR dg.name = 'Jazz'
)
select * from query3
