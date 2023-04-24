
-- Crie uma consulta que retorne as informações employee_id, job_id, hire_date e department_id de todos 
-- os funcionários e uma segunda consulta que liste as informações employee_id, job_id, 
-- start_date e department_id da tabela job_history, e combine os resultados em uma única saída. 
-- Certifique-se de suprimir as linhas duplicadas na saída.

SELECT EMPLOYEE_ID, JOB_ID, HIRE_DATE, TO_DATE(NULL) AS START_DATE, DEPARTMENT_ID
FROM EMPLOYEES
UNION
SELECT EMPLOYEE_ID, JOB_ID, TO_DATE(NULL), START_DATE, DEPARTMENT_ID
FROM JOB_HISTORY
ORDER BY EMPLOYEE_ID, JOB_ID, DEPARTMENT_ID;