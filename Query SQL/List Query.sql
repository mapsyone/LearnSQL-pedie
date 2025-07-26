--- This a query if you want to looking for each type with total each day.

SELECT

date(date) as reported_date,
primary_type as crime_cases,
COUNT(DISTINCT date) AS total_crime

FROM bigquery-public-data.chicago_crime.crime

WHERE 
date(date) BETWEEN '2020-01-01'and '2020-12-31' 
and primary_type = 'ASSAULT'

GROUP BY 1,2
ORDER BY 1,3,2


--- Next Query