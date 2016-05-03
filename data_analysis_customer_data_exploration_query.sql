use sqlbook

select state, sum(numorders) as numorders, sum(pop) as pop
from ((select o.state, count(*) as numorders, 0 as pop
from orders o 
group by o.state)
union all
(select state , 0 as numorders, sum(pop) as pop
from zipcensus
group by state)) summary
group by state
order by 2 desc