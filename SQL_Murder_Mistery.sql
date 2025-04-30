SELECT * FROM crime_scene_report 
WHERE type = "murder" AND city LIKE "sql city" AND date = 20180115

SELECT * from person 
WHERE person.address_street_name LIKE "Northwestern Dr" ORDER BY address_number DESC

SELECT * FROM person 
WHERE name LIKE "Annabel%" AND address_street_name LIKE "Franklin Ave"

-- Morthy Schapiro
SELECT interview.transcript, person.name FROM person INNER JOIN 
interview ON interview.person_id = person.id WHERE person.id = "14887"


-- Annabel Miller
SELECT interview.transcript, person.name FROM person INNER JOIN 
interview ON interview.person_id = person.id WHERE person.id = "16371"

--  Posible solucion

Select id, membership_status from get_fit_now_member as gm
where membership_status LIKE "%gold"


Select id, person_id, name, membership_status from get_fit_now_member as gm
where membership_status LIKE "%gold"
AND id LIKE "48Z%"

Select * from drivers_license where 
plate_number LIKE "H42W%"

-- Literalmente lo interrogué y me contó todo, me tocará buscar más adelante
-- al verdadero asesino, la mente detrás de todo.
SELECT interview.transcript, person.name FROM person INNER JOIN 
interview ON interview.person_id = person.id WHERE person.id = "67318"




--                      INFORMACIÓN RECOLECTADA HASTA AHORA:                          --

-- Security footage shows that there were 2 witnesses. The first witness lives at the --
-- last house on "Northwestern Dr". --
-- The second witness, named Annabel, lives somewhere on "Franklin Ave". --

--                              MORTHY SCHAPIRO                                          --

-- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. --
-- The membership number on the bag started with "48Z". Only gold members have those bags. --
-- The man got into a car with a plate that included "H42W". -- 


--                              ANNABEL MILLER                                          --
-- I saw the murder happen, and I recognized the killer from --
-- my gym when I was working out last week on January the 9th. -- 

--                              JEREMY BOWERS 
--                                [SICARIO]                                              --
-- I was hired by a woman with a lot of money. --
-- I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). --
-- She has red hair and she drives a Tesla Model S. --
-- I know that she attended the SQL Symphony Concert 3 times in December 2017.  --
-- my gym when I was working out last week on January the 9th. -- 
