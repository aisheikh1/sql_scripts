use sqlbook 

select customerid , count(*) as freq
from orders 
group by customerid
having count(*) = (

select max(freq)
from (
select customerid, count(*) as freq
from orders 
group by customerid ) a )