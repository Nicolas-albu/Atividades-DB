
-- Deseja-se uma lista (matrícula, nome, departamento e salário) de todos os funcionários;
-- que sejam responsáveis por projeto (tabela Proj);
-- mas não sejam gerentes (tabela Depto). 
-- Ordene o resultado por salário.

SELECT F1.CD_MAT AS MATRICULA,
       F1.NM_FUNC || ' ' || F1.NM_SOBRENOME AS NOME,
       (SELECT DEPTO.NM_DEPTO 
        FROM DEPTO 
        WHERE DEPTO.CD_DEPTO = F1.CD_DEPTO) AS DEPARTAMENTO,
        TO_CHAR(F1.VL_SAL, 'L999G990D00') AS SALARIO
FROM FUNC F1
WHERE F1.CD_MAT IN (SELECT NVL(PROJ.CD_RESP, 0)
                    FROM PROJ)
AND F1.CD_MAT NOT IN (SELECT NVL(DEPTO.CD_GERENTE, 0)
                      FROM DEPTO)
ORDER BY F1.VL_SAL;
