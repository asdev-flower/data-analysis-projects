-- which circuit did each race take place at (across all years)?
-- circuit table: circuitid, name
-- races: year, name, circuitid, date 
/* SELECT
races.name as race_name,
races.year as race_year,
races.date as race_date,
cir.name as circuit_name 
FROM formula_one.dbo.races AS races
INNER JOIN formula_one.dbo.circuits AS cir 
ON races.circuitid = cir.circuitid 


--i want the pitstop data, but with race name instead of race_id
-- Pitstop: raceid, driverid, stop, lap, time, duration, milliseconds
-- races: raceId, year, name
SELECT races.year, races.name, pit.driverId, pit.stop, pit.lap, pit.time, pit.duration, pit.milliseconds
FROM formula_one.dbo.races AS races
INNER JOIN formula_one.dbo.pit_stops AS pit
ON races.raceId = pit.raceId
WHERE pit.raceId IS NULL 

-- which circuits hosted races in 2021
-- year, name of race, name of circuit

SELECT r.year, r.name AS race_name, cir.name AS circuit_name
FROM formula_one.dbo.races AS r
INNER JOIN formula_one.dbo.circuits AS cir  
ON r.circuitId = cir.circuitId
WHERE r.year = 2021
ORDER BY cir.name



-- who won each race in 2021?
-- i want a table with first and last name of the winners, and the name of the race they won
-- names are in drivers table, race name is in races table
-- and position (where 1 = winner) is in results table

SELECT r.name AS race_name  
d.forename + '' + d.surname AS winner_name
FROM formula_one.dbo.results AS res  
INNER JOIN formula_one.dbo.races AS r ON res.raceId = r.raceId
INNER JOIN formula_one.dbo.drivers AS d ON res.driverId = d.driverId
WHERE r.year = 2021 AND res.[position] = 1 AND res.[position] <> '\N'

*/
-- how many races has each circuit held?
-- circuit table (name), and races table (count(raceid))

SELECT c.name AS circuit_name,
COUNT(r.raceId) AS total_races 
FROM circuits AS c
LEFT JOIN races AS r ON c.circuitId = r.circuitId
GROUP BY c.name 
ORDER BY total_races DESC;

