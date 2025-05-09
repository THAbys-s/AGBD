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
--                           EJERCICIO 4                            --
--                                                                  --
SELECT a.Title AS "Nombre del Disco", COUNT(t.TrackId) AS "Cantidad de Canciones"
FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.Title
HAVING COUNT(t.TrackId) > 5;
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
--                                                                  --
--                           EJERCICIO 8                            --
--                                                                  --
-- Apellido, puesto, apellido del jefe y cantidad de clientes que atiende de todos los empleados, 
-- ordenado desde los que atienden más clientes a los que atienden menos
SELECT e.LastName AS "Apellido", e.Title AS "Puesto"
FROM employees e
INNER JOIN customers c ON e.LastName = c.LastName
--                                                                  --
--                           EJERCICIO 9                            --
--                                                                  --
INSERT INTO tracks (Name, MediaTypeId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES 
('Mozart Is A Liar 1', 2, 'Galo Perez', 1776, 2493695, 1.90),
('Mozart Is A Liar 2', 2, 'Galo Perez', 2376, 1498695, 1.70),
('Mozart Is A Liar 3', 2, 'Galo Perez', 43976, 3495695, 1.20),
('Mozart Is A Liar 4', 2, 'Galo Perez', 53176, 8499695, 1.50);
--                                                                  --
--                           EJERCICIO 10                           --
--                                                                  --
SELECT Name AS "Canción", MediaTypeId, Composer, Milliseconds, Bytes, UnitPrice
FROM tracks
WHERE Composer = 'Galo Perez';
--                                                                  --
--                           EJERCICIO 11                           --
--                                                                  --
UPDATE tracks SET Name = 'Mazorto' WHERE Name = 'Mozart Is A Liar 1';
UPDATE tracks SET Name = 'Mazierto' WHERE Name = 'Mozart Is A Liar 2';
--                                                                  --
--                           EJERCICIO 12                           --
--                                                                  --

SELECT Name AS "Canción", MediaTypeId, Composer, Milliseconds, Bytes, UnitPrice
FROM tracks
WHERE Name IN ('Mazorto','Mazierto');
--                                                                  --
--                           EJERCICIO 13                           --
--                                                                  --
DELETE FROM tracks
WHERE Name IN ('Mazorto', 'Mazierto');