with query11 as (
    SELECT DISTINCT dp.name as Playlist_Name
    FROM {{ ref('fact_track') }} ft
    INNER JOIN {{ ref('dim_track_playlist') }} dtp ON ft.TrackId = dtp.TrackId
    INNER JOIN {{ ref('dim_playlist') }} dp ON dtp.PlaylistId = dp.PlaylistId
    INNER JOIN {{ ref('dim_album') }} da ON ft.AlbumId = da.AlbumId
    WHERE da.artist_birthyear < 1990
)
select * from query11
