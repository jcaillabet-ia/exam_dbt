with row_counts as (
    select count(*) as total_rows
    from {{ ref('Q11') }}
)

select * from row_counts
where total_rows != 8
