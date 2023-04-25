
-- Quais eventos do banco de dados da DJs on Demand custam mais do que o event_id = 100?

SELECT *
FROM D_EVENTS
WHERE ID IN (SELECT ID 
             FROM D_EVENTS
             WHERE ID != 100)

SELECT *
FROM D_EVENTS
WHERE ID != 100