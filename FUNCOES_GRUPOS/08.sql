
-- Deseja-se obter a quantidade de funcionários que existem, em média, em cada
-- departamento.

-- SELECT FUNC.CD_DEPTO,
--        AVG(FUNC.CD_MAT)
-- FROM FUNC
-- GROUP BY FUNC.CD_DEPTO;

SELECT AVG(COUNT(*))
FROM FUNC
GROUP BY FUNC.CD_DEPTO;