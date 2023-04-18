
-- Deseja-se uma relação contendo nome completo dos funcionários e data de
-- nascimento com hora minuto e segundo.

SELECT FUNC.NM_FUNC || ' ' || FUNC.NM_SOBRENOME AS "NOME COMPLETO",
       TO_CHAR(FUNC.DT_NASC, 'DD/MM/YYYY HH24:MI:SS')
FROM FUNC