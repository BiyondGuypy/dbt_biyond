
with cte_sales as (
select 
buyerid,
caldate,
pricepaid,
commission
FROM "dev"."dbt_biyond"."sales"  T1
inner join 
{{ref('date_dim')}} T2
on T1.dateid=T2.dateid
where T1.dateid ={{ var('dateid') }}
)

select * 
from cte_sales

