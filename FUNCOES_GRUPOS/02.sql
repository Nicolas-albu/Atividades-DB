
-- Produza uma lista contendo a média salarial, total de salários e quantidade de linhas
-- selecionadas por departamento.

SELECT F.CD_DEPTO AS DEPARTAMENTO,
       TRUNC(AVG(F.VL_SAL), 2) AS MEDIA_SALARIAL,
       SUM(F.VL_SAL) AS TOTAL_SALARIAL,
       COUNT(F.VL_SAL) AS QTD_LINHAS
FROM FUNC F
GROUP BY F.CD_DEPTO;