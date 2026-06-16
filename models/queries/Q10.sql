with query10 as (
    SELECT dg.name, avg(ft.Bytes) / 1000000 as TailleMoy
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_genre') }} dg ON ft.GenreId = dg.GenreId
    GROUP BY dg.name
)

select * from query10
