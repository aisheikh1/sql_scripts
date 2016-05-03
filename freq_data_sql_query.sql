use sqlbook
select sum(case when totalprice = minvalue then 1 else 0 end) as minvalue_freq,
		sum(case when totalprice = maxvalue then 1 else 0 end) as maxvalue_freq
from orders o cross join 
(select min(totalprice) as minvalue, max(totalprice) as maxvalue	

from orders) a