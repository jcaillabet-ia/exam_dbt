with row_counts as (
    select count(*) as total_rows
    from {{ ref('Q7') }}
)

select * from row_counts
where total_rows != 1
