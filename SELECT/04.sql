-- Selecione uma lista que contenha número da matrícula, nome e sobrenome do
-- funcionário cujo sobrenome não tenha a letra ‘E’. Ordene esta lista por nome.

SELECT CD_MAT, NM_FUNC, NM_SOBRENOME
FROM FUNC
WHERE NM_SOBRENOME NOT LIKE '%E%'
ORDER BY NM_FUNC