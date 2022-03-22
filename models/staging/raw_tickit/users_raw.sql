
select * 
from {{ source('raw_tickit','users_raw') }}