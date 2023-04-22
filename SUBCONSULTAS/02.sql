
-- Deseja-se uma lista com todos os departamentos que não possuam funcionários
-- alocados.

SELECT *
FROM DEPTO
WHERE DEPTO.CD_DEPTO NOT IN (SELECT NVL(FUNC.CD_DEPTO, 0)
                            FROM FUNC);