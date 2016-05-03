use sqlbook

select zc.*
from zipcensus zc
join (select state, count(*) as numstate
from zipcensus
group by state
) zipstates
on zc.state = zipstates.state and zipstates.numstate <100