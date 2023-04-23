
-- Retorne o nome, o sobrenome e o nome do departamento de todos os funcionários, 
-- incluindo aqueles não designados a um departamento.

SELECT E.FIRST_NAME,
       E.LAST_NAME,
       D.DEPARTMENT_NAME
FROM EMPLOYEES E LEFT OUTER JOIN DEPARTMENTS D 
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);