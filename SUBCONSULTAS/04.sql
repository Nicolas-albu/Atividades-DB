
-- Deseja-se uma lista (matrícula, nome e cargo) dos funcionários que possuam cargo
-- igual ao cargo do funcionário que tem o maior salário.


SELECT F1.CD_MAT AS MATRICULA,
       F1.NM_FUNC || ' ' || F1.NM_SOBRENOME AS FUNCIONARIO,
       F1.NR_CARGO AS CARGO
FROM FUNC F1
WHERE F1.NR_CARGO IN (SELECT F2.NR_CARGO
                      FROM FUNC F2
                      WHERE F2.VL_SAL > (SELECT MIN(FUNC.VL_SAL)
                                         FROM FUNC));

WHERE F1.NR_CARGO = (SELECT F2.NR_CARGO
                    FROM FUNC F2)