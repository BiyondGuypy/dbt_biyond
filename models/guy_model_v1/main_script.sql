with sales as (
SELECT * 
FROM {{ref('sales')}} 
),
users as (
SELECT *
from {{ref('users')}}
)

SELECT buyerid,sum(pricepaid)
sales T1
inner join 
users T2
on T1.buyerid=T2.userid
group by buyerid



