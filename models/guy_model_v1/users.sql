
with user_cte as (
SELECT * 
FROM "dev"."dbt_biyond"."users" 
)

select * from user_cte ;