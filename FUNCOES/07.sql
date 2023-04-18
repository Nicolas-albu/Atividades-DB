
-- Deseja-se uma relação contendo nome, sobrenome e o salário (editado com
-- moeda) para os funcionários com mais de 4 vogais em seu nome.

SELECT FUNC.NM_FUNC AS NOME,
       FUNC.NM_SOBRENOME AS SOBRENOME,
       TO_CHAR(FUNC.VL_SAL, 'L999G990D00') AS SALÁRIO
FROM FUNC