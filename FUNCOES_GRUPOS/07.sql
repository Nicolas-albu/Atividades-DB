
-- Produza um alista contendo o cargo, a média salarial e o número de funcionários
-- agrupados por cargo para os departamentos D01, D11, D21 e E11. Todos os cargos
-- com menos de três funcionários devem ser excluídos do resultado. A lista deve vir
-- ordenada em ordem descendente por média salarial.

-- SELECT FUNC.NR_CARGO AS CODIGO_CARGO,
--        AVG(FUNC.VL_SAL) AS MEDIA_SALARIAL,
--        COUNT(*) AS NUMERO_FUNCIONARIOS
-- FROM FUNC
-- WHERE FUNC.CD_DEPTO = 'D01'
--       AND FUNC.CD_DEPTO = 'D11'
--       AND FUNC.CD_DEPTO = 'D21'
--       AND FUNC.CD_DEPTO = 'E11'
-- HAVING COUNT(*) > 3
-- ORDER BY AVG(FUNC.VL_SAL) DESC
-- GROUP BY FUNC.NR_CARGO;

SELECT FUNC.NR_CARGO AS CODIGO_CARGO,
       AVG(FUNC.VL_SAL) AS MEDIA_SALARIAL,
       COUNT(*) AS NUMERO_FUNCIONARIOS
FROM FUNC
WHERE FUNC.CD_DEPTO IN ('D01', 'D11', 'D21', 'E11')
HAVING COUNT(*) >= 3
GROUP BY FUNC.NR_CARGO
ORDER BY 2 DESC -- O 2 É DE 2° COLUNA