
-- Listar o nome e sobrenome dos funcionários e o e-mail que deverá ser criado para
-- cada um deles. O e-mail deverá ser formado pelas primeiras consoantes do nome +
-- o sobrenome + ‘@minhaempresa.com.br”. Exemplo: para “José Silva” o e-mail será
-- JSilva@minhaempresa.com.br. Para “Bruno Santos” o e-mail será BRSantos@
-- minhaempresa.com.br.

SELECT FUNC.NM_FUNC AS NOME,
       FUNC.NM_SOBRENOME AS SOBRENOME,
       SUBSTR(FUNC.NM_FUNC, 1, 1) || FUNC.NM_SOBRENOME || '@minhaempresa.com.br' AS EMAIL
FROM FUNC