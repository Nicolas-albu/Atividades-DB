
-- Encontre a média salarial dos membros das equipes da Global Fast Foods cujo gerente tem o ID 
-- 19.

SELECT AVG(SALARY)
FROM F_STAFFS
WHERE MANAGER_ID = 19;