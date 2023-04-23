-- Exiba o sobrenome e o número do funcionário com o sobrenome e o número do gerente. 
-- Identifique as colunas da seguinte maneira: Employee, Emp#, Manager e Mgr#, respectivamente

SELECT E.LAST_NAME AS "Emp#",
       E.PHONE_NUMBER AS PHONE_NUMBER_EMPLOYEE,
       M.LAST_NAME AS "Mgr#",
       M.PHONE_NUMBER AS PHONE_NUMBER_MANAGER
FROM EMPLOYEES E JOIN EMPLOYEES M
ON (E.MANAGER_ID = M.EMPLOYEE_ID);