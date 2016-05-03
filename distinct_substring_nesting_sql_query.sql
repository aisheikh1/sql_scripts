/* This SQL script uses the COUNT, DISTINCT AND
SUBSTRING functions to: 1) identify distinct
zipcode using the DISTINCT function and 
2) count the number of occurence of each distinct
zipcode. Only the first three digits of the zipcode
are extracted using the SUBSTRING function.
The DISTINCT and SUBSTRING functions
are nested within the COUNT function.
The sequence of function execution is as following:
SUBSTRING - DISTINCT - COUNT.

*/

USE sqlbook

SELECT zc.state, COUNT(DISTINCT SUBSTRING(zc.zipcode,1,3))

FROM zipcensus zc

GROUP BY zc.state

ORDER BY 2  desc 