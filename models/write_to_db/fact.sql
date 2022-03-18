
{{
    config(
        materialized='incremental'
    )
}}

with fact as (
SELECT 
buyerid,
caldate,
sum(pricepaid) as daily_pricepaid,
sum(commission) as daily_commission
from {{ref('sales')}} T1
inner join 
{{ref('users')}} T2
on T1.buyerid=T2.userid
group by buyerid,caldate
)

select *
from fact
