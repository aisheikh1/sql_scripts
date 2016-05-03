use sqlbook
select (case when rank < 20 then state else 'other' end) as state,
sum(numorders) as numorders
from 
(select a.* , row_number () over (order by numorders desc) as rank
from (select state, count(*) as numorders
from orders 
group by state ) a
) b
group by (case when rank < 20 then state else 'other' end)
order by 2 desc