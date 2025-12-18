{{
    config(
        materialized='table'
    )
}}
SELECT id as customer_id,first_name,last_name
from {{ source('ass1', 'cust') }}