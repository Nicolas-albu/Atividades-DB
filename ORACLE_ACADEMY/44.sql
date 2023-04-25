
-- Quais são os nomes dos membros das equipes da Global Fast Foods cujos salários são maiores 
-- que o do membro com ID 12?

SELECT FIRST_NAME || ' ' || LAST_NAME
FROM F_STAFFS
WHERE SALARY > (SELECT SALARY
                FROM F_STAFFS
                WHERE ID = 12);