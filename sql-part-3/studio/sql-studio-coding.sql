/*
-- tags: tag_id, tag_name
-- booktags: 
SELECT 
tags.tag_id,
tags.tag_name,
COUNT(book_tags.tag_id) AS tag_count
FROM BooksDB.dbo.tags AS tags
INNER JOIN BooksDB.dbo.book_tags AS book_tags
ON tags.tag_id = book_tags.tag_id
GROUP BY tags.tag_id, tags.tag_name
HAVING tags.tag_name like '%women%' 
OR tags.tag_name like '%female%'
OR tags.tag_name like '%woman%'
ORDER BY tag_count DESC;

SELECT tag_name 
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%ireland%'


SELECT 
books.authors,
books.title,
books.average_rating,
tags.tag_id
FROM BooksDB.dbo.tags AS tags
INNER JOIN BooksDB.dbo.book_tags AS book_tags
ON tags.tag_id = book_tags.tag_id
INNER JOIN BooksDB.dbo.books AS books
ON book_tags.goodreads_book_id = books.best_book_id
WHERE tags.tag_name like '%ireland%' 
OR tags.tag_name like '%irish%'
OR tags.tag_name like '%luck%'
OR tags.tag_name like '%Saint Patrick%';


SELECT TOP(100) t.tag_id, COUNT(*) AS Times_Used, bt.tag_name
FROM dbo.book_tags as t
FULL JOIN tags as bt
ON t.tag_id = bt.tag_id
GROUP BY t.tag_id, bt.tag_name
HAVING bt.tag_name LIKE '%female%'
ORDER BY Times_Used DESC
*/ 

SELECT TOP 20 SUM([count]) AS times_tagid_used,
tags.tag_id,
tags.tag_name,
books.authors,
books.average_rating,
books.title

FROM BooksDB.dbo.book_tags AS bts
INNER JOIN BooksDB.dbo.tags AS tags
ON tags.tag_id = bts.tag_id
INNER JOIN BooksDB.dbo.books AS books
ON books.book_id = bts.goodreads_book_id

GROUP BY tags.tag_id, tags.tag_name, books.authors, books.average_rating, books.title

HAVING tags.tag_name like 'college-football'
OR tags.tag_name LIKE 'american-football' 
--OR tags.tag_name like '%valentine%'
--OR tags.tag_name like '%romance%'
ORDER BY times_tagid_used DESC;

SELECT *

FROM tags
WHERE tag_name LIKE 'college-football'