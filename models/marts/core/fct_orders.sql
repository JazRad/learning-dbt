with 

orders as (
    select * from {{ ref('stg_orders') }}
),

payment as (
    select * from {{ ref('stg_payments') }}
)

select 
    orders.order_id,
    orders.customer_id,
    payment.amount

from orders
left join payment using(order_id)

