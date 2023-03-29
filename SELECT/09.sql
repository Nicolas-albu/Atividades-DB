-- Selecione uma lista que contenha matrícula, nome e departamento de todos os
-- funcionários que estejam alocados aos departamentos A00, B01 ou C01.

SELECT FUNC.CD_MAT AS "CÓDIGO DE MATRÍCULA", FUNC.NM_FUNC AS "NOME",
       FUNC.CD_DEPTO AS "CÓDIGO DO DEPARTAMENTO"
FROM FUNC
WHERE FUNC.CD_DEPTO IN ('A00', 'B01', 'C01')