--- Inner Join
--- For each race result, which driver was it, in what race/year, and how many points did they score
SELECT
    res.points,
    d.forename,
    d.surname,
    r.year,
    r.name AS race_name
FROM formula_one.dbo.results as res
JOIN formula_one.dbo.drivers as d
    ON res.driverId = d.driverId
JOIN formula_one.dbo.races AS r
    ON res.raceId = r.raceId