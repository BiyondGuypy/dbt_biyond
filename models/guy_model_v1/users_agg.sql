set statement_timeout to 36000;

with user_cte as (
select userid,
       min(saletime) as first_purchase,
       max(saletime) as last_purchase
from dbt_biyond.sales
inner join
dbt_biyond.users
on buyerid=userid
group by userid)

select *  from user_cte limit 100;