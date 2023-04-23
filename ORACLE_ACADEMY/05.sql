
-- Una as tabelas locais e departamentos do banco de dados Oracle usando a coluna location_id. 
-- Limite os resultados somente ao local 1400

SELECT *
FROM DEPARTMENTS JOIN LOCATIONS USING (LOCATION_ID)
WHERE LOCATION_ID = 1400;