
-- Crie uma consulta do banco de dados da DJs on Demand para retornar o nome, o sobrenome, a 
-- data e a descrição do evento realizado pelo cliente. Inclua todos os clientes mesmo os que não 
-- têm um evento programado.


SELECT C.FIRST_NAME,
       C.LAST_NAME,
       E.EVENT_DATE,
       E.DESCRIPTION
FROM D_CLIENTS C
LEFT OUTER JOIN D_EVENTS E
USING (CLIENT_NUMBER);