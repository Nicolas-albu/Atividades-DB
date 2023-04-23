
-- Crie uma instrução que exiba o ID, o nome e o sobrenome dos funcionários, além do ID, do nome 
-- e do sobrenome do gerente de todos os funcionários da tabela funcionários. Dica: está é uma 
-- autojunção.

SELECT E.EMPLOYEE_ID,
       E.FIRST_NAME,
       E.LAST_NAME,
       E.MANAGER_ID,
       M.FIRST_NAME,
       M.LAST_NAME
FROM EMPLOYEES E JOIN EMPLOYEES M 
ON (E.MANAGER_ID = M.EMPLOYEE_ID);


SELECT E.EMPLOYEE_ID,
       INITCAP(E.LAST_NAME || ', ' || E.FIRST_NAME) AS EMPLOYEE_NAME,
       E.MANAGER_ID,
       INITCAP(M.LAST_NAME || ', ' || M.FIRST_NAME) AS MANAGER_NAME
FROM EMPLOYEES E JOIN EMPLOYEES M 
ON (E.MANAGER_ID = M.EMPLOYEE_ID);