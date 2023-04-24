
-- Usando GROUPING SETS, crie uma consulta para exibir os seguintes agrupamentos:
-- • department_id, manager_id, job_id
-- • manager_id, job_id
-- • department_id, manager_id


SELECT E.DEPARTMENT_ID, E.MANAGER_ID, E.JOB_ID, 
       TO_CHAR(SUM(E.SALARY), 'L999G990D00') AS TOTAL,
       GROUPING (E.DEPARTMENT_ID) AS DEPT_SUB_TOTAL,
       GROUPING (E.MANAGER_ID) AS MGR_SUB_TOTAL,
       GROUPING (E.JOB_ID) AS JOB_SUB_TOTAL
FROM EMPLOYEES E
GROUP BY GROUPING SETS ((DEPARTMENT_ID, MANAGER_ID, JOB_ID),
                        (MANAGER_ID, JOB_ID),
                        (DEPARTMENT_ID, MANAGER_ID))
ORDER BY E.DEPARTMENT_ID DESC, E.MANAGER_ID DESC, E.JOB_ID DESC;