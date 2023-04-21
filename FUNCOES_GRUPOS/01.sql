
-- Exiba o salário maior, menor, total e médio de todos os funcionários. Denomine as
-- colunas como Máximo, Mínimo, Soma e Média, respectivamente. Arredonde os
-- resultados para o número inteiro mais próximo.

SELECT MAX(FUNC.VL_SAL) AS "Máximo",
       MIN(FUNC.VL_SAL) AS "Mínimo",
       ROUND(SUM(FUNC.VL_SAL)) AS "Soma",
       ROUND(AVG(FUNC.VL_SAL)) AS "Média"
FROM FUNC;