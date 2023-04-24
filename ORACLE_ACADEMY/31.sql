-- Cada uma das consultas SQL a seguir tem um erro. Encontre o erro e corrija-o. Use o Oracle 
-- Application Express para verificar se as suas correções produzem os resultados desejados.
-- A. SELECT manager_id
-- FROM employees
-- WHERE AVG(salary) <16000
-- GROUP BY manager_id;

SELECT MANAGER_ID
FROM EMPLOYEES
HAVING AVG(SALARY) < 16000
GROUP BY MANAGER_ID;

-- B. SELECT cd_number, COUNT(title)
-- FROM d_cds
-- WHERE cd_number < 93;

SELECT CD_NUMBER, COUNT(TITLE)
FROM D_CDS
WHERE CD_NUMBER < 93
GROUP BY CD_NUMBER;

-- C. SELECT ID, MAX(ID), artist AS Artist
-- FROM d_songs
-- WHERE duration IN('3 min', '6 min', '10 min')
-- HAVING ID < 50
-- GROUP by ID;

SELECT MAX(ID),
       ARTIST AS Artist
FROM D_SONGS
WHERE DURATION IN('3 min', '6 min', '10 min')
AND ID < 50
GROUP BY ID, ARTIST;

-- D. SELECT loc_type, rental_fee AS Fee
-- FROM d_venues
-- WHERE id <100
-- GROUP BY "Fee"
-- ORDER BY 2;

SELECT LOC_TYPE, 
       RENTAL_FEE AS Fee
FROM D_VENUES
WHERE ID < 100
ORDER BY 2;
