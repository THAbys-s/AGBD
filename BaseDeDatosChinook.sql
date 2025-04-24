







--                                                                  --
--                           EJERCICIO 1                            --
--                                                                  -- 
SELECT CONCAT("FirstName", ", " , "LastName") AS "Nombre y Apellido" FROM employees
ORDER BY FirstName, LastName
--                                                                  --
--                           EJERCICIO 2                            --
--                                                                  --
SELECT t.name, t.Milliseconds FROM tracks t
INNER JOIN albums ab ON ab.AlbumId = t.AlbumId
WHERE ab.AlbumId = "5"
ORDER BY t.Milliseconds DESC
--                                                                  --
--                           EJERCICIO 3                            --
--                                                                  --
SELECT g.name AS "Género", COUNT(g.name) AS "Cantidad de Canciones por Género"
FROM genres g
INNER JOIN tracks t ON g.GenreId = t.GenreId
GROUP BY g.name
ORDER BY "Cantidad de Canciones por Género" DESC;
--                                                                  --
--                           EJERCICIO 5                            --
--                                                                  --
SELECT a.Title , SUM(t.UnitPrice) AS "Precio Total"
FROM albums a
INNER JOIN tracks t ON t.AlbumId = a.AlbumId
GROUP BY a.Title
ORDER BY "Precio Total" ASC
LIMIT 10;
--                                                                  --
--                           EJERCICIO 6                            --
--                                                                  --
SELECT t.name AS "Canción", g.name AS "Género", a.Title AS "Nombre del Disco"
FROM albums a
INNER JOIN tracks t ON t.AlbumId = a.AlbumId
INNER JOIN genres g ON t.GenreId = g.GenreId
WHERE t.UnitPrice = "0.99"
--                                                                  --
--                           EJERCICIO 7                            --
--                                                                  --
SELECT t.name AS "Canción", t.Milliseconds AS "Duración", a.Title AS "Nombre del Disco"
FROM albums a
INNER JOIN tracks t ON t.AlbumId = a.AlbumId
INNER JOIN genres g ON t.GenreId = g.GenreId
INNER JOIN artists art ON a.ArtistId = art.ArtistId
ORDER BY t.Milliseconds DESC;

--Me gustan los hombres
