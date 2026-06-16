with dim_genre as (
    select  g.GenreId, 
            g.Name
    from {{ source('EXAM_CAILLABET', 'genre') }} g
)

select *
from dim_genre
