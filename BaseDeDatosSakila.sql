SELECT * FROM film WHERE title LIKE "Sky miracle"

SELECT * FROM rental where return_date IS NULL

SELECT rental_id, return_date FROM rental INNER JOIN  where return_date IS NULL 

SELECT rental_id, return_date
FROM rental 
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON film.film_id = inventory.film_id
WHERE rental.return_date IS NULL AND film.title LIKE "Sky Miracle" 

SELECT film_id, title FROM film, rental
INNER JOIN inventory ON inventory.film_id = film.film_id
AND WHERE rental_date IS NULL

SELECT f.title AS 'titulo', r.rental_date  FROM film f
INNER JOIN inventory as i ON i.film_id = f.film_id
INNER JOIN rental as r ON r.inventory_id  = i.inventory_id
WHERE r.return_date IS NULL 


-- Aprendí a usar el INNER JOIN, y viendo los diagramas de bloques sé que   --
-- debo igualar datos con el mismo nombre. Este es el fin del Ejercicio 1   --

--                                                                  --
--                           EJERCICIO 1                            --
--                                                                  --
SELECT f.title AS 'titulo', r.return_date, a.address, city, country
FROM film f
INNER JOIN inventory i ON i.film_id = f.film_id
INNER JOIN rental r ON r.inventory_id  = i.inventory_id
INNER JOIN staff s ON r.staff_id = s.staff_id
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country cty on c.country_id = cty.country_id 
WHERE r.return_date IS NULL AND f.title LIKE "%Hyde Doctor%"

--                                                                  --
--                           EJERCICIO 2                            --
--                                                                  --
SELECT fl.title, f.category, f.length, fl.rating, l.name
FROM film fl
INNER JOIN film_list f ON fl.title = f.title
INNER JOIN language l ON fl.language_id = l.language_id
WHERE f.length >= 60 and f.length <= 120 ORDER BY f.length ASC

--                                                                  --
--                           EJERCICIO 3                            --
--                                                                  --
SELECT sl.name, sl.address, sl.city, sl.country
FROM staff s
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country cty ON c.country_id = cty.country_id
INNER JOIN staff_list sl ON a.address = sl.address

--                                                                  --
--                           EJERCICIO 4                            --
--                                                                  -- 
SELECT f.title, MIN(r.return_date), MAX(r.return_date) 
from rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id
GROUP BY f.title

--                                                                  --
--                           EJERCICIO 5                            --
--                                                                  --
SELECT f.title
from rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id
INNER JOIN film_text ft ON r.inventory_id = i.inventory_id
INNER JOIN film_actor fa ON i.film_id = f.film_id
INNER JOIN actor a ON i.film_id = f.film_id
INNER JOIN language l ON r.language_id = i.language_id
INNER JOIN film_category fc ON i.film_id = f.film_id
INNER JOIN category c ON i.film_id = f.film_id
INNER JOIN payment p ON r.staff_id = p.staff_id
INNER JOIN staff sf ON p.staff_id = sf.staff_id
INNER JOIN store st ON sf.store_id = st.store_id
INNER JOIN address ad ON sf.last_update = ad.last_update
INNER JOIN city ci ON ad.city_id = ci.city_id
INNER JOIN country ct ON ci.country_id = ct.country_id
INNER JOIN customer cu ON ad.address_id = cu.address_id
--                                                                  --
--                           EJERCICIO 6                            --
--                                                                  --
SELECT rating, COUNT(title) AS "Cantidad de Peliculas por cada Rating"
FROM film
GROUP BY rating
ORDER BY "Cantidad de Peliculas por cada Rating" DESC;
--                                                                  --
--                           EJERCICIO 7                            --
--                                                                  --
SELECT name, COUNT(title) AS "Cantidad de Peliculas por cada Categoria"
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY name
ORDER BY "Cantidad de Peliculas por cada Categoria" DESC;
--                                                                  --
--                           EJERCICIO 8                            --
--                                                                  -- 
SELECT CONCAT("first_name", " ", "last_name") AS "Actor/Actriz", COUNT(title) AS "Actores más famosos"
FROM actor ac    -- CONCAT("", "") sirve para concatenar 2 columnas de una misma tabla --
INNER JOIN film_actor fc ON ac.actor_id = fc.actor_id -- en este caso junte el nombre y el apellido --
INNER JOIN film f ON fc.film_id = f.film_id --  pero agregué un espacio entre ambos. --
GROUP BY fc.actor_id
ORDER BY "Actores más famosos" DESC;
--                                                                  --
--                           EJERCICIO 9                            --
--                                                                  --
SELECT CONCAT("address", ", ", "city", ", ", "country") AS "Dirección, Ciudad y País", COUNT(inventory_id) AS "Cantidad de Ejemplares"
FROM address ad
INNER JOIN store st ON ad.address_id = st.address_id
INNER JOIN inventory i ON st.store_id = i.store_id
INNER JOIN city ct ON ad.city_id = ct.city_id
INNER JOIN country cf ON ct.country_id = cf.country_id
GROUP BY ad.address, ct.city, cf.country
ORDER BY "Cantidad de EJemplares" DESC;
--                                                                  --
--                           EJERCICIO 10                           --
--                                                                  --
SELECT CONCAT("address", ", ", "city", ", ", "country") AS "Dirección, Ciudad y País", COUNT(DISTINCT f.film_id) AS "Cantidad de Ejemplares Distintos"
FROM address ad
INNER JOIN store st ON ad.address_id = st.address_id
INNER JOIN inventory i ON st.store_id = i.store_id
INNER JOIN film f ON i.film_id = f.film_id
INNER JOIN city ct ON ad.city_id = ct.city_id
INNER JOIN country cf ON ct.country_id = cf.country_id
GROUP BY ad.address, ct.city, cf.country
ORDER BY "Cantidad de Ejemplares Distintos" DESC;
--                                                                  --
--                           EJERCICIO 11                           --
--                                                                  --
SELECT c.name AS "Categoría", AVG(f.rental_rate) AS "Costo Promedio de Alquiler"
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name
ORDER BY "Costo Promedio de Alquiler" DESC;
--                                                                  --
--                           EJERCICIO 12                           --
--                                                                  --
SELECT f.title AS "Película", (f.rental_duration * f.rental_rate) AS "Costo Total", r.rental_date AS "Fecha de Renta", r.return_date AS "Fecha de Devolución"
FROM film f
INNER JOIN inventory i ON i.film_id = f.film_id
INNER JOIN rental r ON r.inventory_id  = i.inventory_id
INNER JOIN payment p ON r.rental_id  = p.rental_id
WHERE f.title LIKE "%Alabama Devil%"
ORDER BY r.rental_date DESC;

-- Realizado y comprendido, aunque creo que el precio es aproximado y que payment debería ser el real. --