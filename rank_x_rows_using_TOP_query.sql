use sqlbook
select top 20 state, count(*) as numorders
from orders
group by state 
	order by 2 desc

