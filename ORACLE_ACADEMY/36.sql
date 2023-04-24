
-- Modifique a consulta anterior para incluir também um subtotal salarial para cada job_id, 
-- independentemente do manager_id.


SELECT E.MANAGER_ID, 
       E.JOB_ID, 
       TO_CHAR(SUM(E.SALARY), 'L999G990D00') AS TOTAL_SALARY,
       GROUPING (E.MANAGER_ID) AS MGR_SUB_TOTAL,
       GROUPING (E.JOB_ID) AS JOB_SUB_TOTAL
FROM EMPLOYEES E
GROUP BY CUBE (E.MANAGER_ID, E.JOB_ID)
ORDER BY E.MANAGER_ID, E.JOB_ID;