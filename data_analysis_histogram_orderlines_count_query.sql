use sqlbook

select numol, count(*) as numprods, min(productid), max(productid)
from (
select productid, count(*) as numol
from orderline
group by productid 
) a
group by numol
order by 1 