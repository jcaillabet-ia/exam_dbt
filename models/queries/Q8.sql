with query8 as (
    SELECT DISTINCT dp.name
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_track_playlist') }} dtp ON ft.TrackId = dtp.TrackId
    INNER JOIN {{ ref('dim_playlist') }} dp ON dtp.PlaylistId = dp.PlaylistId
    WHERE ft.milliseconds > 240000
)

select * from query8
