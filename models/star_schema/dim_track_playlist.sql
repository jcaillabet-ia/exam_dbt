with dim_track_playlist as (
    select  tp.TrackId, 
            tp.PlaylistId
    from {{ source('EXAM_CAILLABET', 'playlisttrack') }} tp
)

select *
from dim_track_playlist
