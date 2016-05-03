use sqlbook
select distinct state,  max(population)
from zipcensus
group by state, zipcode 
order by state 
/*select zc.state, zc.zipcode, zc.population
from zipcensus zc
where zc.population in (
select max(zcinner.population)
from zipcensus zcinner
--where zcinner.state = zc.state
group by zcinner.state
 )
 order by zc.state
 */