-- Consulte e exiba o ID do gerente, o ID do departamento, o nome do departamento, o nome e o 
-- sobrenome de todos os funcionários dos departamentos 80, 90, 110 e 190.

SELECT E.MANAGER_ID, 
       E.DEPARTMENT_ID,
       D.DEPARTMENT_NAME,
       E.FIRST_NAME,
       E.LAST_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D 
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE D.DEPARTMENT_ID IN (80, 90, 110, 190);