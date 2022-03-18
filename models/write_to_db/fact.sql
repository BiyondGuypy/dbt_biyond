SELECT buyerid,sum(pricepaid)
from
sales T1
inner join 
users T2
on T1.buyerid=T2.userid
group by buyerid