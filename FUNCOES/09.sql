-- Deseja-se uma relação contendo nome completo dos funcionários usando a
-- primeira letra do nome em maiúscula e as demais em minúscula, sexo por extenso,
-- número de dias entre a data de admissão e o último dia do mês da data corrente.

        --  CASE WHEN F.CD_SEXO = 'M' THEN 'Masculino'
        --         ELSE 'Feminino'
        --  END AS "SEXO",
        --  LAST_DAY(CURRENT_DATE) - F.DT_ADMISSAO AS "DIAS DE EMPREGADO"

SELECT INITCAP(F.NM_FUNC || ' ' || F.NM_SOBRENOME) AS "NOME COMPLETO",
       REPLACE(REPLACE(F.IN_SEXO, 'M', 'MASCULINO'), 'F', 'FEMININO') AS SEXO,
       TRUNC(LAST_DAY(SYSDATE) - F.DT_ADM) AS "DIAS DE EMPREGADO"
FROM FUNC F