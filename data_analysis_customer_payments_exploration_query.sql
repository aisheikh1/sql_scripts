use sqlbook
select paymenttype ,
			sum(case when 0<= totalprice and totalprice <10
			then 1 else 0 end) as cnt_0_10 ,
			sum(case when 10<=totalprice and totalprice<100
			then 1 else 0 end) as cnt_10_100 ,
			sum(case when 100<=totalprice and totalprice<1000
			then 1 else 0 end) as cnt_100_1000 ,
			sum(case when totalprice>=1000 
				then 1 else 0 end) as cnt_1000 ,
				count(*) as cnt, sum(totalprice) as revenue

from orders 
group by paymenttype
order by 1