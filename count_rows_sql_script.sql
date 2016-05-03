/* This script counts the number of rows within
a particular table. The syntax is simple:

SELECT COUNT(*)
FROM <table_name>

It is important to note that use of a WHERE 
clause to restrict results to non-NULL
values should not be accompanied by 
comparison "<>" or "=". This would result
in zero rows. Instead the "IS NULL" and
"IS NOT NULL" must be used as shown below.
*/ 


use sqlbook 

SELECT COUNT(*)

FROM zipcensus zc

WHERE zc.state IS NOT NULL