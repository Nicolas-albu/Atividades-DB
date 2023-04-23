
-- Modifique a pergunta 1 para exibir todos os funcionários e os respectivos gerentes, mesmo que o 
-- funcionário não tenha um gerente. Ordene a lista alfabeticamente pelo sobrenome do funcionário. 

SELECT E.LAST_NAME AS "Emp#",
       E.PHONE_NUMBER AS PHONE_NUMBER_EMPLOYEE,
       M.LAST_NAME AS "Mgr#",
       M.PHONE_NUMBER AS PHONE_NUMBER_MANAGER
FROM EMPLOYEES E LEFT JOIN EMPLOYEES M
ON (E.MANAGER_ID = M.EMPLOYEE_ID)
ORDER BY 1;