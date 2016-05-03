/* This SQL script is used to illustrate simple
join two tables. The use of ON clause 
demostrates the condition placed 
to join two tables.
http://github.com/aisheikh1/sql_scripts.git

*/


USE sqlbook
SELECT o.orderid, o.zipcode, zc.population

FROM orders o

JOIN zipcensus zc

ON o.zipcode = zc.zipcode