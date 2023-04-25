
-- Crie uma consulta que liste os funcionários que ganham mais em cada departamento. Inclua as 
-- informações last_name, department_id e salary para cada funcionário.

SELECT E.DEPARTMENT_ID, E.LAST_NAME, E.SALARY
FROM EMPLOYEES E
WHERE E.SALARY IN (SELECT MAX(SALARY)
                 FROM EMPLOYEES
                 WHERE DEPARTMENT_ID = E.DEPARTMENT_ID)