with query1 as (    
    SELECT da.title 
    FROM {{ ref('dim_album') }} da
    WHERE da.cd_number > 1
)

select *
from query1
