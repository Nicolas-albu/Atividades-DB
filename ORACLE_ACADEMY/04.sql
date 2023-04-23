
-- Crie uma consulta que use uma junção natural para ingressar na tabela de departamentos e na 
-- tabela de localizações. Restrinja a saída somente aos IDs de departamento 20 e 50. Exiba o id do 
-- departamento, o nome do departamento, o id do local e a cidade.

SELECT D.DEPARTMENT_ID AS "Department ID",
       D.DEPARTMENT_NAME AS "Department Name",
       LOCATION_ID AS "Location ID",
       LOC.CITY AS "City"
FROM DEPARTMENTS D NATURAL JOIN LOCATIONS LOC
WHERE D.DEPARTMENT_ID BETWEEN 20 AND 50;