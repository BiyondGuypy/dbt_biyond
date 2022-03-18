

select
    order_id,



{{
    config(
        materialized='incremental'
    )
}}

{% set payment_methods = ["bank_transfer", "credit_card", "gift_card"] %}

with fact as (
SELECT 
buyerid,
caldate,
sum(pricepaid) as daily_pricepaid,
sum(commission) as daily_commission,
    {% for payment_method in payment_methods %}
    sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount,
    {% endfor %}
from {{ref('sales')}} T1
inner join 
{{ref('users')}} T2
on T1.buyerid=T2.userid
group by buyerid,caldate
)

select *
from fact
/********edit 123*********/