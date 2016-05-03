use sqlbook
select count(*) as numol, count(distinct numunits) as numvalues
from orderline 