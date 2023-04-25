
-- Crie uma consulta para retornar todos os funcionários que têm um salário superior ao de Lorentz 
-- e que sejam do mesmo departamento que Abel.

SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY
                FROM EMPLOYEES
                WHERE UPPER(LAST_NAME) = 'LORENTZ')
AND DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                     FROM EMPLOYEES
                     WHERE UPPER(LAST_NAME) = 'ABEL')
ORDER BY FIRST_NAME, LAST_NAME;