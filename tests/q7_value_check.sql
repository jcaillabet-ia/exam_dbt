select *
from {{ ref('Q7') }}
where name != 'Rock'
