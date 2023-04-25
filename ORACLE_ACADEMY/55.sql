
-- Encontre os sobrenomes de todos os funcionários cujos salários são iguais ao salário mínimo de 
-- qualquer departamento

SELECT LAST_NAME
FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEES);
