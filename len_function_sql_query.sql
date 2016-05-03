use sqlbook


select len(city) as lengt, count(*) as cnt, min(city), max(city)
from orders 
group by len(city)
order by 1 desc