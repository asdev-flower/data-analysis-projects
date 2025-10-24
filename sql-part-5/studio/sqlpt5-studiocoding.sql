/*
SELECT * FROM Sep2025JunkDB.andres_spillari.author
SELECT * FROM Sep2025JunkDB.andres_spillari.book
SELECT * FROM Sep2025JunkDB.andres_spillari.genre
SELECT * FROM Sep2025JunkDB.andres_spillari.patron
SELECT * FROM Sep2025JunkDB.andres_spillari.loan
*/

SELECT 
p.first_name + ' ' + p.last_name AS patron_name,
g.genres
FROM Sep2025JunkDB.andres_spillari.loan l
INNER JOIN Sep2025JunkDB.andres_spillari.patron p ON l.patron_id = p.patron_id
INNER JOIN Sep2025JunkDB.andres_spillari.book b ON l.book_id = b.book_id
INNER JOIN Sep2025JunkDB.andres_spillari.genre g ON g.genre_id = b.genre_id
WHERE l.date_in IS NULL AND b.available = 0