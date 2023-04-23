
-- Retorne o nome, o sobrenome e o nome do departamento de todos os funcionários, incluindo os 
-- departamentos que não têm um funcionário designado.

SELECT E.FIRST_NAME,
       E.LAST_NAME,
       D.DEPARTMENT_NAME
FROM EMPLOYEES E RIGHT OUTER JOIN DEPARTMENTS D 
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);
