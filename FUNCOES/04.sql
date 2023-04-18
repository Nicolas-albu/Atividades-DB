
-- Exiba os sobrenomes e o salário de todos os funcionários. Formate o salário para
-- ter 15 caracteres e apresentar o sinal # à esquerda. Exemplo: Salário = 1000 deverá
-- aparecer assim: ###########1000.

SELECT FUNC.NM_SOBRENOME AS SOBRENOME,
       LPAD(FUNC.VL_SAL, 15, '#') AS SALÁRIO
FROM FUNC