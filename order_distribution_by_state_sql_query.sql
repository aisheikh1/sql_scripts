use sqlbook
select (case when a.cnt >= 0.02*b.totalorders
			then state else 'Other' end) as state ,
			sum(a.cnt) as cnt
from 
(select state , count(*)as cnt
from orders 
group by state 
)a cross join

(select count(*) as totalorders
from orders ) b

group by (case when a.cnt >= 0.02*b.totalorders
			then state else 'Other' end)

order by 2