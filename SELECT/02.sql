-- Selecione uma lista que contenha número da matrícula, nome, sobrenome e cargo de todos os funcionários do sexo feminino.

SELECT FUNC.CD_MAT AS "CÓDIGO DE MATRÍCULA", FUNC.NM_FUNC AS "NOME", 
       FUNC.NM_SOBRENOME AS "SOBRENOME", FUNC.NR_CARGO AS "NÚMERO DO CARGO"
FROM FUNC