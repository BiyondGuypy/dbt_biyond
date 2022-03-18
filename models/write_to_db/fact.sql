
{{
    config(
        materialized='incremental'
    )
}}

with fact as (
SELECT dateid,buyerid,sum(pricepaid)
from
{{ref('sales')}} T1
inner join 
{{ref('users')}} T2
on T1.buyerid=T2.userid
group by dateid,buyerid
)

select *
from fact
