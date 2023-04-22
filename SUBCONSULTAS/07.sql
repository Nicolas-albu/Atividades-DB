
-- Deseja-se uma lista (matrícula, nome, cargo e salário) dos funcionários;
-- que possuam o maior salário da empresa;
-- e daqueles que possuam o menor salário da empresa.

-- SELECT F.CD_MAT AS MATRICULA,
--        F.NM_FUNC AS NOME,
--        F.NR_CARGO AS CARGO,
--        F.VL_SAL AS SALARIO
-- FROM FUNC F
-- WHERE F.VL_SAL > (SELECT MIN(VL_SAL)
--                   FROM FUNC)
-- AND F.VL_SAL < (SELECT MAX(VL_SAL));


SELECT F.CD_MAT AS MATRICULA,
       F.NM_FUNC AS NOME,
       F.NR_CARGO AS CARGO,
       F.VL_SAL AS SALARIO
FROM FUNC F
WHERE F.VL_SAL IN (SELECT MIN(FUNC.VL_SAL)
                   FROM FUNC)
UNION
SELECT F2.CD_MAT AS MATRICULA,
       F2.NM_FUNC AS NOME,
       F2.NR_CARGO AS CARGO,
       F2.VL_SAL AS SALARIO
FROM FUNC F2
WHERE F2.VL_SAL IN (SELECT MAX(FUNC.VL_SAL)
                    FROM FUNC);