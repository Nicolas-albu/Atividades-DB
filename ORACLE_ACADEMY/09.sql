
-- Crie uma instrução unindo as tabelas de funcionários e cargos. Exiba os nomes, os sobrenomes, 
-- a data de contratação, o id e o título do cargo, e o salário máximo. 
-- Limite a consulta aos funcionários que ocupam cargos cujo salário pode ser superior 
-- a US$ 12.000.

SELECT INITCAP(E.LAST_NAME || ', ' || E.FIRST_NAME) AS "Name",
       E.HIRE_DATE AS "Hire Date",
       JOB_ID AS "Job ID",
       J.JOB_TITLE AS "Job Title",
       TO_CHAR(J.MAX_SALARY, 'L999G990') AS "Max Salary"
FROM EMPLOYEES E JOIN JOBS J USING (JOB_ID)
WHERE J.MAX_SALARY > 12000;