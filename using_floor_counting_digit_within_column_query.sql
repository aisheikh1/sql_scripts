use sqlbook
select numdig, count(*) as cnt, min(totalprice), max(totalprice)
from (
select totalprice, (case when totalprice >= 1 
			then floor(1+log(totalprice)/log(10)) 
			when -1 < totalprice and totalprice <1 
			then 0 
			else - floor (1+log(-totalprice)/log(10)) end) as numdig

from orders 
) a
group by numdig 
order by 2