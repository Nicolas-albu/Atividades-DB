
-- Crie uma consulta que exibirá o custo médio dos eventos da DJs on Demand. Arredonde para 
-- duas casas decimais.

SELECT ROUND(AVG(COST), 2)
FROM D_EVENTS;