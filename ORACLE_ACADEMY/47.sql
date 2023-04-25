
-- Quais são os nomes dos departamentos da Oracle que têm o mesmo ID de local que Seattle?

SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE LOCATION_ID = (SELECT LOCATION_ID
                     FROM LOCATIONS
                     WHERE UPPER(CITY) = 'SEATTLE')