
-- Exiba a cidade, o ID do local, além do nome e do ID dos departamentos 10, 20 e 30 da cidade de 
-- Seattle.

SELECT L.CITY,
       LOCATION_ID,
       D.DEPARTMENT_NAME,
       D.DEPARTMENT_ID
FROM LOCATIONS L JOIN DEPARTMENTS D USING (LOCATION_ID)
WHERE LOWER(L.CITY) = 'seattle'
AND D.DEPARTMENT_ID IN (10, 20, 30);