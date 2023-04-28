
-- Bob Miller e Sue Doe são funcionários que se destacaram na Global Fast Foods. A gerência 
-- decidiu recompensá-los aumentando o seu pagamento de horas extras. Bob Miller receberá um 
-- adicional de $0.75 por hora e Sue Doe receberá um adicional de $0.85 por hora. Atualize a 
-- tabela copy_f_staffs para mostrar esses novos valores. (Nota: Bob Miller não recebe atualmente 
-- por horas extras. Qual função você precisa usar para converter um valor nulo em 0?

CREATE TABLE copy_f_staffs
AS (SELECT * FROM f_staffs);

SELECT *
FROM COPY_F_STAFFS;

UPDATE copy_f_staffs
SET overtime_rate = NVL(overtime_rate, 0) + .75
WHERE UPPER(first_name || last_name) = 'BOBMILLER';

UPDATE copy_f_staffs
SET overtime_rate = NVL(overtime_rate, 0) + .85
WHERE UPPER(first_name || last_name) = 'SUEDOE';