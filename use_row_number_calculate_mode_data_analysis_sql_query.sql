use sqlbook
select b.*
from 
(
select (row_number () over (order by cnt desc)) as row_num , a.*
from 
(select customerid , count(*) as cnt
from orders 
group by customerid ) a) b
where row_num = 1