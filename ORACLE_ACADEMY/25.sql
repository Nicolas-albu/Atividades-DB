
-- Modifique o relatório da pergunta 6 para excluir De Haan e todas as pessoas que trabalham para 
-- ele


SELECT LPAD(E.LAST_NAME, LENGTH(E.LAST_NAME) + LEVEL, '-')
FROM EMPLOYEES E
START WITH UPPER(E.LAST_NAME) = 'KING'
CONNECT BY PRIOR E.EMPLOYEE_ID = E.MANAGER_ID
AND UPPER(E.LAST_NAME) != 'DE HAAN'
ORDER BY 1 DESC;