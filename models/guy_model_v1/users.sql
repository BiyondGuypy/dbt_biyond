
with user_cte as (
SELECT * 
FROM "dev"."dbt_biyond"."users" 
where state='WA'
)

select * from user_cte