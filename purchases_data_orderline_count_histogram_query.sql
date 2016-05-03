use sqlbook

select numzips, count(*) as numorders, 
		min(zipcode) , max(zipcode)

from (select o.zipcode , count(*) as numzips
		from orders o 
		group by o.zipcode
		) bystate

group by numzips
order by 1 desc