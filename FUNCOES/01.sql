-- Listar o nome dos funcionários e a idade de cada um. Lembrando que a idade não
-- pode ser exibida com casas decimais.

SELECT FUNC.NM_FUNC || ' ' || FUNC.NM_SOBRENOME AS "NOME",
       TRUNC((SYSDATE - FUNC.DT_NASC)/365) AS "IDADE"
FROM FUNC