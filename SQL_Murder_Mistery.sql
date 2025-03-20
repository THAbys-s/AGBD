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

SELECT * FROM get_fit_now_member gn 
INNER JOIN name
ON get_fit_now_check_in.membership_id = gf.membership_name WHERE membership_id LIKE "48Z%"

-- SELECT * from person, interview INNER JOIN interview person.address_street_name 
-- LIKE "Northwestern Dr" AND person.id = "14887" ORDER BY interview.person_id asc




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