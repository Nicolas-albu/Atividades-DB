
-- O objetivo da consulta a seguir é exibir o salário mínimo de cada departamento em que esse 
-- salário é inferior ao salário mais baixo dos funcionários do departamento 50.

SELECT DEPARTMENT_ID, MIN(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MIN(SALARY) > (SELECT MIN(SALARY)
                      FROM EMPLOYEES
                      WHERE DEPARTMENT_ID = 50);