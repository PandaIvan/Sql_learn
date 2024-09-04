Задание 2:

SELECT title, length
FROM track
ORDER BY length DESC
LIMIT 1
;

SELECT title, length
FROM track
WHERE length >= 3.5
;

SELECT title, release_year 
FROM collection
WHERE EXTRACT(YEAR FROM release_year) BETWEEN 2018 AND 2020
;

SELECT name
FROM artist
WHERE name NOT LIKE '% %'
;

SELECT title
FROM track
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%my%'
;

Задание 3:

SELECT g.name AS Genre, COUNT(DISTINCT ag.artist_id)
FROM genre g
JOIN artistgenre ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_id, g.name
;

SELECT COUNT(*)
FROM track
WHERE album_id IN (
    SELECT album_id
    FROM album
    WHERE EXTRACT(YEAR FROM release_year) BETWEEN 2019 AND 2020
)
;

SELECT a.title, AVG(t.length)
FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_id, a.title
;

SELECT DISTINCT ar.name
FROM artist ar
WHERE ar.artist_id NOT IN (
    SELECT aa.artist_id
    FROM artistalbum aa
    JOIN album a ON aa.album_id = a.album_id
    WHERE EXTRACT(YEAR FROM a.release_year) = 2020
)
;

SELECT DISTINCT c.title
FROM collection c
JOIN collectiontrack ct ON c.collection_id = ct.collection_id
JOIN track t ON ct.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN artistAlbum aa ON a.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'John Doe'
;
