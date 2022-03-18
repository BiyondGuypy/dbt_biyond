with date_dim as (
select dateid,caldate
from "dev"."dbt_biyond".date)

select * 
from date_dim