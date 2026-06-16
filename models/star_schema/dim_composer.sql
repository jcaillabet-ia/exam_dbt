with composer_names as (
    select distinct t.Composer as name
    from {{ source('EXAM_CAILLABET', 'track') }} t
)

select 
    row_number() over (order by name) as ComposerId,
    name
from composer_names
