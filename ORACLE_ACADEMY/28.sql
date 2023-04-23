
-- Encontre a soma dos salários dos membros das equipes da Global Fast Foods com os IDs 12 e 
-- 9.

SELECT SUM(SALARY) 
FROM F_STAFFS
WHERE ID IN (12, 9);
