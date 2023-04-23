
-- Usando o banco de dados Oracle, selecione o menor salário, a data de contratação mais recente, 
-- além do sobrenome da primeira e da última pessoa que aparecem na lista alfabética de 
-- funcionários. Selecione somente os funcionários dos departamentos 50 ou 60.

SELECT MIN(E.SALARY) AS "Min Salary", 
       MAX(E.HIRE_DATE) AS "Current Hire Date",
       MIN(E.LAST_NAME) AS "First Person",
       MAX(E.LAST_NAME) AS "Last Person"
FROM EMPLOYEES E
WHERE E.DEPARTMENT_ID IN (50, 60);