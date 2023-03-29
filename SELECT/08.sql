-- Selecione uma lista que contenha matrícula, nome, departamento e salário de todos
-- os funcionários que estejam alocados aos departamentos A00 ou B01 e ganham
-- menos de 4000.

SELECT FUNC.CD_MAT AS "CÓDIGO DE MATRÍCULA", FUNC.NM_FUNC AS "NOME", 
       FUNC.CD_DEPTO AS "DEPARTAMENTO", FUNC.VL_SAL AS "SALÁRIO"
FROM FUNC
WHERE FUNC.CD_DEPTO IN ('A00', 'B01') 
      AND (FUNC.VL_SAL < 4000)