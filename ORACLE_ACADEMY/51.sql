
-- Qual é o tipo de equipe cujos cargos da Global Fast Foods têm um salário inferior aos do tipo de 
-- equipe Cozinheiro?

SELECT STAFF_TYPE
FROM F_STAFFS
WHERE SALARY < ALL (SELECT SALARY
                    FROM F_STAFFS
                    WHERE UPPER(STAFF_TYPE) = 'COOK');