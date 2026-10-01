/*
===============================================
Project : Water Crisis Intelligence Platform

Author  : Sri Latha

Module  : Week 2 - Data Quality Checks

Purpose :
Validate imported rainfall dataset before analysis.

===============================================
*/

select count(*) as Total_Rows from rainfall;
-- 4090
select count(*) as Total_Rows from staging_rainfall;
-- 4116

select subdivision,year,count(*) as duplicate_count from rainfall group by subdivision,year having count(*)>1;
-- nothing
select subdivision,year,count(*) as duplicate_count from staging_rainfall group by subdivision,year having count(*)>1;
-- nothing

select subdivision as missing_subdivision from rainfall where subdivision is null or trim(subdivision)='';
-- nothing
select subdivision as missing_subdivision from staging_rainfall where subdivision is null or trim(subdivision)='';
-- nothing

select count(*) from rainfall where year is null;
-- 0
select count(*) from staging_rainfall where year is null;
-- 0

select annual as missing_annual from rainfall where annual is null;
-- nothing
select annual as missing_annual from staging_rainfall where annual is null;
-- 0

select min(year),max(year) from rainfall;
-- 1901 and 2015
select min(year),max(year) from staging_rainfall;
-- 1901 and 2015

select count(distinct subdivision) as Total_Subdivision from rainfall;
-- 36
select count(distinct subdivision) as Total_Subdivision from staging_rainfall;
-- 36

describe rainfall;
describe staging_rainfall;