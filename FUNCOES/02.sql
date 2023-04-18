-- Para cada funcionário, exiba seu número, sobrenome, salário e salário com um
-- aumento de 15% expresso como um número inteiro (arredondar o valor).

SELECT FUNC.NR_RAMAL AS NÚMERO, 
       FUNC.NM_SOBRENOME AS SOBRENOME, 
       FUNC.VL_SAL AS SALÁRIO, 
       ROUND(FUNC.VL_SAL * (1 + 0.15)) AS AUMENTO
FROM FUNC