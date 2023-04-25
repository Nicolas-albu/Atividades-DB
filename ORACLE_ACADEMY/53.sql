
-- Retorne o ID de departamento e o salário mínimo de todos os funcionários, agrupados por ID de 
-- departamento, que têm um salário mínimo superior aos daqueles cujo ID de departamento é 
-- diferente de 50

SELECT DEPARTMENT_ID, MIN(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MIN(SALARY) > ALL (SELECT SALARY
                          FROM EMPLOYEES
                          WHERE DEPARTMENT_ID != 50)