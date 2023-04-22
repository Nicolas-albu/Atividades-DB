
-- Deseja-se uma lista (código e nome) dos departamentos
-- que iniciaram projetos em janeiro de 1996.

SELECT DEPTO.CD_DEPTO AS CODIGO,
       DEPTO.NM_DEPTO AS NOME
FROM DEPTO
WHERE DEPTO.CD_DEPTO IN (SELECT PROJ.CD_DEPTO
                        FROM PROJ
                        WHERE TO_CHAR(PROJ.DT_INIT, 'MMYYYY') = '011996');