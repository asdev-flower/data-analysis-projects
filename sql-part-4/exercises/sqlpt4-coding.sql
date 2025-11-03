SELECT COUNT(user_id) AS above_avg_users
FROM BooksDB.dbo.ratings AS r
WHERE r.rating > (
    SELECT b.average_rating FROM BooksDB.dbo.books AS b
    WHERE b.book_id = r.book_id)



SELECT book_id
FROM BooksDB.dbo.books
WHERE ratings_1 > 1000

UNION

SELECT book_id
FROM BooksDB.dbo.books
WHERE ratings_5 > 1000;


Select *
FROM BooksDB.dbo.books

SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'

EXCEPT

SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-GB';


SELECT bt.tag_id,
    (
        SELECT tag_name FROM BooksDB.dbo.tags t
        WHERE t.tag_id = bt.tag_id) AS tag_name,
        SUM()
    )
FORM BooksDB.dbo.book_tags

SELECT bt.tag_id,(
    SELECT tag_name FROM BooksDB.dbo.tags AS t
    WHERE t.tag_id = bt.tag_id) AS tag_name,
    SUM([count]) AS times_used
FROM BooksDB.dbo.book_tags AS bt
GROUP BY tag_id
HAVING SUM([count]) > 100000
ORDER BY times_used