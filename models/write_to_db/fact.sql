
{{
    config(
        materialized='incremental'
    )
}}

with fact as (
SELECT dateid,sum(pricepaid),state
from
{{ref('sales')}} T1
inner join 
{{ref('users')}} T2
on T1.buyerid=T2.userid
group by dateid
)

select *
from fact
