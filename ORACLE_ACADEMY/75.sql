-- Crie uma cópia da tabela employees e atribua o nome lesson7_emp a ela.
-- Uma vez criada a tabela, crie uma instrução DELETE correlacionada que excluirá todos os
-- funcionários da tabela lesson7_employees que também existam na tabela job_history.

CREATE TABLE LESSON7_EMP AS (
    SELECT * FROM EMPLOYEES
);

DELETE LESSON7_EMP L_EMPLOYEE
WHERE L_EMPLOYEE.EMPLOYEE_ID IN (SELECT J.EMPLOYEE_ID
                                 FROM JOB_HISTORY J
                                 WHERE J.EMPLOYEE_ID = L_EMPLOYEE.EMPLOYEE_ID);