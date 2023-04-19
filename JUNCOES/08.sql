
-- Exiba o nome de todos os funcionários e o nome dos projetos sob a sua
-- responsabilidade. Caso ele não seja responsável por projetos, exiba somente o
-- nome do funcionário.

SELECT FUNC.NM_FUNC AS NOMES,
       PROJ.NM_PROJ AS PROJETOS
-- FROM FUNC INNER JOIN PROJ ON (FUNC.CD_MAT = PROJ.CD_RESP)
FROM FUNC LEFT OUTER JOIN PROJ
     ON FUNC.CD_MAT = PROJ.CD_RESP

