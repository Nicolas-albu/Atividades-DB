-- Selecione uma lista que contenha número da matrícula, nome e sobrenome do
-- funcionário cujo sobrenome não tenha a letra ‘E’. Ordene esta lista por nome.

SELECT FUNC.CD_MAT, FUNC.NM_FUNC, FUNC.NM_SOBRENOME
FROM FUNC
WHERE FUNC.NM_SOBRENOME NOT LIKE '%E%'
ORDER BY FUNC.NM_FUNC