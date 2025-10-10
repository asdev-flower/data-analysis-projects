SELECT COUNT(book_id) AS 'Total-Books-To-Read', [user_id]
FROM BooksDB.dbo.to_read
GROUP BY [user_id]
ORDER BY [Total-Books-To-Read] DESC