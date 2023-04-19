
-- Exiba uma listagem com o nome do departamento e os percentuais de gratificação
-- pagos em cada um. (GIT – Gratificação de Incentivo Técnico).

SELECT DEPTO.NM_DEPTO AS NOME_DEPARTAMENTOS,
       FUNC.NR_GIT AS GIT
FROM DEPTO, FUNC
WHERE DEPTO.CD_DEPTO = FUNC.CD_DEPTO
