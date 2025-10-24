/*WITH circuit_years AS (
    SELECT  circuitId, COUNT(DISTINCT year) num_years_hosted
FROM formula_one.dbo.races
GROUP BY circuitId
)
SELECT cir.name AS circuit_name,
cy.num_years_hosted
FROM formula_one.dbo.circuits AS cir
INNER JOIN circuit_years AS cy
    ON cir.circuitId = cy.circuitId
    ORDER BY cy.num_years_hosted DESC;



WITH driver_points AS ( SELECT
    driverId,
    COUNT(resultId) AS races_with_points
    FROM formula_one.dbo.results
    WHERE points > 0
    GROUP BY driverId
)
SELECT d.forename, d.surname,
driver_points.races_with_points
FROM formula_one.dbo.drivers AS d
INNER JOIN driver_points
on d.driverId = driver_points.driverId
WHERE driver_points.races_with_points > 5;
ORDER BY races_with_points;



-- a list of all drivers who are either from the UK or from Italy

SELECT forename, surname, nationality
FROM formula_one.dbo.drivers
where nationality = 'British'

UNION

SELECT forename, surname, nationality
FROM formula_one.dbo.drivers
where nationality = 'Italian'

ORDER BY nationality



-- create a list of drivers who have either won a race or recorded the fastest lap in a given race
-- "rank" column in the results table is the "rank" of their fastest lap. ie, a rank is 1 means they had the first fastest lap in that race

-- table that pulls drivers who won a race

SELECT
d.forename,
d.surname,
'Race Winner' AS achievement_type

check class recording
  

-- create a list of drivers who raced in both 2021 and 2022
-- create a table of drivers who races in 2021
SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2021

INTERSECT

SELECT DISTINCT
d.driverId,
d.forename, d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2022
*/
--which drivers drove in 2021 but NOT 2022

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2021

EXCEPT

SELECT DISTINCT
d.driverId,
d.forename, d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2022