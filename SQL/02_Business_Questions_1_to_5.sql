/*
======================================================
Project : Water Crisis Intelligence Platform

Author  : Sri Latha

Module  : Week 2 - Business Questions (1–5)

Purpose :
Analyze rainfall patterns to support water resource
planning and drought management.

======================================================
*/

-- 1. What is the historical average annual rainfall for each subdivision?

select subdivision, round(avg(annual),2) as Average_Annual_Rainfall from rainfall group by subdivision;

-- 2. Which subdivisions receive average annual rainfall above the national average? 

select subdivision, round(avg(annual),2) as Above_Average_Rainfall  from rainfall group by subdivision 
having Above_Average_Rainfall>(select avg(annual) from rainfall) order by Above_Average_Rainfall desc;

-- 3. Which subdivisions are more vulnerable to drought based on historical average rainfall?

select subdivision, round(avg(annual),2) as Average_Annual_Rainfall from rainfall group by subdivision 
order by Average_Annual_Rainfall asc;

-- 4. Which subdivisions are more vulnerable to flooding based on historical average rainfall?

 select subdivision, round(avg(annual),2) as Average_Annual_Rainfall from rainfall group by subdivision order by 
 Average_Annual_Rainfall desc;
 
 -- 5. Which subdivisions record the highest and lowest historical average rainfall?
 
 select subdivision, round(avg(annual),2) as Avergae_Annual_Rainfall from rainfall group by subdivision
 order by Avergae_Annual_Rainfall desc;
 
