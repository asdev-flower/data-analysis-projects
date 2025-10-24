/*
SELECT UPPER(LEFT(surname, 3)) AS surname_first_3, nationality, driverId
FROM formula_one.dbo.drivers; 
*/

--Which month have the most races occurred in?

/* use this code to look at the columns in a db
SELECT * FROM formula_one.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'races'

SELECT MONTH(date) AS race_month,
    DATENAME(MONTH, date) AS month_name,
    COUNT(*) as num_races
FROM formula_one.dbo.races
WHERE YEAR(date) > 2014 
GROUP BY MONTH(date), DATENAME(MONTH, date)
ORDER BY num_races DESC;

-- Race reviews occur 4 days after each race. Calculate the day of the race review for every race in the 

SELECT name AS race_name,
    date AS race_date,
    DATEADD(DAY, 4, date) AS review_date
FROM formula_one.dbo.races

--  How can we display each race date as a formatted srting like "Sunday, March 28, 2021"?

SELECT name as race_name,
FORMAT(date, 'dddd, MMMM dd, yyyy') AS formatted_date
FROM formula_one.dbo.races
ORDER BY date 


SELECT *
FROM BooksDB.dbo.books
WHERE original_title IS NULL 

-- Create a column that has original title, if it exists, or title if original_title is null

SELECT authors, book_id, COALESCE(original_title, title) AS original_title_refined
FROM BooksDB.dbo.books

*/