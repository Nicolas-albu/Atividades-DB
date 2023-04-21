
-- Exiba o nome do gerente e o salário do funcionário com menor salário sob a
-- supervisão desse gerente.


-- SELECT FUNC.NM_FUNC || ' ' || FUNC.NM_SOBRENOME AS NOME_GERENTE,
--        MIN(FUNC.VL_SAL)
-- FROM FUNC INNER JOIN DEPTO ON (FUNC.CD_MAT = FUNC.CD_GERENTE)
-- GROUP BY FUNC.NM_FUNC;

SELECT GERENTES.NM_FUNC AS NOME_GERENTES,
       MIN(FUNCIONARIOS.VL_SAL)
FROM FUNC GERENTES, DEPTO DEPARTAMENTOS, FUNC FUNCIONARIOS
WHERE GERENTES.CD_MAT = DEPARTAMENTOS.CD_GERENTE
      AND FUNCIONARIOS.CD_DEPTO = DEPARTAMENTOS.CD_DEPTO
      AND GERENTES.NM_FUNC != FUNCIONARIOS.NM_FUNC
GROUP BY GERENTES.NM_FUNC;