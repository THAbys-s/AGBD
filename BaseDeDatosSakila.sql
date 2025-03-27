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
INNER JOIN film_text ON r.inventory_id = i.inventory_id
INNER JOIN film_actor ON i.film_id = f.film_id
INNER JOIN actor ON i.film_id = f.film_id
INNER JOIN language ON r.inventory_id = i.inventory_id
INNER JOIN film_category ON i.film_id = f.film_id
INNER JOIN category ON i.film_id = f.film_id

INNER JOIN payment ON r.inventory_id = i.inventory_id
INNER JOIN staff ON i.film_id = f.film_id
INNER JOIN store ON r.inventory_id = i.inventory_id
INNER JOIN city ON i.film_id = f.film_id
INNER JOIN country ON i.film_id = f.film_id
INNER JOIN customer ON r.inventory_id = i.inventory_id

