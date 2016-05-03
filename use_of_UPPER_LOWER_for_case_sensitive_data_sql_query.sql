use sqlbook

select sum(case when city = upper(city) then 1 else 0 end) as city_upper,
		sum(case when city = lower(city) then 1 else 0 end) as city_lower,
		sum(case when city not in (upper(city), lower(city)) then 1 else 0 end) as city_neither

from orders