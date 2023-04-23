
-- Crie uma junção cruzada que exiba o sobrenome e o nome do departamento das tabelas 
-- funcionários e departamentos.

SELECT E.LAST_NAME AS "Last Name", 
       D.DEPARTMENT_NAME AS "Department Name"
FROM EMPLOYEES E NATURAL JOIN DEPARTMENTS D;