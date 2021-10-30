with payments as
(
select
    id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as status,
    {{ cents_to_dollars('amount', 4) }} as amount,
    created as created_at

from {{ source('stripe', 'payment') }}
)

select * from payments