/*
SELECT title, authors
FROM BooksDB.dbo.books
WHERE authors LIKE '%,%'



SELECT title
FROM booksDB.dbo.books
WHERE book_id IN (
    SELECT goodreads_book_id
    FROM booksDB.dbo.book_tags
    WHERE tag_id IN (
        SELECT tag_id
        FROM booksDB.dbo.tags
        WHERE tag_name LIKE '%meditation%'
    )
)

*/

SELECT books.title, books.original_title, books.average_rating
FROM BooksDB.dbo.books
