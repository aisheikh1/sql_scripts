/* This SQL script allows the user to carry out
two functions: count total number of rows within
the table; and compare two columns
of the table to sum rows that do not
have matching values. The use of CASE
WHEN THEN ELSE END allows the script is
nested within the SUM function to, first 
identify rows with different values in 
specific columns and then total 
the number of such rows.
http://github.com/aisheikh1/sql_scripts.git
*/


USE sqlbook
SELECT COUNT(*),
				SUM(CASE WHEN zc.state <> zc.state2 
				THEN 1 ELSE 0 END)
				AS numsame

	FROM zipcensus zc