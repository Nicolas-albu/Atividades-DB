
-- Deseja-se uma lista (matrícula, nome e salário) de todos os funcionários que
-- ganham mais que todos os funcionários do departamento D11. Ordene o resultado
-- por salário.

SELECT F.CD_MAT AS MATRICULA,
       F.NM_FUNC || ' ' || F.NM_SOBRENOME AS FUNCIONARIO,
       TO_CHAR(F.VL_SAL, 'L999G990D00') AS SALARIO
FROM FUNC F
WHERE F.VL_SAL > ALL (SELECT F2.VL_SAL
                      FROM FUNC F2
                      WHERE F2.CD_DEPTO = 'D11')
ORDER BY 3;