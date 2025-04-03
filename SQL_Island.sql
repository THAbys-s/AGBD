SELECT * FROM village
SELECT * FROM inhabitant
SELECT * FROM inhabitant WHERE job = 'butcher'
SELECT * FROM inhabitant WHERE state = "friendly"
SELECT * FROM inhabitant WHERE state = "friendly" and job = "weaponsmith"
SELECT * FROM inhabitant WHERE state = "friendly" and job LIKE "%smith"
INSERT INTO inhabitant (name, villageid, gender, job, gold, state) VALUES ('Stranger', 1, '?', '?', 0, '?')
SELECT personid FROM inhabitant WHERE name LIKE "stranger" and personid = "20"
SELECT gold FROM inhabitant WHERE name LIKE "stranger" and personid = "20"
SELECT * FROM ITEM WHERE owner IS NULL
UPDATE item SET owner = 20 WHERE item = 'coffee cup'
UPDATE item SET owner = 20 WHERE item LIKE "%" and owner IS NULL
SELECT * FROM item WHERE owner = "20"
SELECT * FROM inhabitant WHERE state = "friendly" and job = "dealer" or job = "merchant"
UPDATE item SET owner = 15 WHERE item = "ring" or item = "teapot"
UPDATE inhabitant SET name = "Abyss" WHERE personid = 20
SELECT * from inhabitant Where job LIKE "%baker" ORDER BY gold
UPDATE inhabitant SET gold = gold + 100 - 150 WHERE personid = 20
INSERT INTO item (item, owner) VALUES ('sword', 20)
SELECT * From inhabitant WHERE job LIKE "pilot"
SELECT COUNT(*) FROM INHABITANT WHERE gender = 'f' and villageid = 3
SELECT state, AVG(inhabitant.gold) FROM INHABITANT GROUP BY state ORDER BY AVG(inhabitant.gold)
