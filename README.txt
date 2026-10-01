# Karnataka & Chennai Water Crisis Intelligence Platform

## Part 1 — Rainfall Intelligence

PROJECT SUMMARY :

Part 1 establishes the rainfall intelligence layer of the project.

The analysis uses historical rainfall data to understand rainfall
patterns across meteorological subdivisions, including annual rainfall,
monthly contribution, seasonal contribution, rainfall trends,
consistency and rainwater harvesting potential.

Tools used:
- MySQL
- Excel
- Power BI
- Power Query
- DAX

KEY FINDINGS :

- Historical rainfall varies significantly across subdivisions.
- Jun–Sep contributes approximately 75.29% of average annual rainfall.
- Rainfall consistency was evaluated using standard deviation.
- Yearly rainfall trends were analyzed using Power BI.
- Historical rainfall patterns were used as a screening indicator
  for rainwater harvesting potential.
  
DATA PREPARATION :

Raw records: 4,116
Valid records: 4,090
Invalid records excluded: 26

Data cleaning included:
- Identifying invalid/non-numeric rainfall values
- Converting fields to appropriate numeric data types
- Checking duplicates
- Creating a clean analysis table
- Transforming monthly rainfall into long format for Power BI

BUSINESS QUESTIONS :

1. What is the historical average annual rainfall for each subdivision? 
2. Which subdivisions receive rainfall above the overall historical average?
3. Which subdivisions are more vulnerable to drought based on historical average rainfall? 
4. Which subdivisions are more vulnerable to flooding based on historical average rainfall? 
5. Which subdivisions record the highest and lowest historical average rainfall? 
6. Which months contribute the most rainfall across different subdivisions? 
7. Which season contributes the highest percentage of annual rainfall? 
8. Is rainfall increasing or decreasing over time in each subdivision? – done
9. Which subdivisions have the most consistent rainfall patterns over the years? 
10. Which subdivisions are most suitable for rainwater harvesting based on historical rainfall patterns? 


## Project Structure

SQL → Data cleaning and analysis
Excel → PivotTable and formula-based analysis
Power BI → Interactive dashboard and visualization

## Next Phase

Part 1 established the rainfall intelligence layer.

Part 2 will extend the project into water-crisis analysis using
multiple datasets, SQL JOINs and additional Karnataka/Chennai
water-related indicators.


