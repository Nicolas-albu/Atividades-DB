
-- Modifique a instrução anterior para não suprimir as linhas duplicadas e examine a saída. 
-- Quantas linhas extras foram retornadas e quais foram elas? Classifique a saída por employee_id 
-- para facilitar a identificação
-- R: Nenhuma linha extra foi adicionada porque as duas tabelas não têm linhas duplicadas.

SELECT EMPLOYEE_ID, JOB_ID, HIRE_DATE, TO_DATE(NULL), DEPARTMENT_ID
FROM EMPLOYEES
UNION ALL
SELECT EMPLOYEE_ID, JOB_ID, TO_DATE(NULL), START_DATE, DEPARTMENT_ID
FROM JOB_HISTORY
ORDER BY EMPLOYEE_ID;
