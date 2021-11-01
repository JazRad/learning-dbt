select
    {{ dbt_utils.surrogate_key(['customer_id', 'order_date']) }} AS "surrogate_key",
    customer_id,
    order_date,
    count(*) as "count"

from {{ ref('stg_jaffle_shop__orders') }}
group by 1,2,3
