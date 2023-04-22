-- Use a tabela funcionários do banco de dados Oracle e a expressão CASE para decodificar o id 
-- do departamento. Exiba o id do departamento, o sobrenome, o salário e uma coluna chamada 
-- “New Salary” cujo valor se baseia nas seguintes condições:
-- Se o id do departamento for 10, o novo salário será 1,25 * salário
-- Se o id do departamento for 90, o novo salário será 1,5 * salário
-- Se o id do departamento for 130, o novo salário será 1,75 * salário
-- Caso contrário, exiba o salário antigo.


SELECT EM.DEPARTMENT_ID AS "Department ID",
       EM.LAST_NAME AS "Last Name",
       TO_CHAR(EM.SALARY, 'L999G990D00') AS "Salary",
       CASE NVL(EM.DEPARTMENT_ID, 0)
            WHEN 10 THEN (1.25 * EM.SALARY)
            WHEN 90 THEN (1.5 * EM.SALARY)
            WHEN 130 THEN (1.75 * EM.SALARY)
            ELSE EM.SALARY
        END AS "New Salary"
FROM EMPLOYEES EM;