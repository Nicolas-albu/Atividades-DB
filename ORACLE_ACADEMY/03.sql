
-- Crie uma consulta que use uma junção natural para ingressar na tabela de departamentos e na 
-- tabela de localizações. Exibir o ID do departamento, o nome do departamento, o ID do local e a 
-- cidade.

SELECT D.DEPARTMENT_ID AS "Department ID",
       D.DEPARTMENT_NAME AS "Department Name",
       LOCATION_ID AS "Location ID",
       LOC.CITY AS "City"
FROM DEPARTMENTS D NATURAL JOIN LOCATIONS LOC;
