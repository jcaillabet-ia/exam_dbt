with dim_playlist as (
    select  p.PlaylistId, 
            p.Name
    from {{ source('EXAM_CAILLABET', 'playlist') }} p
)

select *
from dim_playlist
