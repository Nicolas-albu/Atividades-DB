-- Crie um relatório que mostre o organograma de toda a tabela employee. No relatório, cada nível 
-- deverá mostrar cada funcionário com 2 espaços recuados. Como o Oracle Application Express 
-- não exibe os espaços antes da coluna, use o sinal - (menos)

SELECT LPAD(E.LAST_NAME, LENGTH(E.LAST_NAME) + LEVEL, '-')
FROM EMPLOYEES E
START WITH UPPER(E.LAST_NAME) = 'KING'
CONNECT BY PRIOR E.EMPLOYEE_ID = E.MANAGER_ID
ORDER BY 1 DESC;