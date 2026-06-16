with composer_names as (
    select distinct t.Composer as name
    from {{ source('EXAM_CAILLABET', 'track') }} t
)
, dim_composer as (
    select 
        row_number() over (order by name) as ComposerId,
        name
    from composer_names
)
, fact_track as (
    select  t.TrackId, 
            t.Name,
            c.ComposerId,
            t.GenreId,
            t.AlbumId,
            t.Milliseconds,
            t.Bytes,
            t.UnitPrice
    from {{ source('EXAM_CAILLABET', 'track') }} t
    inner join dim_composer c on t.Composer = c.Name
)

select *
from fact_track
