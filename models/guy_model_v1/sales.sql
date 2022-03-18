
with cte_sales as (
select *     
FROM "dev"."dbt_biyond"."sales" 
where dateid ={{ var('dateid') }}
)

select * 
from cte_sales

