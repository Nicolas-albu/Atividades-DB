
-- Deseja-se uma lista contendo o nome do projeto, o nome das atividades e tempo de
-- duração de cada atividade (fornecido em número de horas). Ordene o resultado por
-- projeto e atividade.

SELECT PROJ.NM_PROJ AS NOME_PROJETO,
       ATIV.TX_DESCRICAO AS DESCRICAO_ATIVIDADE,
       (PROJ_ATIV.DT_FIM - PROJ_ATIV.DT_INI) * 24 AS NUMERO_HORAS
FROM PROJ, ATIV, PRJATV PROJ_ATIV
WHERE PROJ.CD_PROJ = PROJ_ATIV.CD_PROJ
      AND ATIV.CD_ATIV = PROJ_ATIV.CD_ATIV
ORDER BY PROJ.NM_PROJ, ATIV.TX_DESCRICAO