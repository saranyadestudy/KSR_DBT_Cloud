
{{
    config(
        materialized='table'
    )
}}

select
    c.customer_id,
    c.first_name,
    c.last_name,
    o.id,
    o.user_id,
    o.order_date,
    o.status
from {{ ref('stg_customer') }} c
join {{ source('ass1', 'ord') }} o
    on c.customer_id = o.id

