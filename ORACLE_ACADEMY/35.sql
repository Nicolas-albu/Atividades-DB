
-- Na tabela Employees, cada manager_id é gerente de um ou mais funcionários que têm um job_id 
-- e recebem um salário. Para cada gerente, qual é o salário total ganho por todos os funcionários 
-- em cada job_id? Crie uma consulta para exibir o manager_id, o job_id e o salário total. Inclua no 
-- resultado o subtotal salarial de cada gerente e o total geral de todos os salários.

SELECT E.MANAGER_ID, 
       E.JOB_ID, 
       TO_CHAR(SUM(E.SALARY), 'L999G990D00') AS TOTAL_SALARY,
       GROUPING (E.MANAGER_ID) AS MGR_SUB_TOTAL,
       GROUPING (E.JOB_ID) AS JOB_SUB_TOTAL
FROM EMPLOYEES E
GROUP BY ROLLUP (E.MANAGER_ID, E.JOB_ID)
ORDER BY E.MANAGER_ID, E.JOB_ID;