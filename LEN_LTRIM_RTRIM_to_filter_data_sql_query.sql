use sqlbook


select count(*) as numorders
from orders
where city is not null and len(city) = len(ltrim(rtrim(city)))