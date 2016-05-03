select sign_ , count(*) as cnt
from 

(SELECT SIGN(totalprice) as sign_
from orders ) a

group by sign_

order by 2