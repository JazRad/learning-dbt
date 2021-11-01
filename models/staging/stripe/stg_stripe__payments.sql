with payments as
(
select
        id as payment_id,
        orderid as order_id,
        status as payment_status,
        round(amount/100.0, 2) as payment_amount,
        paymentmethod as payment_method,
        amount,
        status,
        created
        
from {{ source('stripe', 'payment') }}
)

select * from payments