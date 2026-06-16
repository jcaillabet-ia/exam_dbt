with row_counts as (
    select count(*) as total_rows
    from {{ ref('Q8') }}
)

select * from row_counts
where total_rows != 11
