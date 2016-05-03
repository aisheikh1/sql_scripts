use sqlbook
select top 1 a.*
from 
(select customerid , count(*) as cnt
from orders
group by customerid) a