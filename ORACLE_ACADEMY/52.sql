
-- Crie uma consulta para retornar uma lista de ids de departamento e das respectivas médias 
-- salariais em que essa média é superior ao salário de Ernst.

SELECT DEPARTMENT_ID, TO_CHAR(TRUNC(AVG(SALARY), 2), 'L999G990D00')
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > (SELECT SALARY
                      FROM EMPLOYEES
                      WHERE UPPER(LAST_NAME) = 'ERNST');