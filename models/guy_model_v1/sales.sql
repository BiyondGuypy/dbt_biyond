
with cte_sales as (
select *     
FROM "dev"."dbt_biyond"."sales" 
)

select * 
from cte_sales

