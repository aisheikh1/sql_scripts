use sqlbook 

select max(case when rownum <= totalrows*0.2 then totalprice end) as break1,
			max(case when rownum<=totalrows*0.4 then totalprice end) as break2,
			max(case when rownum<=totalrows*0.6 then totalprice end) as break3,
			max(case when rownum<=totalrows*0.8 then totalprice end) as break4

FROM (select row_number () over (order by totalprice ) as rownum,
		(select count(*) from orders) as totalrows,
		totalprice 

		from orders) a