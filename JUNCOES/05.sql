
-- Exiba o nome do funcionário, a data da promoção e a diferença entre o salário atual
-- e o valor do salário no histórico de promoção.

SELECT FUNC.NM_FUNC AS NOMES,
       PROMO.DT_PROMOCAO AS DATA_PROMOCAO,
       PROMO.VL_SAL AS SALARIO_PROMOCAO
FROM FUNC INNER JOIN HST_PROMO PROMO USING (CD_MAT)
