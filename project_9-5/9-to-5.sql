/*SELECT series_id, supersector_code, industry_code, series_title
FROM LaborStatisticsDB.dbo.series
WHERE supersector_code = 55 AND industry_code = 55522110 AND data_type_code = 10



SELECT ROUND(SUM([value]), 0) AS num_employees_allind_2016
FROM LaborStatisticsDB.dbo.annual_2016
WHERE series_id like '%01' -- Code 01 = All employees
-- 2,340,612 is the answer



SELECT ROUND(SUM([value]), 0) AS num_employees_women_allind_2016
FROM LaborStatisticsDB.dbo.annual_2016
WHERE series_id like '%10' -- Code 10 = women employees for all industries
-- 1,125,490 women employees in all industries



SELECT ROUND(SUM([value]), 0) AS num_employees_code06_2016
FROM LaborStatisticsDB.dbo.annual_2016
WHERE series_id like '%06' -- Code 06 = production and non supervisory employees
-- 1,263,650 production and non sup employees



SELECT ROUND(AVG([value]), 0) AS num_avg_wkly_hrs_code07_employees
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id like '%07' -- Code 07 = Average weekly hours for production employees (07)
-- 36 avg weekly hours for production employees



SELECT FORMAT(SUM(CAST([value] AS DECIMAL(18,2))), 'N2') AS total_weekly_payroll_code82_jan_2017
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id LIKE '%82' -- code 82 = Aggregate weekly payrolls of production employees (82) 



SELECT TOP 10
    series_id,
    ROUND(AVG([value]), 0) AS avg_wkly_hrs_code07_employees
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id like '%07' -- Average weekly hours for production employees (07)   
GROUP BY series_id
ORDER BY avg_wkly_hrs_code07_employees DESC

-- highest average hours were 50 and from CES31336350: Motor vehicle power train components
-- lowest average hourse were 17 and from CES70713940: Fitness and recreational sports centers




SELECT ROUND(SUM([value]), 0) AS agg_wkly_payrolls_code82, 
series_id
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id LIKE '%82' -- Aggregate weekly payrolls of production employees (82) 
GROUP BY series_id
ORDER BY agg_wkly_payrolls_code82 DESC

-- lowest value industry was 80812310 = Coin-operated laundries and drycleaners
-- highest value industry was 05000000 = Total private



SELECT TOP 50 annual_2016.*
FROM annual_2016
LEFT JOIN series ON series.series_id = annual_2016.series_id
ORDER BY annual_2016.id

SELECT TOP 50 *
FROM dbo.datatype AS dt
INNER JOIN series AS s ON s.data_type_code = dt.data_type_code
ORDER BY s.series_id


SELECT TOP 50 *
FROM dbo.industry AS ind
INNER JOIN series AS s ON s.industry_code = ind.industry_code


SELECT 
j.series_id, 
FORMAT([value], 'C', 'en-us') AS agg_wkly_pyrlls_prdctn_nonsprvsry,
(SELECT industry_name FROM industry WHERE SUBSTRING(j.series_id, 4, 8) = industry_code) AS industry_name_proxy,
SUBSTRING(j.series_id, 4, 8) AS industry_code_proxy

FROM january_2017 j

WHERE j.series_id LIKE '%82'
AND [value] > (SELECT AVG([value]) FROM annual_2016 WHERE series_id LIKE '%82')
GROUP BY j.series_id, j.[value]
ORDER BY agg_wkly_pyrlls_prdctn_nonsprvsry DESC



--Aggregate weekly payrolls of production employees Code(82) 
SELECT TOP 50
    j.series_id,
    SUBSTRING(j.series_id, 4, 8) AS industry_code,
    i.industry_name,
    FORMAT(j.value, 'C', 'en-us') AS weekly_payroll_formatted
FROM january_2017 AS j
JOIN industry AS i
    ON SUBSTRING(j.series_id, 4, 8) = i.industry_code
WHERE j.series_id LIKE '%31'
AND j.value >
    (SELECT AVG(value)
     FROM annual_2016
     WHERE series_id LIKE '%31')
ORDER BY j.value DESC;

Reinsurance carriers
Petroleum and coal products
Fossil fuel electric power generation
Pipeline transportation
Electric power generation
*/

SELECT
    year,
    period,
    FORMAT(AVG(value), 'C', 'en-us') AS avg_earnings
FROM (
    SELECT value, year, period
    FROM annual_2016
    WHERE series_id LIKE '%30'

    UNION ALL

    SELECT value, year, period
    FROM january_2017
    WHERE series_id LIKE '%30'
) AS earnings_union
GROUP BY year, period
ORDER BY year, period;


SELECT *
FROM LaborStatisticsDB.dbo.datatype
WHERE data_type_text LIKE '%women%'

-- the data type code for Women Employees is 10
-- the code for Women Employees-To-All Employees Ratio is 39

SELECT
    series_id,
    supersector_code,
    industry_code,
    series_title
FROM LaborStatisticsDB.dbo.series
WHERE data_type_code = 10 AND industry_code = 55522110 AND  supersector_code = 55

-- Financial activities is supersector 55
-- 
Motor vehicle power train components
Crushed and broken limestone mining
Stone mining and quarrying
Coal mining
Support activities for mining
Oil and gas pipeline construction
Motor vehicle metal stamping

SELECT *
FROM january_2017 
WHERE industry_code = 31336370

SELECT ROUND(SUM([value]), 0) AS agg_wkly_payrolls_code82, 
series_id
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id LIKE '%82' -- Aggregate weekly payrolls of production employees (82) 
GROUP BY series_id
ORDER BY agg_wkly_payrolls_code82 DESC

/*
SELECT TOP 10
    series_id,
    ROUND(AVG([value]), 0) AS avg_wkly_hrs_code07_employees
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id like '%07' -- Average weekly hours for production employees (07)   
GROUP BY series_id
ORDER BY avg_wkly_hrs_code07_employees DESC

31336350
10212312
10212310
10212100
10212319
10213000
10213112
20237120
31336370
*/
SELECT
    j.series_id,
    SUBSTRING(j.series_id, 4, 8) AS industry_code,
    i.industry_name,
    FORMAT(j.value, 'C', 'en-us') AS weekly_payroll_formatted
FROM january_2017 AS j
JOIN industry AS i
    ON SUBSTRING(j.series_id, 4, 8) = i.industry_code
WHERE j.series_id LIKE '%30'
AND j.value >
    (SELECT AVG(value)
     FROM annual_2016
     WHERE series_id LIKE '%30')
ORDER BY j.value DESC;