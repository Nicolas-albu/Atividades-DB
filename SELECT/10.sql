-- Selecione uma lista que exiba o nome do funcionário e o valor que ele deverá
-- receber por ano.

SELECT FUNC.NM_FUNC AS "FUNCIONÁRIO", 
       FUNC.VL_SAL*12 AS "SALÁRIO POR ANO"
FROM FUNC