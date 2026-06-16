with dim_album as (
    select al.AlbumId, 
        al.Title,
        ar.Name as Artist_name,
        ar.Birthyear as Artist_birthyear,
        ar.Country as Artist_country,
        al.Prod_year,
        al.Cd_number
    from {{ source('EXAM_CAILLABET', 'album') }} al
    inner join {{ source('EXAM_CAILLABET', 'artist') }} ar on al.ArtistId = ar.ArtistId

)

select *
from dim_album
