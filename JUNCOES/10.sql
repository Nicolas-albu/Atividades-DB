
-- Exiba o nome dos projetos e as promoções (hst_promo) que aconteceram durante a
-- realização do projeto. Para as promoções, exiba a matrícula e o nome do
-- funcionário.

SELECT PROJETOS.NM_PROJ AS PROJETOS,
       FUNCIONARIOS.CD_MAT AS MATRICULA_FUNCIONARIOS,
       FUNCIONARIOS.NM_FUNC AS FUNCIONARIOS
FROM PROJ PROJETOS,
     FUNC FUNCIONARIOS, 
     HST_PROMO PROMOCOES
WHERE PROMOCOES.DT_PROMOCAO BETWEEN PROJETOS.DT_INI
      AND PROJETOS.DT_FIM;