
-- Deseja-se uma relação contendo matrícula, nome, idade atual tempo de serviço em
-- quantidade de meses para aqueles funcionários que tenham sido admitidos com
-- menos de 21 anos.

SELECT FUNC.CD_MAT AS MATRÍCULA,
       FUNC.NM_FUNC AS NOME,
       TRUNC((SYSDATE - FUNC.DT_NASC)/365) AS IDADE,
       TRUNC(MONTHS_BETWEEN(SYSDATE, FUNC.DT_NASC)) AS "TEMPO DE SERVIÇO"
FROM FUNC
WHERE ((FUNC.DT_ADM - FUNC.DT_NASC)/365) < 21