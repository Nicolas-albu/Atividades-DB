-- Crie uma consulta para exibir o nome, o código do departamento e o nome do
-- departamento de todos os funcionários.

SELECT FUNC.NM_FUNC, 
       DEPTO.CD_DEPTO, 
       DEPTO.NM_DEPTO
FROM FUNC, DEPTO
WHERE FUNC.CD_DEPTO = DEPTO.CD_DEPTO