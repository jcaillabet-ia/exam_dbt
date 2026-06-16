with row_counts as (
    select count(*) as total_rows
    from {{ ref('Q6') }}
)

select * from row_counts
where total_rows != 18
