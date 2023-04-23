
-- Crie uma consulta que retornará a média total de todos os pedidos da Global Fast Foods de 1º de 
-- janeiro de 2002 a 21 de dezembro de 2002


SELECT AVG(ORDER_TOTAL)
FROM F_ORDERS
WHERE ORDER_DATE BETWEEN TO_DATE('01012002', 'FXDDMMYYYY') 
AND TO_DATE('10122002', 'FXDDMMYYYY');
