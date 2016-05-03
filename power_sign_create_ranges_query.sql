SELECT lowerbound, upperbound, COUNT(*) as numorders, MIN(val), MAX(val)
FROM (SELECT FLOOR(val / POWER(10.0, SIGN(numdigits)*(numdigits - 1)))*
POWER(10.0, SIGN(numdigits)*(numdigits-1)) as lowerbound,
FLOOR(1+ (val / POWER(10.0, SIGN(numdigits)*(numdigits - 1))))*
POWER(10.0, SIGN(numdigits)*(numdigits-1)) as upperbound, a.*
FROM (SELECT (LEN(CAST(FLOOR(ABS(totalprice)) as INT)) * 
SIGN(FLOOR(totalprice))) as numdigits,
totalprice as val
FROM orders
) a
) b
GROUP BY lowerbound, upperbound
ORDER BY 1