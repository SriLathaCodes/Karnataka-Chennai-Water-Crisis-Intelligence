/*
======================================================
Project : Water Crisis Intelligence Platform

Author  : Sri Latha

Module  : Week 3 - Business Questions (6–10)

Purpose :
Analyze rainfall patterns to support water resource
planning and drought management.

======================================================
*/
-- 6. Which months contribute the most rainfall across different subdivisions?
 
	SELECT subdivision, ROUND(AVG(jan),2) AS Jan, ROUND(AVG(feb),2) AS Feb, ROUND(AVG(mar),2) AS Mar, 
    ROUND(AVG(apr),2) AS Apr, ROUND(AVG(may),2) AS May, ROUND(AVG(jun),2) AS Jun, ROUND(AVG(jul),2) AS Jul, 
    ROUND(AVG(aug),2) AS Aug, ROUND(AVG(sep),2) AS Sep, ROUND(AVG(oct),2) AS Oct, ROUND(AVG(nov),2) AS Nov, 
    ROUND(AVG(`dec`),2) AS `Dec` FROM rainfall GROUP BY subdivision;
    
-- 7. Which season contributes the highest percentage of annual rainfall?
 
	SELECT subdivision, ROUND((AVG(jan_feb)/AVG(annual))*100,2) AS Jan_Feb_Pct, ROUND((AVG(mar_may)/AVG(annual))*100,2)
    AS Mar_May_Pct, ROUND((AVG(june_sep)/AVG(annual))*100,2) AS Jun_Sep_Pct, ROUND((AVG(oct_dec)/AVG(annual))*100,2) 
    AS Oct_Dec_Pct FROM rainfall GROUP BY subdivision;
    
-- 8. Is rainfall increasing or decreasing over time in each subdivision?

	select row_number() over (order by subdivision,year) as Row_No, subdivision,year,Round(avg(annual),2) 
    as Annual_Rainfall from rainfall group by subdivision, year order by subdivision,year;
    
-- 9. Which subdivisions have the most consistent rainfall patterns over the years?

SELECT subdivision, ROUND(STDDEV(annual),2) AS Rainfall_Variation FROM rainfall GROUP BY subdivision ORDER BY Rainfall_Variation ASC;

-- 10. Which subdivisions are most suitable for rainwater harvesting based on historical rainfall patterns?

SELECT subdivision, ROUND(AVG(annual),2) AS Average_Annual_Rainfall FROM rainfall GROUP BY subdivision ORDER BY Average_Annual_Rainfall DESC;
    

 