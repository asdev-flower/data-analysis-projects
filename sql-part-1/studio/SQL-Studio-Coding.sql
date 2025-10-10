SELECT COUNT(authors)
FROM BooksDB.dbo.books
WHERE authors = 'stephen king' AND average_rating >= '4.00'