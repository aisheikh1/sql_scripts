/* this sql query first picks out
specific states with recurring rows
less than 100. The outer query then
extract rows only specific to the states
identified in subquery. the use of IN 
is very important in this query.
*/
use sqlbook
--select zc.* 
from zipcensus zc
where zc."state" in 
(select "state"
from zipcensus
group by "state"
having count(*) < 100)