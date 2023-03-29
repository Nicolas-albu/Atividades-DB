-- Selecione uma lista que contenha o código do departamento e o nome do
-- departamento de todos os departamentos em que o código do departamento
-- contábil não está preenchido.

SELECT DEPTO.CD_DEPTO AS "CÓDIGO DO DEPARTAMENTO", DEPTO.NM_DEPTO AS "NOME DO DEPARTAMENTO"
FROM DEPTO
WHERE CD_DEPTO_CTB IS NULL