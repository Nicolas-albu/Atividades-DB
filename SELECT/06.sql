-- Selecione uma lista que contenha o nome completo (nome + espaço em branco +
-- sobrenome) e o ramal de todos os funcionários que ganham entre 1000 e 2000.

SELECT NM_FUNC || ' ' || NM_SOBRENOME, NR_RAMAL AS RAMAL
FROM FUNC
WHERE VL_SAL BETWEEN 1000 AND 2000