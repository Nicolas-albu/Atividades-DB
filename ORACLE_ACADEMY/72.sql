
-- Sue Doe teve um excelente desempenho na Global Foods e recebeu um aumento salarial. Agora 
-- ela receberá o mesmo salário que Bob Miller. Atualize o registro dela na tabela copy_f_staffs.

CREATE TABLE copy_f_staffs
AS (SELECT * FROM f_staffs);

SELECT *
FROM copy_f_staffs;

UPDATE copy_f_staffs
SET salary = (SELECT salary
              FROM copy_f_staffs
              WHERE UPPER(FIRST_NAME || LAST_NAME) = 'BOBMILLER')
WHERE UPPER(FIRST_NAME || LAST_NAME) = 'SUEDOE';