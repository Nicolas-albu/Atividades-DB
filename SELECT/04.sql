-- Selecione uma lista que contenha número da matrícula, nome e sobrenome do
-- funcionário cujo sobrenome não tenha a letra ‘E’. Ordene esta lista por nome.

SELECT FUNC.CD_MAT AS "CÓDIGO DE MATRÍCULA", FUNC.NM_FUNC AS "NOME", FUNC.NM_SOBRENOME AS "SOBRENOME"
FROM FUNC
WHERE FUNC.NM_SOBRENOME NOT LIKE '%E%'
ORDER BY FUNC.NM_FUNC