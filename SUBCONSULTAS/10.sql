
-- Produza uma lista contendo nome, sobrenome e salário de todos os funcionários;
-- que possuam mais de cinco anos de casa;
-- e que recebam menos que a média dos funcionários; 
-- com o mesmo cargo.

SELECT FUNC.NM_FUNC || ' ' || FUNC.NM_SOBRENOME AS NOME_COMPLETO,
       TO_CHAR(FUNC.VL_SAL, 'L999G990D00') AS SALARIO
FROM FUNC
WHERE (SYSDATE - FUNC.DT_ADM)/365 > 5
       AND FUNC.VL_SAL < (SELECT AVG(FUNC2.VL_SAL)
                          FROM FUNC FUNC2
                          WHERE FUNC2.NR_CARGO = FUNC.NR_CARGO);