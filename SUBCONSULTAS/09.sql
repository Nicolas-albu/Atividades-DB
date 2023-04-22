
-- Deseja-se uma lista contendo nome, sobrenome, cargo e salário de todos os
-- funcionários
-- do sexo feminino;
-- que ganham mais que todos os funcionários do sexo masculino.

-- 1. Obter o maior salário entre os homens
-- 2. Obter os dados das mulheres que ganham mais que o maior salário dos homens


SELECT FUNC_F.NM_FUNC || ' ' || FUNC_F.NM_SOBRENOME AS NOME_COMPLETO,
       FUNC_F.NR_CARGO AS CARGO,
       TO_CHAR(FUNC_F.VL_SAL, 'L999G990D00') AS SALARIO
FROM FUNC FUNC_F
WHERE FUNC_F.IN_SEXO = 'F'
      AND FUNC_F.VL_SAL > (SELECT MAX(FUNC_M.VL_SAL)
                           FROM FUNC FUNC_M
                           WHERE FUNC_M.IN_SEXO = 'M');


SELECT FUNC_F.NM_FUNC || ' ' || FUNC_F.NM_SOBRENOME AS NOME_COMPLETO,
       FUNC_F.NR_CARGO AS CARGO,
       TO_CHAR(FUNC_F.VL_SAL, 'L999G990D00') AS SALARIO,
        (SELECT DEPTO.NM_DEPTO
        FROM DEPTO 
        WHERE DEPTO.CD_DEPTO = FUNC_F.CD_DEPTO) AS DEPARTAMENTO
FROM FUNC FUNC_F
WHERE FUNC_F.IN_SEXO = 'F'
      AND FUNC_F.VL_SAL > (SELECT MAX(FUNC_M.VL_SAL)
                           FROM FUNC FUNC_M
                           WHERE FUNC_M.IN_SEXO = 'M');                        