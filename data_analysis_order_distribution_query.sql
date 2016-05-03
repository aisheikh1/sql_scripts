use sqlbook

select state, count(*) as cnt
from orders
group by state
having count(*) > 100
order by 2 desc

/* alternative query for same results
use sqlbook

select (case when cnt >=100 
			then state else 'Other' end) as state,
			sum(cnt) as numorders

from (
select state, count(*) as cnt
from orders
group by state) a

group by (case when cnt >=100 then state else 'Other' end)
order by 2 desc