/* This SQL script uses the function
SUBSTRING to extract specfic parts
of the attribute within the column. In
this case, the first 3 digits of the 
zipcode in US is extracted and 
displated in a new column. The WHERE
clause has been used to filter or restrict
results to zipcodes in MN only.
http://github.com/aisheikh1/sql_scripts.git
*/


USE sqlbook

SELECT zc.state, zc.zipcode, SUBSTRING(zc.zipcode, 1,3) as scf

FROM zipcensus zc

WHERE zc.state = 'MN'