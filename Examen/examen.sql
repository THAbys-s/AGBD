-- Cuántas canciones tiene el álbum unplugged? --
SELECT COUNT(t.TrackId) AS "Canciones del Album 'Unplugged'"
FROM tracks t
INNER JOIN albums ab ON ab.AlbumId = t.AlbumId
WHERE ab.AlbumId = "73"

-- Mostrar los artistas que tienen 30 o más canciones ordenadas del que tiene más al que tiene menos. --
SELECT art.name AS "Artistas (Con almenos 30 canciones)"
FROM artists art
INNER JOIN albums ab ON ab.ArtistId = art.ArtistId
INNER JOIN tracks t ON t.AlbumId = ab.AlbumId
GROUP BY art.name
HAVING COUNT(t.TrackId) >= 30;

-- Insertar 6 canciones que elijan, con sus respectivos datos.(fijense en la estructura de la tabla que datos tiene que usar) --
INSERT INTO tracks (Name, MediaTypeId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES 
('Beethoven Is A Liar 1', 2, 'Emilio Perez', 63776, 6493695, 1),
('Beethoven Is A Liar 2', 2, 'Emilio Perez', 63376, 6498695, 1),
('Beethoven Is A Liar 3', 2, 'Emilio Perez', 63976, 6495695, 1),
('Beethoven Is A Liar 4', 2, 'Emilio Perez', 63176, 6499695, 1),
('Beethoven Is A Liar 5', 2, 'Emilio Perez', 63276, 6494795, 1),
('Beethoven Is A Liar 6', 2, 'Emilio Perez', 63196, 6199695, 1);

-- Modificar el nombre de una canción insertada, y al segundo dato ingresado modificar los milisegundos. --
UPDATE tracks SET Name = 'Beethovovon' WHERE Name = 'Beethoven Is A Liar 1';
UPDATE tracks SET Milliseconds = 695 WHERE Name = 'Beethoven Is A Liar 2';

-- Borrar dos datos agregados y modificados con una sola sentencia de borrar. --
DELETE FROM tracks
WHERE Name IN ('Beethovovon', 'Beethoven Is A Liar 2');